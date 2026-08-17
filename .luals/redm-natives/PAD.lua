---@meta

-- RDR3 namespace: PAD -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x1252C029FC8EBB4D  (0x1252C029FC8EBB4D)
-- _IS_R* - _IS_S*
-- min build: 1207
---@return boolean
function N_0x1252C029FC8EBB4D() end

-- _0x43F35DDB2905D945  (0x43F35DDB2905D945)
-- min build: 1207
---@param p0 any
---@param p1 any
---@return any
function N_0x43F35DDB2905D945(p0, p1) end

-- _0x52C68E92D6E23ADD  (0x52C68E92D6E23ADD)
-- min build: 1311
---@param p0 any
function N_0x52C68E92D6E23ADD(p0) end

-- _0x5F217BC1190503D8  (0x5F217BC1190503D8)
-- rumbleCurve: common_0/data/rumblecurves.meta
-- min build: 1207
---@param rumbleCurve string
---@param p1 number
function N_0x5F217BC1190503D8(rumbleCurve, p1) end

-- _0x709BA8C08C5C008D  (0x709BA8C08C5C008D)
-- min build: 1207
function N_0x709BA8C08C5C008D() end

-- _0xBD629C1C4F501C80  (0xBD629C1C4F501C80)
-- min build: 1207
---@param p0 any
---@return any
function N_0xBD629C1C4F501C80(p0) end

-- _GET_CURRENT_CONTROL_CONTEXT  (0xDDCEB0F26C89C00F)
-- Gets the current control context. See: _SET_CONTROL_CONTEXT
-- min build: 1207
---@param control number
---@return number
function _GetCurrentControlContext(control) end

-- _GET_DISABLED_CONTROL_HOW_LONG_AGO  (0x771DFCB24D19C2F6)
-- min build: 1207
---@param control number
---@return number
function _GetDisabledControlHowLongAgo(control) end

-- _IS_CONTROL_ACTION_VALID  (0xBC0884BC590951C7)
-- min build: 1207
---@param action number
---@param control number
---@return boolean
function _IsControlActionValid(action, control) end

-- _SET_CONTROL_CONTEXT  (0x2804658EB7D8A50B)
-- Sets the current control context. Must be called every frame.
-- 
-- context: https://alloc8or.re/rdr3/doc/misc/input_contexts.txt
-- For more information, see common:/data/control/settings.meta
-- https://github.com/femga/rdr3_discoveries/tree/master/Controls
-- min build: 1207
---@param control number
---@param context number
function _SetControlContext(control, context) end

-- CLEAR_CONTROL_LIGHT_EFFECT  (0xCB0360EFEFB2580D)
-- nullsub, doesn't do anything
-- min build: 1207
---@param control number
function ClearControlLightEffect(control) end

-- CLEAR_CONTROL_SHAKE_SUPPRESSED_ID  (0xA0CEFCEA390AAB9B)
-- Old name: _CLEAR_SUPPRESSED_PAD_RUMBLE
-- min build: 1207
---@param control number
function ClearControlShakeSuppressedId(control) end

-- DISABLE_ALL_CONTROL_ACTIONS  (0x5F4B6931816E599B)
-- min build: 1207
---@param control number
function DisableAllControlActions(control) end

-- DISABLE_CONTROL_ACTION  (0xFE99B66D079CF6BC)
-- min build: 1207
---@param control number
---@param action number
---@param disableRelatedActions boolean
function DisableControlAction(control, action, disableRelatedActions) end

-- ENABLE_CONTROL_ACTION  (0x351220255D64C155)
-- min build: 1207
---@param control number
---@param action number
---@param enableRelatedActions boolean
function EnableControlAction(control, action, enableRelatedActions) end

-- GET_CONTROL_HOW_LONG_AGO  (0xD7D22F5592AED8BA)
-- Returns time in ms since last input.
-- min build: 1207
---@param control number
---@return number
function GetControlHowLongAgo(control) end

-- GET_CONTROL_NORMAL  (0xEC3C9B8D5327B563)
-- min build: 1207
---@param control number
---@param action number
---@return number
function GetControlNormal(control, action) end

-- GET_CONTROL_UNBOUND_NORMAL  (0x5B84D09CEC5209C5)
-- min build: 1207
---@param control number
---@param action number
---@return number
function GetControlUnboundNormal(control, action) end

-- GET_CONTROL_VALUE  (0xD95E79E8686D2C27)
-- min build: 1207
---@param control number
---@param action number
---@return number
function GetControlValue(control, action) end

-- GET_DISABLED_CONTROL_NORMAL  (0x11E65974A982637C)
-- min build: 1207
---@param control number
---@param action number
---@return number
function GetDisabledControlNormal(control, action) end

-- GET_DISABLED_CONTROL_UNBOUND_NORMAL  (0x4F8A26A890FD62FB)
-- min build: 1207
---@param control number
---@param action number
---@return number
function GetDisabledControlUnboundNormal(control, action) end

