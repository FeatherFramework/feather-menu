---@meta

-- RDR3 namespace: UITUTORIAL -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _UITUTORIAL_GET_IS_THREAT_INDICATOR_CAPABLE_RADAR_SHOWN  (0x2CC24A2A7A1489C4)
-- min build: 1207
---@return boolean
function _UitutorialGetIsThreatIndicatorCapableRadarShown() end

-- _UITUTORIAL_GET_IS_THREAT_INDICATOR_ON  (0xFC2E0A5E9ED4E1B4)
-- min build: 1207
---@return boolean
function _UitutorialGetIsThreatIndicatorOn() end

-- _UITUTORIAL_SET_RPG_ICON_VISIBILITY  (0xC116E6DF68DCE667)
-- enum eRpgIcons
-- {
-- 	ICON_STAMINA,
-- 	ICON_STAMINA_CORE,
-- 	ICON_DEADEYE,
-- 	ICON_DEADEYE_CORE,
-- 	ICON_HEALTH,
-- 	ICON_HEALTH_CORE,
-- 	ICON_HORSE_HEALTH,
-- 	ICON_HORSE_HEALTH_CORE,
-- 	ICON_HORSE_STAMINA,
-- 	ICON_HORSE_STAMINA_CORE,
-- 	ICON_HORSE_COURAGE,
-- 	ICON_HORSE_COURAGE_CORE
-- };
-- 
-- enum eRpgIconVisibility
-- {
-- 	ICON_VISIBILITY_WAIT_TO_HIDE,
-- 	ICON_VISIBILITY_ALWAYS_SHOW,
-- 	ICON_VISIBILITY_ALWAYS_HIDE,
-- 	ICON_VISIBILITY_ALWAYS_BLINK
-- };
-- min build: 1207
---@param rpgIcon number
---@param visibility number
function _UitutorialSetRpgIconVisibility(rpgIcon, visibility) end
