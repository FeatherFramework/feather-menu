---@meta

-- RDR3 namespace: UNLOCK -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _UNLOCK_GET_ITEM_ROLE_UNLOCK_INFO  (0x7C1C2062CFAD06FE)
-- min build: 1207
---@param unlockHash number
---@return any
function _UnlockGetItemRoleUnlockInfo(unlockHash) end

-- _UNLOCK_IS_LOOTABLE  (0x66BF197E066050DE)
-- min build: 1207
---@param unlockHash number
---@return boolean
function _UnlockIsLootable(unlockHash) end

-- _UNLOCK_IS_NEW  (0x644166BA7AA49DEA)
-- min build: 1207
---@param unlockHash number
---@return boolean
function _UnlockIsNew(unlockHash) end

-- _UNLOCK_IS_UNLOCK_FLAG_SET  (0x6B6369647F26F09F)
-- min build: 1207
---@param unlockHash number
---@param flag number
---@return boolean
function _UnlockIsUnlockFlagSet(unlockHash, flag) end

-- _UNLOCK_SET_NEW  (0xA6D79C7AEF870A99)
-- min build: 1207
---@param unlockHash number
---@param toggle boolean
function _UnlockSetNew(unlockHash, toggle) end

-- UNLOCK_IS_UNLOCKED  (0xC4B660C7B6040E75)
-- min build: 1207
---@param unlockHash number
---@return boolean
function UnlockIsUnlocked(unlockHash) end

-- UNLOCK_IS_VISIBLE  (0x8588A14B75AF096B)
-- min build: 1207
---@param unlockHash number
---@return boolean
function UnlockIsVisible(unlockHash) end

-- UNLOCK_SET_UNLOCKED  (0x1B7C5ADA8A6910A0)
-- min build: 1207
---@param unlockHash number
---@param toggle boolean
function UnlockSetUnlocked(unlockHash, toggle) end

-- UNLOCK_SET_VISIBLE  (0x46B901A8ECDB5A61)
-- min build: 1207
---@param unlockHash number
---@param toggle boolean
function UnlockSetVisible(unlockHash, toggle) end
