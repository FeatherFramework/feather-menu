#!/usr/bin/env node
// Generates LuaLS ---@meta stub files (one per native namespace) from the
// redm-natives skill's rdr3-nativedb-data (references/natives.json).
//
// Usage: node generate_natives.js <path-to-natives.json> <output-dir>
//
// Naming: the Lua-callable global for a native is derived from its
// SCREAMING_SNAKE_CASE name by PascalCasing each underscore-separated
// segment (SET_ENTITY_COORDS -> SetEntityCoords), preserving a leading
// underscore if the native's own name has one (_GET_MAP_ZONE_AT_COORDS ->
// _GetMapZoneAtCoords -- CFX's convention for natives without a confirmed
// official name, ~60% of the RDR3 set). This transform was spot-checked
// against every native this framework's own audited codebases actually
// call by name and matched all of them (TaskPlayAnim, SetEntityAlpha,
// GiveWeaponToPed, IsEntityDead, GetEntityCoords, SetEntityCoords, ...) --
// but it is a derived name, not data straight from the DB, so treat any
// stub that doesn't resolve/autocomplete as a signal to double-check via
// the redm-natives skill or fall back to Citizen.InvokeNative(hash, ...).
//
// Pointer param types (Entity*, BOOL*, int*, etc. -- NOT char*/const char*,
// which are strings) are CFX out-params: the Lua runtime does not take them
// as call arguments, it returns them as additional values after the
// primary return. This generator moves them from @param to @return
// accordingly, in declared order.

const fs = require('fs');
const path = require('path');

const LUA_KEYWORDS = new Set([
  'and', 'break', 'do', 'else', 'elseif', 'end', 'false', 'for', 'function',
  'goto', 'if', 'in', 'local', 'nil', 'not', 'or', 'repeat', 'return',
  'then', 'true', 'until', 'while',
]);

// ~26% of RDR3 natives have no confirmed name at all -- their "name" field
// is just their own hash (optionally underscore-prefixed), e.g.
// "_0x4B6C9A43F7D9109B". PascalCasing that produces garbage
// (_0x4b6c9a43f7d9109b, mixed-case hex, not a real identifier). CFX's own
// convention for these is to expose them as N_0x<HASH> -- use that instead
// of attempting a word-segment transform on something that isn't words.
function toLuaName(nativeName, hash) {
  const bare = nativeName.replace(/^_/, '');
  if (/^0x[0-9A-Fa-f]+$/i.test(bare)) {
    return 'N_' + hash;
  }

  let leading = '';
  let rest = nativeName;
  if (rest.startsWith('_')) {
    leading = '_';
    rest = rest.slice(1);
  }
  const pascal = rest
    .split('_')
    .filter(Boolean)
    .map((seg) => seg[0].toUpperCase() + seg.slice(1).toLowerCase())
    .join('');
  return leading + pascal;
}

function baseLuaType(rawType) {
  const t = (rawType || '').trim();
  if (t === 'char*' || t === 'const char*') return 'string';
  const stripped = t.replace(/\*$/, '');
  const map = {
    Any: 'any',
    AnimScene: 'number',
    BOOL: 'boolean',
    Blip: 'number',
    Cam: 'number',
    Entity: 'number',
    FireId: 'number',
    Hash: 'number',
    Interior: 'number',
    ItemSet: 'number',
    Object: 'number',
    Ped: 'number',
    PersChar: 'number',
    Pickup: 'number',
    Player: 'number',
    PopZone: 'number',
    Prompt: 'number',
    PropSet: 'number',
    ScrHandle: 'number',
    Vector3: 'vector3',
    Vehicle: 'number',
    Volume: 'number',
    int: 'number',
    float: 'number',
    void: 'nil',
  };
  return map[stripped] || 'any';
}

function isOutParam(rawType) {
  const t = (rawType || '').trim();
  if (t === 'char*' || t === 'const char*') return false;
  return t.endsWith('*');
}

