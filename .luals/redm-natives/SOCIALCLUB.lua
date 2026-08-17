---@meta

-- RDR3 namespace: SOCIALCLUB -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- SC_COMMUNITY_EVENT_GET_DISPLAY_NAME  (0x89D9BDE7334B110F)
-- min build: 1207
---@param p0 string
---@return boolean
function ScCommunityEventGetDisplayName(p0) end

-- SC_COMMUNITY_EVENT_GET_DISPLAY_NAME_BY_ID  (0x11EA52CAD1B55910)
-- min build: 1207
---@param p0 number
---@param p1 string
---@return boolean
function ScCommunityEventGetDisplayNameById(p0, p1) end

-- SC_COMMUNITY_EVENT_GET_DISPLAY_NAME_FOR_TYPE  (0x85EA0BEC7B1F7622)
-- min build: 1207
---@param p0 string
---@param p1 string
---@return boolean
function ScCommunityEventGetDisplayNameForType(p0, p1) end

-- SC_COMMUNITY_EVENT_GET_EVENT_ID  (0xD635DF6BAA5A6017)
-- min build: 1207
---@return number
function ScCommunityEventGetEventId() end

-- SC_COMMUNITY_EVENT_GET_EVENT_ID_FOR_TYPE  (0x03C03ABBABBEF752)
-- min build: 1207
---@param p0 string
---@return number
function ScCommunityEventGetEventIdForType(p0) end

-- SC_COMMUNITY_EVENT_GET_EXTRA_DATA_FLOAT  (0x060BBAD634C2B44B)
-- min build: 1207
---@param p0 string
---@return boolean
---@return number
function ScCommunityEventGetExtraDataFloat(p0) end

-- SC_COMMUNITY_EVENT_GET_EXTRA_DATA_FLOAT_BY_ID  (0x91C9E2A0F9DD6DD4)
-- min build: 1207
---@param p0 number
---@param p1 string
---@return boolean
---@return number
function ScCommunityEventGetExtraDataFloatById(p0, p1) end

-- SC_COMMUNITY_EVENT_GET_EXTRA_DATA_FLOAT_FOR_TYPE  (0x1BDB56DB258F052D)
-- min build: 1207
---@param p0 string
---@param p2 string
---@return boolean
---@return number
function ScCommunityEventGetExtraDataFloatForType(p0, p2) end

-- SC_COMMUNITY_EVENT_GET_EXTRA_DATA_INT  (0xB4411D4D6B81438E)
-- min build: 1207
---@param p0 string
---@return boolean
---@return number
function ScCommunityEventGetExtraDataInt(p0) end

-- SC_COMMUNITY_EVENT_GET_EXTRA_DATA_INT_BY_ID  (0x7C981DE05A7403A0)
-- min build: 1207
---@param p0 number
---@param p1 string
---@return boolean
---@return number
function ScCommunityEventGetExtraDataIntById(p0, p1) end

-- SC_COMMUNITY_EVENT_GET_EXTRA_DATA_INT_FOR_TYPE  (0x3519CC3525319A96)
-- min build: 1207
---@param p0 string
---@param p2 string
---@return boolean
---@return number
function ScCommunityEventGetExtraDataIntForType(p0, p2) end

-- SC_COMMUNITY_EVENT_GET_EXTRA_DATA_STRING  (0x9F6DCD0C939C71E9)
-- min build: 1207
---@param p0 string
---@param p1 string
---@return boolean
function ScCommunityEventGetExtraDataString(p0, p1) end

-- SC_COMMUNITY_EVENT_GET_EXTRA_DATA_STRING_BY_ID  (0x049D2196D9D11184)
-- min build: 1207
---@param p0 number
---@param p1 string
---@param p2 string
---@return boolean
function ScCommunityEventGetExtraDataStringById(p0, p1, p2) end

-- SC_COMMUNITY_EVENT_GET_EXTRA_DATA_STRING_FOR_TYPE  (0xC8FC3B2432E8229D)
-- min build: 1207
---@param p0 string
---@param p1 string
---@param p2 string
---@return boolean
function ScCommunityEventGetExtraDataStringForType(p0, p1, p2) end

-- SC_COMMUNITY_EVENT_IS_ACTIVE  (0xCBF743C984695CF3)
-- min build: 1207
---@return boolean
function ScCommunityEventIsActive() end

