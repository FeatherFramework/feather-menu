---@meta

-- RDR3 namespace: WATER -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x09A1C7DFDCE54FBC  (0x09A1C7DFDCE54FBC)
-- Called together with REMOVE_EXTRA_CALMING_QUAD in rcm_crackpot1 R* Script: p0 = 0
-- _REMOVE_*
-- min build: 1207
---@param p0 number
function N_0x09A1C7DFDCE54FBC(p0) end

-- _0x0DCEC6A92E497E17  (0x0DCEC6A92E497E17)
-- Only used in native_son1 R* Script: p1 = 1
-- min build: 1207
---@param entity number
---@param p1 number
function N_0x0DCEC6A92E497E17(entity, p1) end

-- _0xA33F5069B0CB89B8  (0xA33F5069B0CB89B8)
-- Only used in fishing_core R* Script
-- min build: 1207
function N_0xA33F5069B0CB89B8() end

-- _0xB34A6009A0DB80B8  (0xB34A6009A0DB80B8)
-- Used in bounty1, fanale3, sean1 R* Scripts
-- min build: 1207
---@param entity number
function N_0xB34A6009A0DB80B8(entity) end

-- _0xE8126623008372AA  (0xE8126623008372AA)
-- Only used in fussar1 / train_robbery2 R* Script
-- min build: 1207
function N_0xE8126623008372AA() end

-- _0xF0FBF193F1F5C0EA  (0xF0FBF193F1F5C0EA)
-- Only used in fishing_core R* Script
-- min build: 1207
---@param ped number
function N_0xF0FBF193F1F5C0EA(ped) end

-- _GET_WORLD_WATER_TYPE  (0x189739A7631C1867)
-- min build: 1207
---@return number
function _GetWorldWaterType() end

-- _RESET_GUARMA_WATER_STATE  (0xC63540AEF8384769)
-- Only used in guama1 / guama3 R* Script
-- _REQUEST_* or _RESET_*
-- min build: 1207
function _ResetGuarmaWaterState() end

-- _SET_OCEAN_GUARMA_WATER_QUADRANT  (0xC63540AEF8384732)
-- Only used in R* Script guama1
-- min build: 1207
---@param wavesHeight number
---@param p1 number
---@param wavesDirection number
---@param p3 number
---@param wavesAmount number
---@param p5 number
---@param wavesSpeed number
---@param wavesStrength number
---@param ignoreHeight boolean
function _SetOceanGuarmaWaterQuadrant(wavesHeight, p1, wavesDirection, p3, wavesAmount, p5, wavesSpeed, wavesStrength, ignoreHeight) end

-- _SET_WORLD_WATER_TYPE  (0xE8770EE02AEE45C2)
-- 0 = World
-- 1 = Guarma
-- min build: 1207
---@param waterType number
function _SetWorldWaterType(waterType) end

-- DISABLE_WATER_LOOKUP  (0x754616EC6965D1FB)
-- Must be called every frame to take full effect.
-- min build: 1207
function DisableWaterLookup() end

-- ENABLE_WATER_LOOKUP  (0x754616EC6965D1BF)
-- min build: 1207
function EnableWaterLookup() end

-- GET_WATER_HEIGHT  (0xFCA8B23F28813F69)
-- Checks against a global variable that is set by _SET_WORLD_WATER_TYPE. If that is set to one it will fail. Likely not the only issue but part of it.
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@return boolean
---@return number
function GetWaterHeight(x, y, z) end

-- GET_WATER_HEIGHT_NO_WAVES  (0xDCF3690AA262C03F)
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@return boolean
---@return number
function GetWaterHeightNoWaves(x, y, z) end

-- REMOVE_EXTRA_CALMING_QUAD  (0x4BEF8DD75AF6C71C)
-- Only used in rcm_crackpot1 R* Script: p0 = 0
-- min build: 1207
---@param index number
function RemoveExtraCalmingQuad(index) end

-- TEST_PROBE_AGAINST_ALL_WATER  (0x8974647ED222EA5F)
-- enum eScriptWaterTestResult
-- {
-- 	SCRIPT_WATER_TEST_RESULT_NONE,
-- 	SCRIPT_WATER_TEST_RESULT_WATER,
-- 	SCRIPT_WATER_TEST_RESULT_BLOCKED,
-- };
-- min build: 1207
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param flags number
---@return number
---@return vector3
function TestProbeAgainstAllWater(x1, y1, z1, x2, y2, z2, flags) end

-- TEST_VERTICAL_PROBE_AGAINST_ALL_WATER  (0x2B3451FA1E3142E2)
-- Checks against a global variable that is set by _SET_WORLD_WATER_TYPE. If it's set to 1 (Guarma) it will fail.
-- 
-- See TEST_PROBE_AGAINST_ALL_WATER.
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@param flags number
---@return number
---@return number
function TestVerticalProbeAgainstAllWater(x, y, z, flags) end