function safeParamName(name, usedNames) {
  let n = (name || 'arg').replace(/[^A-Za-z0-9_]/g, '_');
  if (/^[0-9]/.test(n)) n = '_' + n;
  if (LUA_KEYWORDS.has(n)) n = n + '_';
  if (n === '') n = 'arg';
  let candidate = n;
  let i = 2;
  while (usedNames.has(candidate)) {
    candidate = n + i;
    i++;
  }
  usedNames.add(candidate);
  return candidate;
}

function commentBlock(text, indent) {
  if (!text) return [];
  return text
    .split('\n')
    .map((line) => `${indent}-- ${line}`);
}

function generateEntry(namespace, hash, entry, usedNamesInFile) {
  const luaName = toLuaName(entry.name, hash);
  if (usedNamesInFile.has(luaName)) {
    return { skipped: true, luaName };
  }
  usedNamesInFile.add(luaName);

  const usedParamNames = new Set();
  const inParams = [];
  const outTypes = [];

  for (const p of entry.params || []) {
    if (isOutParam(p.type)) {
      outTypes.push(baseLuaType(p.type));
    } else {
      inParams.push({ name: safeParamName(p.name, usedParamNames), type: baseLuaType(p.type) });
    }
  }

  const returns = [];
  if (entry.return_type && entry.return_type !== 'void') {
    returns.push(baseLuaType(entry.return_type));
  }
  returns.push(...outTypes);

  const lines = [];
  lines.push(`-- ${entry.name}  (${hash})`);
  if (entry.comment) lines.push(...commentBlock(entry.comment, ''));
  if (entry.build) lines.push(`-- min build: ${entry.build}`);
  for (const p of inParams) lines.push(`---@param ${p.name} ${p.type}`);
  for (const r of returns) lines.push(`---@return ${r}`);
  const paramList = inParams.map((p) => p.name).join(', ');
  lines.push(`function ${luaName}(${paramList}) end`);
  lines.push('');

  return { skipped: false, text: lines.join('\n') };
}

function main() {
  const [, , dataPath, outDir] = process.argv;
  if (!dataPath || !outDir) {
    console.error('Usage: node generate_natives.js <natives.json> <output-dir>');
    process.exit(1);
  }

  const data = JSON.parse(fs.readFileSync(dataPath, 'utf8'));
  fs.mkdirSync(outDir, { recursive: true });

  let totalNatives = 0;
  let totalSkipped = 0;
  const namespaceSummaries = [];

  for (const ns of Object.keys(data).sort()) {
    const natives = data[ns];
    const usedNamesInFile = new Set();
    const chunks = [];
    chunks.push('---@meta');
    chunks.push('');
    chunks.push(`-- RDR3 namespace: ${ns} -- generated from rdr3-nativedb-data, do not hand-edit.`);
    chunks.push('-- Regenerate via generate_natives.js if the source natives.json is updated.');
    chunks.push('');

    const hashes = Object.keys(natives).sort((a, b) => {
      const na = natives[a].name || '';
      const nb = natives[b].name || '';
      return na.localeCompare(nb);
    });

    let count = 0;
    let skipped = 0;
    for (const h of hashes) {
      const entry = natives[h];
      const result = generateEntry(ns, h, entry, usedNamesInFile);
      if (result.skipped) {
        skipped++;
        continue;
      }
      chunks.push(result.text);
      count++;
    }

    const outPath = path.join(outDir, `${ns}.lua`);
    fs.writeFileSync(outPath, chunks.join('\n'), 'utf8');
    totalNatives += count;
    totalSkipped += skipped;
    namespaceSummaries.push({ ns, count, skipped });
  }

  console.log(`Generated ${Object.keys(data).length} namespace files, ${totalNatives} natives, ${totalSkipped} name collisions skipped.`);
  for (const s of namespaceSummaries) {
    if (s.skipped > 0) console.log(`  ${s.ns}: ${s.count} written, ${s.skipped} skipped (duplicate derived name)`);
  }
}

main();
