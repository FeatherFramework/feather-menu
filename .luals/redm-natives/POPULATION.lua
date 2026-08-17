---@meta

-- RDR3 namespace: POPULATION -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x08892122769770D5  (0x08892122769770D5)
-- min build: 1207
---@param popZone number
---@param p1 boolean
function N_0x08892122769770D5(popZone, p1) end

-- _0x0F1861101C9A9944  (0x0F1861101C9A9944)
-- min build: 1207
---@param popZone number
---@param p1 boolean
function N_0x0F1861101C9A9944(popZone, p1) end

-- _0x2161278C6322F740  (0x2161278C6322F740)
-- min build: 1207
---@param includeFlags number
---@param excludeFlags number
---@param p2 number
---@param p3 number
---@param p4 number
---@param volume number
function N_0x2161278C6322F740(includeFlags, excludeFlags, p2, p3, p4, volume) end

-- _0x247F86595D396344  (0x247F86595D396344)
-- min build: 1207
---@param p0 any
function N_0x247F86595D396344(p0) end

-- _0x2660E7720EDC4BD0  (0x2660E7720EDC4BD0)
-- min build: 1311
---@param p0 any
---@param p1 any
---@param p2 any
function N_0x2660E7720EDC4BD0(p0, p1, p2) end

-- _0x324AB2A68AD8AEE5  (0x324AB2A68AD8AEE5)
-- min build: 1207
function N_0x324AB2A68AD8AEE5() end

-- _0x578E2FA64E847C60  (0x578E2FA64E847C60)
-- min build: 1207
---@param popZone number
---@param p1 number
function N_0x578E2FA64E847C60(popZone, p1) end

-- _0x638FCFC6042A9473  (0x638FCFC6042A9473)
-- min build: 1207
---@param p0 any
---@param p1 any
function N_0x638FCFC6042A9473(p0, p1) end

-- _0x7E6BC0B94F5928F0  (0x7E6BC0B94F5928F0)
-- min build: 1207
---@param popZone number
---@param p1 number
---@param p2 number
function N_0x7E6BC0B94F5928F0(popZone, p1, p2) end

-- _0x8EC7CD701F872F87  (0x8EC7CD701F872F87)
-- min build: 1207
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
function N_0x8EC7CD701F872F87(p0, p1, p2, p3, p4, p5) end

-- _0xC4533E3E87125C9E  (0xC4533E3E87125C9E)
-- min build: 1207
---@param p0 any
function N_0xC4533E3E87125C9E(p0) end

-- _0xDBBF12EA7C1029B2  (0xDBBF12EA7C1029B2)
-- min build: 1207
---@param p0 any
---@param p1 any
function N_0xDBBF12EA7C1029B2(p0, p1) end

-- _0xEC116EDB683AD479  (0xEC116EDB683AD479)
-- Only used for Special Event (XMAS).
-- _SET_P*
-- min build: 1207
---@param p0 boolean
function N_0xEC116EDB683AD479(p0) end

-- _0xF45E46DEECF7DF6E  (0xF45E46DEECF7DF6E)
-- min build: 1207
---@param bitFlag number
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function N_0xF45E46DEECF7DF6E(bitFlag, p1, p2, p3, p4) end

-- _ADD_AMBIENT_AVOIDANCE_RESTRICTION  (0xB56D41A694E42E86)
-- flags: https://github.com/Halen84/RDR3-Native-Flags-And-Enums/tree/main/PedFilterFlags
-- min build: 1207
---@param volume number
---@param includeFlags number
---@param excludeFlags number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
function _AddAmbientAvoidanceRestriction(volume, includeFlags, excludeFlags, p3, p4, p5, p6) end

-- _ADD_AMBIENT_SPAWN_RESTRICTION  (0x18262CAFEBB5FBE1)
-- flags: see 0xB56D41A694E42E86
-- min build: 1207
---@param volume number
---@param includeFlags number
---@param excludeFlags number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
function _AddAmbientSpawnRestriction(volume, includeFlags, excludeFlags, p3, p4, p5, p6) end

