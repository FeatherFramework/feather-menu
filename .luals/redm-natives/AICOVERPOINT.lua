---@meta

-- RDR3 namespace: AICOVERPOINT -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x140B3CB1D424A945  (0x140B3CB1D424A945)
-- weaponHash can also be -1
-- min build: 1207
---@param ped number
---@param weaponHash number
function N_0x140B3CB1D424A945(ped, weaponHash) end

-- _0x3C7A9C2C953128FE  (0x3C7A9C2C953128FE)
-- min build: 1207
---@param ped number
function N_0x3C7A9C2C953128FE(ped) end

-- _0x53E4D0C079CA6855  (0x53E4D0C079CA6855)
-- min build: 1207
---@param handle number
---@return number
function N_0x53E4D0C079CA6855(handle) end

-- _0x64340DC208D671D5  (0x64340DC208D671D5)
-- coverLayer: see levels_0/levels/rdr3/coverlayers
-- min build: 1207
---@param coverLayer string
function N_0x64340DC208D671D5(coverLayer) end

-- _0x7A1FDCF35EAA140F  (0x7A1FDCF35EAA140F)
-- coverLayer: see levels_0/levels/rdr3/coverlayers
-- min build: 1207
---@param coverLayer string
function N_0x7A1FDCF35EAA140F(coverLayer) end

-- _0x957D7E750216D74B  (0x957D7E750216D74B)
-- min build: 1207
---@param ped number
---@return number
function N_0x957D7E750216D74B(ped) end

-- _0xEBA51A294C73292E  (0xEBA51A294C73292E)
-- min build: 1207
---@return any
function N_0xEBA51A294C73292E() end

-- _ADD_COVER_BLOCKING_AREA  (0x733077295AB51304)
-- args: f_0 = Volume Handle
-- f_1 = integer (?) (only the number 1 is ever used here, or is not used at all)
-- f_2 = integer (-1 to 32 in R* Scripts)
-- min build: 1207
---@return any
function _AddCoverBlockingArea() end

-- _ADD_SCRIPTED_COVER_POINT  (0x975BD6351648935F)
-- min build: 1207
---@return number
---@return any
function _AddScriptedCoverPoint() end

-- _ARE_LOAD_COVER_ANIMS_LOADED  (0x8CBE916CFC64AD5C)
-- min build: 1207
---@param ped number
---@return boolean
function _AreLoadCoverAnimsLoaded(ped) end

-- _DOES_COVER_POINT_EXIST  (0xC276FE69DDA22BAD)
-- min build: 1207
---@param handle number
---@return boolean
function _DoesCoverPointExist(handle) end

-- _GET_COVER_POINT_STATE_FROM_PED  (0x5F5B1B7E8E8F94C6)
-- 1 = In cover while crouched
-- 2 = In cover while standing
-- 3 = Not in cover
-- min build: 1207
---@param ped number
---@return number
function _GetCoverPointStateFromPed(ped) end

-- _REQUEST_FLINCH_COVER_ANIM  (0x2A31D13C5F021D0D)
-- Makes ped flinch (if in cover) like they have been shot at
-- min build: 1207
---@param ped number
function _RequestFlinchCoverAnim(ped) end

-- _STOP_RUNNING_COVER_ANIMS  (0x1A7A802B2301EDC0)
-- Stops running cover anims and releases them
-- _STOP_RENDERING_* - _STOP_SCRIPTED*
-- min build: 1207
---@param ped number
function _StopRunningCoverAnims(ped) end

-- _TASK_AI_SEEK_COVER_TO_COVER_POINT  (0x89783FDDF079C88D)
-- min build: 1207
---@return any
function _TaskAiSeekCoverToCoverPoint() end

-- TASK_ENTER_COVER  (0x4972A022AE6DAFA1)
-- min build: 1207
---@param ped number
function TaskEnterCover(ped) end

-- TASK_EXIT_COVER  (0x2BC4A6D92D140112)
-- min build: 1207
---@param ped number
function TaskExitCover(ped) end
