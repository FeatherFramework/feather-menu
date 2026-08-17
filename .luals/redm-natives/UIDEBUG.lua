---@meta

-- RDR3 namespace: UIDEBUG -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _BG_DISPLAY_TEXT  (0x16794E044C9EFB58)
-- Note: you must use VAR_STRING
-- min build: 1355
---@param text string
---@param x number
---@param y number
function _BgDisplayText(text, x, y) end

-- _BG_SET_TEXT_COLOR  (0x16FA5CE47F184F1E)
-- https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/colours
-- min build: 1355
---@param red number
---@param green number
---@param blue number
---@param alpha number
function _BgSetTextColor(red, green, blue, alpha) end

-- _BG_SET_TEXT_SCALE  (0xA1253A3C870B6843)
-- min build: 1355
---@param scaleX number
---@param scaleY number
function _BgSetTextScale(scaleX, scaleY) end
