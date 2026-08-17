---@meta

-- RDR3 namespace: UISTICKYFEED -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _UI_STICKY_FEED_CLEAR_MESSAGE  (0x00A15B94CBA4F76F)
-- min build: 1207
---@param msgId number
function _UiStickyFeedClearMessage(msgId) end

-- _UI_STICKY_FEED_CREATE_DEATH_FAIL_MESSAGE  (0x815C4065AE6E6071)
-- Example: https://pastebin.com/JygJShNU
-- min build: 1207
---@param p2 boolean
---@return number
---@return any
---@return any
function _UiStickyFeedCreateDeathFailMessage(p2) end

-- _UI_STICKY_FEED_CREATE_ERROR_MESSAGE  (0x9F2CC2439A04E7BA)
-- Example: https://pastebin.com/EJD7ytnz
-- min build: 1207
---@param p2 boolean
---@return number
---@return any
---@return any
function _UiStickyFeedCreateErrorMessage(p2) end

-- _UI_STICKY_FEED_CREATE_WARNING_MESSAGE  (0x339E16B41780FC35)
-- Example: https://pastebin.com/6mLtee2S
-- min build: 1207
---@param p2 boolean
---@return number
---@return any
---@return any
function _UiStickyFeedCreateWarningMessage(p2) end

-- _UI_STICKY_FEED_GET_MESSAGE_STATE  (0x07954320D77F6A3D)
-- Returns state of sticky feed message, see 0x59FA676177DBE4C9
-- min build: 1207
---@param msgId number
---@return number
function _UiStickyFeedGetMessageState(msgId) end

-- _UI_STICKY_FEED_IS_ALERT_SCREEN_ACTIVE  (0xF8806EC3FF840FDC)
-- min build: 1207
---@return boolean
function _UiStickyFeedIsAlertScreenActive() end

-- _UI_STICKY_FEED_IS_CHANNEL_ACTIVE  (0xC5C395C60B542A3C)
-- stickyFeedChannel: https://github.com/Halen84/RDR3-Native-Flags-And-Enums/tree/main/eUIStickyFeedChannel
-- min build: 1207
---@param stickyFeedChannel number
---@return boolean
function _UiStickyFeedIsChannelActive(stickyFeedChannel) end

-- _UI_STICKY_FEED_UPDATE_MESSAGE  (0xBC6F454E310124DA)
-- Seems to only update _UI_STICKY_FEED_CREATE_ERROR_MESSAGE(0x9F2CC2439A04E7BA) and _UI_STICKY_FEED_CREATE_DEATH_FAIL_MESSAGE(0x815C4065AE6E6071) message.
-- Example: https://pastebin.com/nDrJyWq2
-- min build: 1207
---@param msgId number
---@param p2 boolean
---@return any
function _UiStickyFeedUpdateMessage(msgId, p2) end
