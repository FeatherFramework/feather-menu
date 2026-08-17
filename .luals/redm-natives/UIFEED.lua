---@meta

-- RDR3 namespace: UIFEED -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x0FD07141AD048AAE  (0x0FD07141AD048AAE)
-- Only used in R* SP Script beat_animal_attack
-- Returns feedMessage
-- min build: 1207
---@param p1 boolean
---@return number
---@return any
function N_0x0FD07141AD048AAE(p1) end

-- _0x18D6869FBFFEC0F8  (0x18D6869FBFFEC0F8)
-- Only used in R* SP Scripts
-- min build: 1207
---@param p2 boolean
---@param p3 boolean
---@return number
---@return any
---@return any
function N_0x18D6869FBFFEC0F8(p2, p3) end

-- _0x4E88A65968A55C78  (0x4E88A65968A55C78)
-- Returns feedMessage
-- min build: 1207
---@param p1 boolean
---@return number
---@return any
function N_0x4E88A65968A55C78(p1) end

-- _0x6D85126F6CCF02C9  (0x6D85126F6CCF02C9)
-- min build: 1207
---@param feedChannel number
---@param p1 number
---@param p2 boolean
function N_0x6D85126F6CCF02C9(feedChannel, p1, p2) end

-- _0xAFF5BE9BA496CE40  (0xAFF5BE9BA496CE40)
-- min build: 1207
---@param p2 boolean
---@param p3 boolean
---@param collectableCategory number
---@return number
---@return any
---@return any
function N_0xAFF5BE9BA496CE40(p2, p3, collectableCategory) end

-- _0xB7223B91CD6B7E07  (0xB7223B91CD6B7E07)
-- min build: 1207
---@param feedChannel number
---@return boolean
function N_0xB7223B91CD6B7E07(feedChannel) end

-- _UI_FEED_CLEAR_ALL_CHANNELS  (0x6035E8FBCA32AC5E)
-- Hides Toast Notifications
-- min build: 1207
function _UiFeedClearAllChannels() end

-- _UI_FEED_CLEAR_HELP_TEXT_FEED  (0x2F901291EF177B02)
-- Clears help text
-- min build: 1207
---@param feedMessage number
---@param p1 boolean
function _UiFeedClearHelpTextFeed(feedMessage, p1) end

-- _UI_FEED_GET_MESSAGE_STATE  (0x59FA676177DBE4C9)
-- Returns messageState, see https://github.com/Halen84/RDR3-Native-Flags-And-Enums/tree/main/eUIMessageState
-- min build: 1207
---@param feedMessage number
---@return number
function _UiFeedGetMessageState(feedMessage) end

-- _UI_FEED_POST_FEED_TICKER  (0xB2920B9760F0F36B)
-- Display text on right of the screen, Example : https://pastebin.com/n1YmNe25
-- min build: 1207
---@param p2 boolean
---@return number
---@return any
---@return any
function _UiFeedPostFeedTicker(p2) end

-- _UI_FEED_POST_GAME_UPDATE_SHARD  (0x8D1249BD28791878)
-- min build: 1207
---@param p2 boolean
---@return number
---@return any
---@return any
function _UiFeedPostGameUpdateShard(p2) end

-- _UI_FEED_POST_HELP_TEXT  (0x049D5C615BD38BAD)
-- Example : https://pastebin.com/GvdBp8Dh
-- min build: 1207
---@param p2 boolean
---@return number
---@return any
---@return any
function _UiFeedPostHelpText(p2) end

-- _UI_FEED_POST_LOCATION_SHARD  (0xD05590C1AB38F068)
-- Example : https://pastebin.com/h1YzycuR
-- min build: 1207
---@param p2 boolean
---@param p3 boolean
---@return number
---@return any
---@return any
function _UiFeedPostLocationShard(p2, p3) end

-- _UI_FEED_POST_MISSION_NAME  (0x2024F4F333095FB1)
-- min build: 1207
---@param p2 boolean
---@return number
---@return any
---@return any
function _UiFeedPostMissionName(p2) end