-- SC_COMMUNITY_EVENT_IS_ACTIVE_BY_ID  (0x62B384FEFDE06817)
-- min build: 1207
---@param p0 number
---@return boolean
function ScCommunityEventIsActiveById(p0) end

-- SC_COMMUNITY_EVENT_IS_ACTIVE_FOR_TYPE  (0x09937EB0CEBC2F9F)
-- min build: 1207
---@param p0 string
---@return boolean
function ScCommunityEventIsActiveForType(p0) end

-- SC_INBOX_GET_MESSAGE_IS_READ_AT_INDEX  (0x74CF39E030A382C4)
-- min build: 1207
---@param msgIndex number
---@return boolean
function ScInboxGetMessageIsReadAtIndex(msgIndex) end

-- SC_INBOX_GET_MESSAGE_TYPE_AT_INDEX  (0xFF92537C4DDC1241)
-- min build: 1207
---@param msgIndex number
---@return number
function ScInboxGetMessageTypeAtIndex(msgIndex) end

-- SC_INBOX_GET_TOTAL_NUM_MESSAGES  (0x8EF0F633280C0663)
-- min build: 1207
---@return number
function ScInboxGetTotalNumMessages() end

-- SC_INBOX_MESSAGE_GET_DATA_INT  (0x95BB39C4DA99F348)
-- min build: 1207
---@param p0 number
---@param context string
---@return boolean
---@return number
function ScInboxMessageGetDataInt(p0, context) end

-- SC_INBOX_MESSAGE_GET_DATA_STRING  (0x66F77FD58506FF6B)
-- min build: 1207
---@param p0 number
---@param context string
---@param out string
---@return boolean
function ScInboxMessageGetDataString(p0, context, out) end

-- SC_INBOX_MESSAGE_GET_RAW_TYPE_AT_INDEX  (0x176D077685CD83E4)
-- min build: 1207
---@param p0 number
---@return string
function ScInboxMessageGetRawTypeAtIndex(p0) end

-- SC_INBOX_SET_MESSAGE_AS_READ_AT_INDEX  (0x63CAC501FFF66DC4)
-- min build: 1207
---@param msgIndex number
---@return boolean
function ScInboxSetMessageAsReadAtIndex(msgIndex) end

-- SC_PRESENCE_ATTR_SET_FLOAT  (0xA31DAFCDC33775E9)
-- min build: 1207
---@param attrHash number
---@param value number
---@return boolean
function ScPresenceAttrSetFloat(attrHash, value) end

-- SC_PRESENCE_ATTR_SET_FLOAT_EX  (0x00000000467F4CAA)
-- min build: 1207
---@param attrName string
---@param value number
---@param p2 boolean
---@return boolean
function ScPresenceAttrSetFloatEx(attrName, value, p2) end

-- SC_PRESENCE_ATTR_SET_INT_EX  (0x0000000085488C49)
-- min build: 1207
---@param attrName string
---@param value number
---@param p2 boolean
---@return boolean
function ScPresenceAttrSetIntEx(attrName, value, p2) end

-- SC_PRESENCE_ATTR_SET_STRING_EX  (0x00000000EB2D93B3)
-- min build: 1207
---@param attrName string
---@param value string
---@param p2 boolean
---@return boolean
function ScPresenceAttrSetStringEx(attrName, value, p2) end

-- SC_PROFANITY_CHECK_STRING  (0x9C74AC9D87B3FFF4)
-- Starts a task to check an entered string for profanity on the ROS/Social Club services.
-- min build: 1207
---@param string string
---@return boolean
---@return number
function ScProfanityCheckString(string) end

-- SC_PROFANITY_GET_CHECK_IS_PENDING  (0x3A10BCD0C8AA0B82)
-- min build: 1207
---@param token number
---@return boolean
function ScProfanityGetCheckIsPending(token) end

-- SC_PROFANITY_GET_CHECK_IS_VALID  (0x08C8052AF40C4247)
-- min build: 1207
---@param token number
---@return boolean
function ScProfanityGetCheckIsValid(token) end

-- SC_PROFANITY_GET_STRING_PASSED  (0xF302973BB8BE70E6)
-- min build: 1207
---@param token number
---@return boolean
function ScProfanityGetStringPassed(token) end

-- SC_PROFANITY_GET_STRING_STATUS  (0x0CF3BFB99EBBE5B1)
-- min build: 1207
---@param token number
---@return number
function ScProfanityGetStringStatus(token) end
