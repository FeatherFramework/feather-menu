---@meta

-- RDR3 namespace: REPLAY -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- CLOSE_VIDEO_EDITOR  (0xCEEC64BD27A59312)
-- Hardcoded to return true.
-- min build: 1207
---@param p0 any
---@return boolean
function CloseVideoEditor(p0) end

-- IS_VIDEO_EDITOR_RUNNING  (0x9EEB007317FA3B9C)
-- Hardcoded to return false.
-- min build: 1207
---@return boolean
function IsVideoEditorRunning() end

-- OPEN_VIDEO_EDITOR  (0xB3F2829907403C13)
-- Hardcoded to return true.
-- min build: 1207
---@return boolean
function OpenVideoEditor() end

-- REPLAY_SYSTEM_HAS_REQUESTED_A_SCRIPT_CLEANUP  (0x0F838D47DE58EDB2)
-- Hardcoded to return false.
-- 
-- Old name: _IS_INTERIOR_RENDERING_DISABLED
-- min build: 1207
---@return boolean
function ReplaySystemHasRequestedAScriptCleanup() end

-- SET_SCRIPTS_HAVE_CLEANED_UP_FOR_REPLAY_SYSTEM  (0x57C6525034E76EB0)
-- nullsub, doesn't do anything
-- min build: 1207
function SetScriptsHaveCleanedUpForReplaySystem() end
