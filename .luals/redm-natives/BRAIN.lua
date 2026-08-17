---@meta

-- RDR3 namespace: BRAIN -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x4AA5EA1EDFB25786  (0x4AA5EA1EDFB25786)
-- Called with flag 0 before 0xA6AC35DB4A7957A8 in net_entity_brain
-- _SET_SCRIPT_BRAIN*
-- min build: 1207
---@param flag number
function N_0x4AA5EA1EDFB25786(flag) end

-- _0xA6AC35DB4A7957A8  (0xA6AC35DB4A7957A8)
-- Common flags: 250, 99999
-- _SET_SCRIPT_BRAIN*
-- min build: 1207
---@param flag number
function N_0xA6AC35DB4A7957A8(flag) end

-- _GET_SCRIPT_BRAIN_ENTITY  (0x6818D1A194E29983)
-- min build: 1207
---@return number
function _GetScriptBrainEntity() end

-- _REMOVE_SCRIPT_BRAIN_ENTITY  (0x38F1E09224EECA09)
-- min build: 1311
---@param entity number
function _RemoveScriptBrainEntity(entity) end

-- _START_PRELOADED_SCRIPT_BRAIN  (0x4E4507CC5E4DB869)
-- Returns threadId
-- min build: 1207
---@param entity number
---@param scriptName string
---@param scriptStackSize number
---@param p3 boolean
---@return number
function _StartPreloadedScriptBrain(entity, scriptName, scriptStackSize, p3) end

-- _START_SCRIPT_BRAIN  (0x6F62FAE266DCFC81)
-- Returns threadId
-- min build: 1207
---@param entity number
---@param scriptName string
---@param p2 number
---@param p4 number
---@param p5 boolean
---@return number
---@return any
function _StartScriptBrain(entity, scriptName, p2, p4, p5) end

-- DISABLE_SCRIPT_BRAIN_SET  (0x3F44EA613A5B2676)
-- min build: 1207
---@param brainSet number
function DisableScriptBrainSet(brainSet) end

-- ENABLE_SCRIPT_BRAIN_SET  (0x1CF6E5C6750EADBD)
-- min build: 1207
---@param brainSet number
function EnableScriptBrainSet(brainSet) end

-- REACTIVATE_ALL_OBJECT_BRAINS_THAT_ARE_WAITING_TILL_OUT_OF_RANGE  (0xA32B0B05EFF75730)
-- Called before starting a new thread_monitor script thread in startup_mp/startup_tlg
-- Alternative name _REGISTER_SCRIPT_BRAIN
-- 
-- Old name: _PREPARE_SCRIPT_BRAIN
-- min build: 1207
function ReactivateAllObjectBrainsThatAreWaitingTillOutOfRange() end

-- REACTIVATE_NAMED_OBJECT_BRAINS_WAITING_TILL_OUT_OF_RANGE  (0x74C333E34DF74E8A)
-- min build: 1207
---@param scriptName string
function ReactivateNamedObjectBrainsWaitingTillOutOfRange(scriptName) end

-- REGISTER_OBJECT_SCRIPT_BRAIN  (0x16AF9B4EEAC3B305)
-- Registers a script for any object with a specific model hash.
-- min build: 1207
---@param scriptName string
---@param modelHash number
---@param p2 number
---@param activationRange number
---@param p4 number
---@param p5 number
function RegisterObjectScriptBrain(scriptName, modelHash, p2, activationRange, p4, p5) end