-- HAVE_CONTROLS_CHANGED  (0x6CD79468A1E595C6)
-- min build: 1207
---@param control number
---@return boolean
function HaveControlsChanged(control) end

-- IS_CONTROL_ENABLED  (0x1CEA6BFDF248E5D9)
-- min build: 1207
---@param control number
---@param action number
---@return boolean
function IsControlEnabled(control, action) end

-- IS_CONTROL_JUST_PRESSED  (0x580417101DDB492F)
-- min build: 1207
---@param control number
---@param action number
---@return boolean
function IsControlJustPressed(control, action) end

-- IS_CONTROL_JUST_RELEASED  (0x50F940259D3841E6)
-- min build: 1207
---@param control number
---@param action number
---@return boolean
function IsControlJustReleased(control, action) end

-- IS_CONTROL_PRESSED  (0xF3A21BCD95725A4A)
-- min build: 1207
---@param control number
---@param action number
---@return boolean
function IsControlPressed(control, action) end

-- IS_CONTROL_RELEASED  (0x648EE3E7F38877DD)
-- min build: 1207
---@param control number
---@param action number
---@return boolean
function IsControlReleased(control, action) end

-- IS_DISABLED_CONTROL_JUST_PRESSED  (0x91AEF906BCA88877)
-- min build: 1207
---@param control number
---@param action number
---@return boolean
function IsDisabledControlJustPressed(control, action) end

-- IS_DISABLED_CONTROL_JUST_RELEASED  (0x305C8DCD79DA8B0F)
-- min build: 1207
---@param control number
---@param action number
---@return boolean
function IsDisabledControlJustReleased(control, action) end

-- IS_DISABLED_CONTROL_PRESSED  (0xE2587F8CBBD87B1D)
-- min build: 1207
---@param control number
---@param action number
---@return boolean
function IsDisabledControlPressed(control, action) end

-- IS_LOOK_INVERTED  (0x77B612531280010D)
-- min build: 1207
---@return boolean
function IsLookInverted() end

-- IS_USING_KEYBOARD_AND_MOUSE  (0xA571D46727E2B718)
-- padIndex is not used
-- 
-- Old name: _IS_USING_KEYBOARD
-- min build: 1207
---@param control number
---@return boolean
function IsUsingKeyboardAndMouse(control) end

-- SET_CONTROL_LIGHT_EFFECT_COLOR  (0x8290252FFF36ACB5)
-- nullsub, doesn't do anything
-- 
-- Old name: _SET_CONTROL_GROUP_COLOR
-- min build: 1207
---@param control number
---@param red number
---@param green number
---@param blue number
function SetControlLightEffectColor(control, red, green, blue) end

-- SET_CONTROL_LIGHT_EFFECT_FLASHING_COLOR  (0xA45884DB10EC7EE3)
-- nullsub, doesn't do anything
-- min build: 1207
---@param control number
---@param red number
---@param green number
---@param blue number
function SetControlLightEffectFlashingColor(control, red, green, blue) end

-- SET_CONTROL_SHAKE  (0x48B3886C1358D0D5)
-- Old name: SET_PAD_SHAKE
-- min build: 1207
---@param control number
---@param duration number
---@param frequency number
function SetControlShake(control, duration, frequency) end

-- SET_CONTROL_SHAKE_SUPPRESSED_ID  (0xF239400E16C23E08)
-- Old name: SET_PAD_SHAKE_SUPPRESSED_ID
-- min build: 1207
---@param control number
---@param uniqueId number
function SetControlShakeSuppressedId(control, uniqueId) end

-- SET_CONTROL_TRIGGER_SHAKE  (0x14D29BB12D47F68C)
-- nullsub, doesn't do anything
-- min build: 1207
---@param control number
---@param leftDuration number
---@param leftFrequency number
---@param rightDuration number
---@param rightFrequency number
function SetControlTriggerShake(control, leftDuration, leftFrequency, rightDuration, rightFrequency) end

-- SET_CONTROL_VALUE_NEXT_FRAME  (0xE8A25867FBA3B05E)
-- This is for simulating player input.
-- value is a float value from 0 - 1
-- 
-- control: see IS_CONTROL_ENABLED
-- 
-- Old name: _SET_CONTROL_NORMAL
-- min build: 1207
---@param control number
---@param action number
---@param value number
---@return boolean
function SetControlValueNextFrame(control, action, value) end

-- SET_INPUT_EXCLUSIVE  (0xEDE476E5EE29EDB1)
-- min build: 1207
---@param control number
---@param action number
function SetInputExclusive(control, action) end

-- STOP_CONTROL_SHAKE  (0x38C16A305E8CDC8D)
-- Old name: STOP_PAD_SHAKE
-- min build: 1207
---@param control number
function StopControlShake(control) end
