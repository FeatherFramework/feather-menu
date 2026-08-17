---@meta

-- RDR3 namespace: CREW -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x58D378AF2C8765B7  (0x58D378AF2C8765B7)
-- min build: 1207
---@param p0 any
---@return boolean
function N_0x58D378AF2C8765B7(p0) end

-- _NETWORK_ACCEPT_CLAN_INVITE  (0x8E2143144B8E188D)
-- min build: 1207
---@param crewInviteIndex number
---@return boolean
function _NetworkAcceptClanInvite(crewInviteIndex) end

-- _NETWORK_CLAN_INVITE_PLAYER  (0xC685B014CE3D988B)
-- min build: 1207
---@param p0 any
---@return boolean
function _NetworkClanInvitePlayer(p0) end

-- _NETWORK_CLAN_SET_ACTIVE  (0xC080FF658B2E51DA)
-- min build: 1207
---@param p0 any
---@return any
function _NetworkClanSetActive(p0) end

-- NETWORK_CLAN_GET_LOCAL_MEMBERSHIPS_COUNT  (0x1F471B79ACC90BEF)
-- min build: 1207
---@return number
function NetworkClanGetLocalMembershipsCount() end

-- NETWORK_CLAN_GET_MEMBERSHIP_DESC  (0x48DE78AF2C8885B8)
-- min build: 1207
---@param p1 number
---@return boolean
---@return any
function NetworkClanGetMembershipDesc(p1) end

-- NETWORK_CLAN_IS_EMBLEM_READY  (0xA134777FF7F33331)
-- min build: 1207
---@param p0 any
---@return boolean
---@return any
function NetworkClanIsEmblemReady(p0) end

-- NETWORK_CLAN_PLAYER_GET_DESC  (0xEEE6EACBE8874FBA)
-- min build: 1207
---@param bufferSize number
---@return boolean
---@return any
---@return any
function NetworkClanPlayerGetDesc(bufferSize) end

-- NETWORK_CLAN_PLAYER_IS_ACTIVE  (0xB124B57F571D8F18)
-- min build: 1207
---@return boolean
---@return any
function NetworkClanPlayerIsActive() end

-- NETWORK_CLAN_RELEASE_EMBLEM  (0x113E6E3E50E286B0)
-- min build: 1207
---@param p0 any
function NetworkClanReleaseEmblem(p0) end

-- NETWORK_CLAN_REQUEST_EMBLEM  (0x13518FF1C6B28938)
-- min build: 1207
---@param p0 any
---@return boolean
function NetworkClanRequestEmblem(p0) end

-- NETWORK_CLAN_SERVICE_IS_VALID  (0x579CCED0265D4896)
-- min build: 1207
---@return boolean
function NetworkClanServiceIsValid() end

-- NETWORK_FIND_GAMERS_IN_CREW  (0xE532D6811B3A4D2A)
-- min build: 1207
---@param crewId number
---@return boolean
function NetworkFindGamersInCrew(crewId) end

-- NETWORK_GET_PRIMARY_CLAN_DATA_CLEAR  (0x9AA46BADAD0E27ED)
-- min build: 1207
---@return any
function NetworkGetPrimaryClanDataClear() end

-- NETWORK_GET_PRIMARY_CLAN_DATA_NEW  (0xC080FF658B2E41DA)
-- min build: 1207
---@return boolean
---@return any
---@return any
function NetworkGetPrimaryClanDataNew() end

-- NETWORK_GET_PRIMARY_CLAN_DATA_PENDING  (0xB5074DB804E28CE7)
-- min build: 1207
---@return boolean
function NetworkGetPrimaryClanDataPending() end

-- NETWORK_GET_PRIMARY_CLAN_DATA_START  (0xCE86D8191B762107)
-- min build: 1207
---@param p1 any
---@return boolean
---@return any
function NetworkGetPrimaryClanDataStart(p1) end

-- NETWORK_GET_PRIMARY_CLAN_DATA_SUCCESS  (0x5B4F04F19376A0BA)
-- min build: 1207
---@return boolean
function NetworkGetPrimaryClanDataSuccess() end
