---@meta

-- RDR3 namespace: EVENT -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x18E93EBFC1FCFA48  (0x18E93EBFC1FCFA48)
-- Only used in R* SP Script beat_rat_infestation and homeinvasion
-- min build: 1207
---@param volume number
---@param p1 boolean
---@param p2 boolean
---@return any
function N_0x18E93EBFC1FCFA48(volume, p1, p2) end

-- _0x1A5C5D350068A673  (0x1A5C5D350068A673)
-- AGGRO_CHECK_PROPERTY_DAMAGE: Property damage found with event
-- min build: 1207
---@param ped number
---@param p1 number
function N_0x1A5C5D350068A673(ped, p1) end

-- _0x1D1B448D719415AB  (0x1D1B448D719415AB)
-- _GET*
-- min build: 1207
---@param ped number
---@return any
function N_0x1D1B448D719415AB(ped) end

-- _0x26054EB81AC0893B  (0x26054EB81AC0893B)
-- min build: 1207
---@param object number
---@return boolean
function N_0x26054EB81AC0893B(object) end

-- _0x2DD42FAD06E6F19E  (0x2DD42FAD06E6F19E)
-- min build: 1207
---@param object number
---@param p1 boolean
---@param p2 boolean
---@return any
function N_0x2DD42FAD06E6F19E(object, p1, p2) end

-- _0x36D0F2BA2C0D9BDE  (0x36D0F2BA2C0D9BDE)
-- _ADD* (_ADD_SHOCKING_EVENT_* ?)
-- min build: 1207
---@param entity number
---@param p1 number
---@return any
function N_0x36D0F2BA2C0D9BDE(entity, p1) end

-- _0x4465C3D1475BD3FD  (0x4465C3D1475BD3FD)
-- min build: 1207
---@param model number
function N_0x4465C3D1475BD3FD(model) end

-- _0x4B2B1A891D437CA7  (0x4B2B1A891D437CA7)
-- Only used in R* SP Script coachrobberies
-- _SET_S*
-- min build: 1207
---@param p0 number
function N_0x4B2B1A891D437CA7(p0) end

-- _0x56B3410626A473E7  (0x56B3410626A473E7)
-- Only used in R* SP Script beat_rat_infestation
-- Params: p0 = value returned by 0x18E93EBFC1FCFA48
-- min build: 1207
---@param p0 any
function N_0x56B3410626A473E7(p0) end

-- _0x7C511E91738A0828  (0x7C511E91738A0828)
-- Only used in R* SP Scripts
-- Hash only used in R* Script mob3.ysc: ROBBERY
-- _ADD_PED*
-- min build: 1207
---@param ped1 number
---@param ped2 number
---@param p2 number
---@param p3 number
function N_0x7C511E91738A0828(ped1, ped2, p2, p3) end

-- _0x83D43F0FD5276E4D  (0x83D43F0FD5276E4D)
-- _GET*
-- min build: 1207
---@param entity number
---@param p1 number
---@return any
function N_0x83D43F0FD5276E4D(entity, p1) end

-- _0x9520175B35E2268D  (0x9520175B35E2268D)
-- _SET_P*
-- min build: 1207
---@param ped number
---@param p1 boolean
function N_0x9520175B35E2268D(ped, p1) end

-- _0xA86B0EE9B39D15D6  (0xA86B0EE9B39D15D6)
-- min build: 1207
---@param object number
function N_0xA86B0EE9B39D15D6(object) end

-- _0xAD17A18215DD23D6  (0xAD17A18215DD23D6)
-- Might return time since some (?) event.
-- min build: 1207
---@param entity number
---@param p1 number
---@param p2 number
---@return number
function N_0xAD17A18215DD23D6(entity, p1, p2) end

-- _0xB6F4825153920582  (0xB6F4825153920582)
-- _S* (_SUPPRESS_EVENTS_NEXT_FRAME?)
-- min build: 1207
function N_0xB6F4825153920582() end

-- _0xE28D7FC9FD32ABEB  (0xE28D7FC9FD32ABEB)
-- HAS_ACTOR_RECEIVED_TRACKED_EVENT_THAT_SHOULD_ALERT - iTimeSinceEvent >= iTimeLimitMS
-- min build: 1311
---@param entity number
---@param eventType number
---@param p2 number
function N_0xE28D7FC9FD32ABEB(entity, eventType, p2) end

-- _0xE2C2FBB7825FFC66  (0xE2C2FBB7825FFC66)
-- min build: 1207
function N_0xE2C2FBB7825FFC66() end

-- _ADD_MODEL_TO_EVENT_MONITOR  (0x608AD36A644A97FE)
-- Models used in the scripts: P_REGISTER05X, P_REGISTER06X, P_REGISTER03X, PLAYER_ZERO, PLAYER_THREE, A_C_HORSE_MORGAN_FLAXENCHESTNUT
-- min build: 1207
---@param model number
---@param p1 boolean
---@param p2 boolean
function _AddModelToEventMonitor(model, p1, p2) end

-- _CREATE_SHOCKING_EVENT  (0xCA1315C33B9A2847)
-- min build: 1207
---@return number
---@return any
function _CreateShockingEvent() end

-- _EVENT_FLUSH_ALL_EVENT_TRACKERS  (0xAD8F2424C6E1E3A8)
-- min build: 1207
---@param ped number
function _EventFlushAllEventTrackers(ped) end

