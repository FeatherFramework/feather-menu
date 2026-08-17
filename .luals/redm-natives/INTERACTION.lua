---@meta

-- RDR3 namespace: INTERACTION -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _POINTER_IS_BEING_MOVED  (0x2B8B605F2A9E64BF)
-- Returns true if player is moving mouse while cursor is active
-- _PI* - _PO*
-- min build: 1311
---@return boolean
function _PointerIsBeingMoved() end

-- _POINTER_IS_LEFT_BUTTON_HELD  (0x61CAE9D1FD055E44)
-- Returns true if player is holding LMB while cursor is active
-- _PI* - _PO*
-- min build: 1207
---@return boolean
function _PointerIsLeftButtonHeld() end

-- _POINTER_IS_LEFT_BUTTON_JUST_RELEASED  (0xF7F51A57349739F2)
-- Returns true if player releases LMB if cursor is active
-- _PI* - _PO*
-- min build: 1207
---@return boolean
function _PointerIsLeftButtonJustReleased() end

-- _SET_ALLOW_FIRST_PERSON_MOUSE_CAMERA_MOVEMENT  (0x0546B117BB17548B)
-- Allows camera to be moved if middle mouse button is held while in first person
-- Must be called every frame
-- _SET*
-- min build: 1232
function _SetAllowFirstPersonMouseCameraMovement() end

-- SET_MOUSE_CURSOR_STYLE  (0x7F5858AAB5A58CCE)
-- Changes the mouse cursor's sprite.
-- 
-- spriteId's: https://github.com/femga/rdr3_discoveries/tree/master/graphics/HUD/cursor_sprites#readme
-- 
-- Old name: _SET_MOUSE_CURSOR_SPRITE
-- min build: 1207
---@param spriteId number
function SetMouseCursorStyle(spriteId) end

-- SET_MOUSE_CURSOR_THIS_FRAME  (0xF12E4CCAF249DC10)
-- Shows the cursor on screen for one frame.
-- 
-- Old name: _SET_MOUSE_CURSOR_ACTIVE_THIS_FRAME
-- min build: 1207
function SetMouseCursorThisFrame() end
