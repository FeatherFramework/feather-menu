---@meta

-- RDR3 namespace: UIAPPS -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _CLOSE_ALL_UIAPPS  (0xAD7B70F7230C5A12)
-- min build: 1207
function _CloseAllUiapps() end

-- _CLOSE_ALL_UIAPPS_IMMEDIATE  (0x12769EEB8DBD7A7B)
-- min build: 1207
function _CloseAllUiappsImmediate() end

-- _CLOSE_UIAPP  (0x818C6CA9B659E8EC)
-- min build: 1207
---@param appName string
function _CloseUiapp(appName) end

-- _CLOSE_UIAPP_BY_HASH  (0x2FF10C9C3F92277E)
-- min build: 1207
---@param appNameHash number
function _CloseUiappByHash(appNameHash) end

-- _CLOSE_UIAPP_BY_HASH_IMMEDIATE  (0x04428420A248A354)
-- min build: 1207
---@param appNameHash number
function _CloseUiappByHashImmediate(appNameHash) end

-- _CLOSE_UIAPP_IMMEDIATE  (0x3015635426D1B17C)
-- min build: 1207
---@param appName string
function _CloseUiappImmediate(appName) end

-- _GET_UIAPP_CURRENT_ACTIVITY_BY_HASH  (0x96FD694FE5BE55DC)
-- min build: 1207
---@param appNameHash number
---@return number
function _GetUiappCurrentActivityByHash(appNameHash) end

-- CAN_LAUNCH_UIAPP_BY_HASH  (0xE555EC27D65EDE80)
-- min build: 1207
---@param appNameHash number
---@return boolean
function CanLaunchUiappByHash(appNameHash) end

-- CAN_LAUNCH_UIAPP_BY_HASH_WITH_ENTRY  (0x16F47D434B6086BF)
-- min build: 1207
---@param appNameHash number
---@param entryHash number
---@return boolean
function CanLaunchUiappByHashWithEntry(appNameHash, entryHash) end

-- IS_ANY_UIAPP_ACTIVE  (0xAC959AB99AAF3D9F)
-- min build: 1207
---@return boolean
function IsAnyUiappActive() end

-- IS_ANY_UIAPP_RUNNING  (0xDB30BEC7A7A5CBD3)
-- min build: 1207
---@return boolean
function IsAnyUiappRunning() end

-- IS_UIAPP_ACTIVE_BY_HASH  (0x25B7A0206BDFAC76)
-- min build: 1207
---@param appNameHash number
---@return boolean
function IsUiappActiveByHash(appNameHash) end

-- IS_UIAPP_RUNNING  (0xDE4A9B35D028979F)
-- min build: 1232
---@param appName string
---@return boolean
function IsUiappRunning(appName) end

-- IS_UIAPP_RUNNING_BY_HASH  (0x4E511D093A86AD49)
-- min build: 1207
---@param appNameHash number
---@return boolean
function IsUiappRunningByHash(appNameHash) end

-- IS_UIAPP_TRANSITIONING_BY_HASH  (0x42095B886D30DE66)
-- min build: 1232
---@param appNameHash number
---@return boolean
function IsUiappTransitioningByHash(appNameHash) end

-- LAUNCH_UIAPP_BY_HASH  (0xC8FC7F4E4CF4F581)
-- min build: 1207
---@param appNameHash number
---@return number
function LaunchUiappByHash(appNameHash) end

-- LAUNCH_UIAPP_BY_HASH_WITH_ENTRY  (0xC1BCF31E975B3195)
-- min build: 1207
---@param appNameHash number
---@param entryHash number
---@return number
function LaunchUiappByHashWithEntry(appNameHash, entryHash) end

-- LAUNCH_UIAPP_WITH_ENTRY  (0x7B2027BAC5C8EC89)
-- min build: 1207
---@param appName string
---@param entry string
---@return number
function LaunchUiappWithEntry(appName, entry) end

-- REQUEST_UIAPP_TRANSITION_BY_HASH  (0x7689CD255655BFD7)
-- min build: 1207
---@param appNameHash number
---@param transitionHash number
---@return boolean
function RequestUiappTransitionByHash(appNameHash, transitionHash) end