-- _EVENT_GET_RECENT_EVENT  (0x796EECFF0C6D39BE)
-- Returns eventType
-- min build: 1207
---@param entity number
---@param p1 number
---@param p2 number
---@return number
function _EventGetRecentEvent(entity, p1, p2) end

-- _EVENT_GET_SOURCE_ENTITY_FROM_EVENT  (0x822A001BCEA5BD81)
-- min build: 1207
---@param entity number
---@param eventType number
---@param p2 number
---@param p3 number
---@return number
function _EventGetSourceEntityFromEvent(entity, eventType, p2, p3) end

-- _EVENT_GET_TARGET_ENTITY_FROM_EVENT  (0x38497F139981C5C9)
-- min build: 1207
---@param entity number
---@param eventType number
---@param p2 number
---@param p3 number
---@return number
function _EventGetTargetEntityFromEvent(entity, eventType, p2, p3) end

-- _EVENT_GET_TIME_SINCE_EVENT  (0xC6A7DC546E94FED5)
-- min build: 1207
---@param entity number
---@param eventType number
---@param p2 number
---@param p3 number
---@return number
function _EventGetTimeSinceEvent(entity, eventType, p2, p3) end

-- _IS_EVENT_TRACKER_ACTIVE  (0x797B3D4D92E56094)
-- min build: 1207
---@param eventName string
---@param shockingEvent number
---@return boolean
function _IsEventTrackerActive(eventName, shockingEvent) end

-- _REMOVE_ALL_SHOCKING_EVENTS_IN_AREA  (0xB4C71BA9CAB097BD)
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@param radius number
---@param p4 boolean
function _RemoveAllShockingEventsInArea(x, y, z, radius, p4) end

-- _REMOVE_ALL_SHOCKING_EVENTS_OF_TYPE_IN_AREA  (0x6A648D42BF271DC7)
-- eventType: https://alloc8or.re/rdr3/doc/enums/eEventType.txt
-- min build: 1207
---@param eventType number
---@param x number
---@param y number
---@param z number
---@param radius number
---@param p5 boolean
function _RemoveAllShockingEventsOfTypeInArea(eventType, x, y, z, radius, p5) end

-- _SET_EVENT_TRACKER_FOR_PED  (0xBB1E41DD3D3C6250)
-- min build: 1207
---@param ped number
---@param eventName string
---@param p2 number
function _SetEventTrackerForPed(ped, eventName, p2) end

-- ADD_SHOCKING_EVENT_AT_POSITION  (0xD9F8455409B525E9)
-- eventType: https://alloc8or.re/rdr3/doc/enums/eEventType.txt
-- https://github.com/femga/rdr3_discoveries/blob/master/AI/EVENTS
-- min build: 1207
---@param eventType number
---@param x number
---@param y number
---@param z number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 number
---@param p8 number
---@param p9 number
---@param p10 number
---@return number
function AddShockingEventAtPosition(eventType, x, y, z, p4, p5, p6, p7, p8, p9, p10) end

-- ADD_SHOCKING_EVENT_FOR_ENTITY  (0x7FD8F3BE76F89422)
-- eventType: https://alloc8or.re/rdr3/doc/enums/eEventType.txt
-- min build: 1207
---@param eventType number
---@param entity number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 number
---@param p8 boolean
---@param p9 boolean
---@param p10 number
---@param p11 number
---@return number
function AddShockingEventForEntity(eventType, entity, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end

-- IS_SHOCKING_EVENT_IN_SPHERE  (0x9DB47E16060D6354)
-- eventType: https://alloc8or.re/rdr3/doc/enums/eEventType.txt
-- min build: 1207
---@param eventType number
---@param x number
---@param y number
---@param z number
---@param radius number
---@return boolean
function IsShockingEventInSphere(eventType, x, y, z, radius) end

-- REMOVE_ALL_SHOCKING_EVENTS  (0xD47A168C2AB90DC4)
-- min build: 1207
---@param p0 boolean
function RemoveAllShockingEvents(p0) end

-- REMOVE_ALL_SHOCKING_EVENTS_OF_TYPE  (0x118873DD538490B4)
-- eventType: https://alloc8or.re/rdr3/doc/enums/eEventType.txt
-- min build: 1207
---@param eventType number
---@param p1 boolean
function RemoveAllShockingEventsOfType(eventType, p1) end

-- REMOVE_SHOCKING_EVENT  (0xE8BB3CC253A34559)
-- min build: 1207
---@param event number
---@return boolean
function RemoveShockingEvent(event) end

-- REMOVE_SHOCKING_EVENT_SPAWN_BLOCKING_AREAS  (0xDB249021652420C5)
-- min build: 1207
function RemoveShockingEventSpawnBlockingAreas() end

-- SET_DECISION_MAKER  (0x8AE2F981CDDB8FA4)
-- min build: 1207
---@param ped number
---@param name number
function SetDecisionMaker(ped, name) end

-- SET_DECISION_MAKER_TO_DEFAULT  (0x6B9C5C38838FB6E6)
-- min build: 1207
---@param ped number
function SetDecisionMakerToDefault(ped) end

-- SUPPRESS_SHOCKING_EVENTS_NEXT_FRAME  (0x84994FAD4E4E4E69)
-- min build: 1207
function SuppressShockingEventsNextFrame() end
