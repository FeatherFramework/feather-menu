---@meta

-- RDR3 namespace: MISSIONDATA -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _MISSIONDATA_IS_REPLAY_CATEGORY_LOCKED  (0xE145864DECC34219)
-- min build: 1232
---@param category number
---@return boolean
function _MissiondataIsReplayCategoryLocked(category) end

-- _MISSIONDATA_SET_MISSION_RATING  (0xE824CE7D13FCB300)
-- MISSION_RATING_INCOMPLETE = 0,
-- MISSION_RATING_SKIPPED,
-- MISSION_RATING_COMPLETE,
-- MISSION_RATING_BRONZE,
-- MISSION_RATING_SILVER,
-- MISSION_RATING_GOLD,
-- min build: 1207
---@param missionId number
---@param rating number
function _MissiondataSetMissionRating(missionId, rating) end

-- _MISSIONDATA_SET_REPLAY_STATE_LOCKED  (0xE4E2C581F127A11C)
-- replayState: MISSIONDATA_GET_REPLAY_STATE
-- min build: 1207
---@param missionId number
---@param replayState number
function _MissiondataSetReplayStateLocked(missionId, replayState) end

-- _MISSIONDATA_TIMECYCLE_BOX_DELETE  (0x7F89E15A8FB8DE97)
-- min build: 1207
function _MissiondataTimecycleBoxDelete() end

-- _MISSIONDATA_TIMECYCLE_BOX_EXISTS  (0x7E8F86A4FA33033C)
-- min build: 1207
---@return boolean
function _MissiondataTimecycleBoxExists() end

-- _MISSIONDATA_TIMECYCLE_BOX_SET_MODIFIER  (0x25855B1574BF8CD5)
-- min build: 1207
---@param timecycleName string
function _MissiondataTimecycleBoxSetModifier(timecycleName) end

-- MISSIONDATA_GET_CATAGORY  (0x57E798B65C45EE17)
-- min build: 1232
---@param missionId number
---@return number
function MissiondataGetCatagory(missionId) end

-- MISSIONDATA_GET_HIGH_SCORE  (0x9AABABF8313C3516)
-- min build: 1207
---@param missionId number
---@return number
function MissiondataGetHighScore(missionId) end

-- MISSIONDATA_GET_RATING  (0x57E798B54C45EE1A)
-- min build: 1207
---@param missionId number
---@return number
function MissiondataGetRating(missionId) end

-- MISSIONDATA_GET_REPLAY_STATE  (0x8C32D86E9556ED86)
-- min build: 1207
---@param p0 any
---@return number
function MissiondataGetReplayState(p0) end

-- MISSIONDATA_GET_TEXTURE_NAME  (0x57E798B56C45EE15)
-- min build: 1207
---@param missionId number
---@return number
function MissiondataGetTextureName(missionId) end

-- MISSIONDATA_GET_TEXTURE_TXD  (0x57E798B57C45EE16)
-- min build: 1207
---@param missionId number
---@return number
function MissiondataGetTextureTxd(missionId) end

-- MISSIONDATA_IS_REQUIRED_STORY_MISSION  (0xE824CE7D13FCB35E)
-- min build: 1207
---@param missionId number
---@return boolean
function MissiondataIsRequiredStoryMission(missionId) end

-- MISSIONDATA_IS_VALID  (0xE54DC27571D5EDC5)
-- min build: 1207
---@param p0 any
---@return boolean
function MissiondataIsValid(p0) end

-- MISSIONDATA_SET_HIGH_SCORE  (0x3A04F0169DA87A9D)
-- min build: 1207
---@param missionId number
---@param score number
function MissiondataSetHighScore(missionId, score) end

-- MISSIONDATA_SET_RATING_SCORES  (0x12F65317708749A5)
-- min build: 1207
---@param missionId number
---@param bronzeScore number
---@param silverScore number
---@param goldScore number
function MissiondataSetRatingScores(missionId, bronzeScore, silverScore, goldScore) end

-- MISSIONDATA_SET_REPLAY_LOCKED_FOR_CATEGORY  (0x957A830C9B4B99EA)
-- min build: 1232
---@param category number
---@param locked boolean
function MissiondataSetReplayLockedForCategory(category, locked) end

-- MISSIONDATA_WAS_COMPLETED  (0xE54DC27571D5EDC4)
-- see: missions.meta
-- min build: 1207
---@param missionId number
---@return boolean
function MissiondataWasCompleted(missionId) end
