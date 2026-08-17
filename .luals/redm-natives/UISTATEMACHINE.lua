---@meta

-- RDR3 namespace: UISTATEMACHINE -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _UI_STATE_MACHINE_IS_EXITED  (0x11E73195E735B25B)
-- It's either EXITED or EXITING
-- min build: 1207
---@param p0 number
---@return boolean
function _UiStateMachineIsExited(p0) end

-- _UIFLOWBLOCK_ENTER  (0x3B7519720C9DCB45)
-- min build: 1207
---@param p0 any
---@param p1 any
---@return any
function _UiflowblockEnter(p0, p1) end

-- _UIFLOWBLOCK_IS_LOADED  (0x10A93C057B6BD944)
-- min build: 1207
---@param p0 any
---@return any
function _UiflowblockIsLoaded(p0) end

-- _UIFLOWBLOCK_RELEASE  (0xF320A77DD5F781DF)
-- min build: 1207
---@param p0 any
function _UiflowblockRelease(p0) end

-- _UIFLOWBLOCK_REQUEST  (0xC0081B34E395CE48)
-- min build: 1207
---@param p0 any
---@return any
function _UiflowblockRequest(p0) end

-- UI_STATE_MACHINE_CAN_REQUEST_TRANSITION  (0xF7C180F57F85D0B8)
-- min build: 1207
---@param p0 any
---@return any
function UiStateMachineCanRequestTransition(p0) end

-- UI_STATE_MACHINE_CREATE  (0x4C6F2C4B7A03A266)
-- min build: 1207
---@param p0 any
---@param p1 any
---@return any
function UiStateMachineCreate(p0, p1) end

-- UI_STATE_MACHINE_DESTROY  (0x4EB122210A90E2D8)
-- min build: 1207
---@param p0 any
function UiStateMachineDestroy(p0) end

-- UI_STATE_MACHINE_DESTROY_AND_CLEAR  (0x2738D68D2B4E09E7)
-- min build: 1207
---@return any
function UiStateMachineDestroyAndClear() end

-- UI_STATE_MACHINE_EXISTS  (0x5D15569C0FEBF757)
-- min build: 1207
---@param p0 any
---@return any
function UiStateMachineExists(p0) end

-- UI_STATE_MACHINE_REQUEST_EXIT  (0x6B9FE4F0BA521A19)
-- min build: 1207
---@param p0 any
---@param p1 any
function UiStateMachineRequestExit(p0, p1) end

-- UI_STATE_MACHINE_REQUEST_TRANSITION  (0x7EA9C3547E80350E)
-- min build: 1207
---@param p0 any
---@param p1 any
---@return any
function UiStateMachineRequestTransition(p0, p1) end