-- _CREATE_POPZONE_FROM_VOLUME  (0x9AC1C64FE46B6D09)
-- min build: 1207
---@param volume number
---@return number
function _CreatePopzoneFromVolume(volume) end

-- _DELETE_SCRIPT_POPZONE  (0xA6E6A66FC4CA4224)
-- min build: 1207
---@param popZone number
function _DeleteScriptPopzone(popZone) end

-- _GET_RANDOM_FISH_TYPE_FOR_LOCATION  (0x595478B3BBC3076D)
-- Returns model hash of the closest fish
-- min build: 1207
---@return number
function _GetRandomFishTypeForLocation() end

-- _IS_POPZONE_VALID  (0xA5BD585005EFCAD4)
-- min build: 1207
---@param popZone number
---@return boolean
function _IsPopzoneValid(popZone) end

-- _REMOVE_AMBIENT_AVOIDANCE_RESTRICTION  (0x74C2B3DC0B294102)
-- flags: see 0xB56D41A694E42E86
-- min build: 1207
---@param volume number
function _RemoveAmbientAvoidanceRestriction(volume) end

-- _REMOVE_AMBIENT_SPAWN_RESTRICTION  (0xA1CFB35069D23C23)
-- min build: 1207
---@param volume number
function _RemoveAmbientSpawnRestriction(volume) end

-- _SET_PED_SHOULD_IGNORE_AVOIDANCE_VOLUMES  (0xF74E134F40192884)
-- Params: p1 = 1 & 2 in R* Scripts, 0 = Disable avoidance, 1 = Enabled avoidance, 2 = Enabled avoidance (?)
-- min build: 1207
---@param ped number
---@param p1 number
function _SetPedShouldIgnoreAvoidanceVolumes(ped, p1) end

-- CLEAR_SPAWNER_INFO_PRIORITY  (0x217A54DE2D200305)
-- min build: 1207
---@param p0 number
---@param p1 number
function ClearSpawnerInfoPriority(p0, p1) end

-- DISABLE_AMBIENT_ROAD_POPULATION  (0xC6DCC2A3A8825C85)
-- min build: 1207
---@param unk boolean
function DisableAmbientRoadPopulation(unk) end

-- ENABLE_AMBIENT_ROAD_POPULATION  (0xBC90BDF4E5228EA1)
-- min build: 1207
function EnableAmbientRoadPopulation() end

-- GET_NUM_MODELS_IN_POPULATION_SET  (0xA1E3171ED0E47564)
-- min build: 1207
---@param popSetHash number
---@return number
function GetNumModelsInPopulationSet(popSetHash) end

-- GET_PED_MODEL_NAME_IN_POPULATION_SET  (0x3EAFA1C533B7139E)
-- min build: 1207
---@param popSetHash number
---@param index number
---@return number
function GetPedModelNameInPopulationSet(popSetHash, index) end

-- GET_RANDOM_MODEL_FROM_POPULATION_SET  (0x6B12ED8C77E8567B)
-- min build: 1207
---@param popSetHash number
---@param flags number
---@param p2 number
---@param p3 boolean
---@param p4 boolean
---@param x number
---@param y number
---@param z number
---@return number
function GetRandomModelFromPopulationSet(popSetHash, flags, p2, p3, p4, x, y, z) end

-- SET_POPZONE_POPULATION_SET  (0x3E6A49D9B519E85C)
-- min build: 1207
---@param popZone number
---@param populationSetHash number
function SetPopzonePopulationSet(popZone, populationSetHash) end

-- SET_SPAWNER_INFO_PRIORITY  (0x60CDE717A6D47769)
-- min build: 1207
---@param p0 number
---@param p1 number
---@param priority number
function SetSpawnerInfoPriority(p0, p1, priority) end