-- _UI_FEED_POST_OBJECTIVE  (0xCEDBF17EFCC0E4A4)
-- Example : https://pastebin.com/13tuRa63
-- min build: 1207
---@param p2 boolean
---@return number
---@return any
---@return any
function _UiFeedPostObjective(p2) end

-- _UI_FEED_POST_ONE_TEXT_SHARD  (0x860DDFE97CC94DF0)
-- min build: 1207
---@param p2 boolean
---@return number
---@return any
---@return any
function _UiFeedPostOneTextShard(p2) end

-- _UI_FEED_POST_RANKUP_TOAST  (0x3F9FDDBA79117C69)
-- min build: 1207
---@param p2 number
---@param p3 number
---@return number
---@return any
---@return any
function _UiFeedPostRankupToast(p2, p3) end

-- _UI_FEED_POST_RETICLE_MESSAGE  (0x893128CDB4B81FBB)
-- min build: 1207
---@param p2 boolean
---@return number
---@return any
---@return any
function _UiFeedPostReticleMessage(p2) end

-- _UI_FEED_POST_SAMPLE_NOTIFICATION  (0xC927890AA64E9661)
-- Example : https://pastebin.com/kAtEMQTD
-- min build: 1207
---@param p2 number
---@param p3 number
---@return number
---@return any
---@return any
function _UiFeedPostSampleNotification(p2, p3) end

-- _UI_FEED_POST_SAMPLE_TOAST  (0x26E87218390E6729)
-- Example : https://pastebin.com/YZMBkAmW
-- min build: 1207
---@param p2 boolean
---@param p3 boolean
---@return number
---@return any
---@return any
function _UiFeedPostSampleToast(p2, p3) end

-- _UI_FEED_POST_SAMPLE_TOAST_RIGHT  (0xB249EBCB30DD88E0)
-- min build: 1207
---@param p2 boolean
---@return number
---@return any
---@return any
function _UiFeedPostSampleToastRight(p2) end

-- _UI_FEED_POST_SAMPLE_TOAST_WITH_APP_LINK  (0x38838A646FB30AAE)
-- min build: 1311
---@param p2 boolean
---@param p3 boolean
---@param p4 boolean
---@return number
---@return any
---@return any
function _UiFeedPostSampleToastWithAppLink(p2, p3, p4) end

-- _UI_FEED_POST_THREE_TEXT_SHARD  (0x02BCC0FE9EBA3529)
-- min build: 1207
---@param p2 boolean
---@param p3 boolean
---@param p4 boolean
---@return number
---@return any
---@return any
function _UiFeedPostThreeTextShard(p2, p3, p4) end

-- _UI_FEED_POST_TWO_TEXT_SHARD  (0xA6F4216AB10EB08E)
-- min build: 1207
---@param p2 boolean
---@param p3 boolean
---@return number
---@return any
---@return any
function _UiFeedPostTwoTextShard(p2, p3) end

-- _UI_FEED_POST_VOICE_CHAT_FEED  (0xC48152BC6B3E821C)
-- min build: 1207
---@param p2 boolean
---@return number
---@return any
---@return any
function _UiFeedPostVoiceChatFeed(p2) end

-- UI_FEED_CLEAR_CHANNEL  (0xDD1232B332CBB9E7)
-- feedChannel: https://github.com/Halen84/RDR3-Native-Flags-And-Enums/tree/main/eUIFeedChannel
-- min build: 1207
---@param feedChannel number
---@param p1 boolean
---@param p2 boolean
function UiFeedClearChannel(feedChannel, p1, p2) end

-- UI_FEED_GET_CURRENT_MESSAGE  (0xC17F69E1418CD11F)
-- feedChannel: see UI_FEED_CLEAR_CHANNEL
-- Returns feedMessage
-- min build: 1207
---@param feedChannel number
---@return number
function UiFeedGetCurrentMessage(feedChannel) end
