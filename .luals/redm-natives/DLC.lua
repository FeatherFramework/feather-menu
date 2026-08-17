---@meta

-- RDR3 namespace: DLC -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _GET_SPECIAL_EDITION_CASH_CAMP_BONUS_ENABLED  (0x1DB9D61E505AE3FC)
-- min build: 1207
---@return boolean
function _GetSpecialEditionCashCampBonusEnabled() end

-- _GET_SPECIAL_EDITION_CORE_STATS_BONUS_ENABLED  (0xA16B4FBA7887D7BA)
-- min build: 1207
---@return boolean
function _GetSpecialEditionCoreStatsBonusEnabled() end

-- GET_IS_LOADING_SCREEN_ACTIVE  (0x71D4BF5890659B0C)
-- min build: 1207
---@return boolean
function GetIsLoadingScreenActive() end

-- IS_DLC_PRESENT  (0x2763DC12BBE2BB6F)
-- min build: 1207
---@param dlcHash number
---@return boolean
function IsDlcPresent(dlcHash) end
