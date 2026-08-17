---@meta

-- RDR3 namespace: GOOGLE_ANALYTICS -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _GOOGLE_ANALYTICS_END_EVENT  (0x87BBCC4360A9BDE3)
-- min build: 1355
---@return boolean
function _GoogleAnalyticsEndEvent() end

-- _GOOGLE_ANALYTICS_POP_PAGE  (0xC6DE040378364798)
-- min build: 1207
---@param pageName string
function _GoogleAnalyticsPopPage(pageName) end

-- _GOOGLE_ANALYTICS_PUSH_PAGE  (0xD43A616AE3AC4EF6)
-- min build: 1207
---@param pageName string
function _GoogleAnalyticsPushPage(pageName) end

-- _GOOGLE_ANALYTICS_START_EVENT  (0x1C54F031D7C0F7AC)
-- min build: 1355
---@param eventCategory string
---@param eventAction string
---@param eventLabel string
---@param eventValue number
---@return boolean
function _GoogleAnalyticsStartEvent(eventCategory, eventAction, eventLabel, eventValue) end
