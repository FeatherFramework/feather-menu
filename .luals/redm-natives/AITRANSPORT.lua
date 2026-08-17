---@meta

-- RDR3 namespace: AITRANSPORT -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x4B6C9A43F7D9109B  (0x4B6C9A43F7D9109B)
-- Used for ROWBOAT and ROWBOATSWAMP in R* Scripts
-- _SET_IS_* - _SET_PED_*
-- min build: 1207
---@param transportVehicle number
---@param p1 boolean
function N_0x4B6C9A43F7D9109B(transportVehicle, p1) end

-- _CLEAR_ALL_SEAT_PREFERENCE_SLOTS  (0x5639FBEA922788DA)
-- min build: 1207
---@param ped number
function _ClearAllSeatPreferenceSlots(ped) end

-- _CLEAR_TRANSPORT_EXIT_BLEND_RATIO  (0xF8C20282B237E3F7)
-- Resets the value set by _SET_TRANSPORT_EXIT_BLEND_RATIO to 0.0f
-- min build: 1207
---@param ped number
function _ClearTransportExitBlendRatio(ped) end

-- _GET_PED_IN_TRANSPORT_SEAT  (0xFFEC4B0A1A3ED515)
-- seatIndex: see CREATE_PED_INSIDE_VEHICLE
-- min build: 1207
---@param transportEntity number
---@param seatIndex number
---@return number
function _GetPedInTransportSeat(transportEntity, seatIndex) end

-- _GET_TRANSPORT_USAGE_FLAGS  (0xE195C5A82156321D)
-- See _SET_TRANSPORT_USAGE_FLAGS
-- min build: 1207
---@param transportEntity number
---@return any
---@return number
function _GetTransportUsageFlags(transportEntity) end

-- _IS_PED_ON_TRANSPORT_ENTITY  (0x159EF5B6EDCE00E8)
-- Checks if ped is placed on target transportEntity
-- min build: 1207
---@param ped number
---@param transportEntity number
---@return boolean
function _IsPedOnTransportEntity(ped, transportEntity) end

-- _IS_PED_ON_TRANSPORT_SEAT  (0xDC44F405A6B98D03)
-- min build: 1207
---@param ped number
---@param p1 boolean
---@return boolean
function _IsPedOnTransportSeat(ped, p1) end

-- _IS_TRANSPORT_SEAT_FREE  (0x43FF27FC1829C202)
-- Called together with IS_VEHICLE_SEAT_FREE
-- min build: 1207
---@param transportEntity number
---@param seatIndex number
---@return boolean
function _IsTransportSeatFree(transportEntity, seatIndex) end

-- _IS_TRANSPORT_SEAT_OCCUPIED  (0x2E2E06023D07631E)
-- min build: 1207
---@param transportEntity number
---@param seatIndex number
---@return boolean
function _IsTransportSeatOccupied(transportEntity, seatIndex) end

-- _SET_AI_CAN_USE_TRANSPORT  (0x67F7CEAC2391E114)
-- min build: 1207
---@param transportEntity number
---@param state boolean
function _SetAiCanUseTransport(transportEntity, state) end

-- _SET_PED_USE_TRANSPORT_SEAT_PREFERENCE  (0xB7079F4C72896756)
-- min build: 1207
---@param ped number
---@param transportEntity number
---@param preferenceSlot number
---@param p3 number
---@param seatIndex number
function _SetPedUseTransportSeatPreference(ped, transportEntity, preferenceSlot, p3, seatIndex) end

-- _SET_TRANSPORT_EXCLUSIVE_DRIVER  (0x4248AB2EEB3C75AD)
-- min build: 1207
---@param transportEntity number
---@param ped number
---@param seatIndex number
function _SetTransportExclusiveDriver(transportEntity, ped, seatIndex) end

-- _SET_TRANSPORT_EXIT_BLEND_RATIO  (0x8C8371EDFAF014A0)
-- Exit/dismount speed/blend multiplier for the transport user ped.
-- >0 enables override, 0 = off; only works while ped is a transport user.
-- R* Script usage: rcm_doctors_opinion1 - immediately after TASK_EXIT_TRANSPORT(...), set to 0.8f.
-- https://www.youtube.com/watch?v=FMeUNZbhjAc&t=15s
-- min build: 1207
---@param ped number
---@param ratio number
function _SetTransportExitBlendRatio(ped, ratio) end

-- _SET_TRANSPORT_PRIORITY_SEAT  (0x13F138225C202F66)
-- min build: 1207
---@param transportEntity number
---@param seatIndex number
function _SetTransportPrioritySeat(transportEntity, seatIndex) end

-- _SET_TRANSPORT_USAGE_FLAGS  (0xE2487779957FE897)
-- enum eTransportUsageFlags
-- {
-- 	TUF_INVALID = 0,
-- 	TUF_ALLOW_DRIVER_ME = (1 << 0),
-- 	TUF_ALLOW_DRIVER_GANG = (1 << 1),
-- 	TUF_ALLOW_DRIVER_CREW = (1 << 2),
-- 	TUF_ALLOW_DRIVER_FRIENDS = (1 << 3),
-- 	TUF_ALLOW_DRIVER_ANYONE = (1 << 4),
-- 	TUF_ALLOW_PASSENGER_ME = (1 << 5),
-- 	TUF_ALLOW_PASSENGER_GANG = (1 << 6),
-- 	TUF_ALLOW_PASSENGER_CREW = (1 << 7),
-- 	TUF_ALLOW_PASSENGER_FRIENDS = (1 << 8),
-- 	TUF_ALLOW_PASSENGER_ANYONE = (1 << 9),
-- 	TUF_ALLOW_ACCESS_AI = (1 << 10)
-- };
-- min build: 1207
---@param transportEntity number
---@param flags number
function _SetTransportUsageFlags(transportEntity, flags) end

-- GET_TRANSPORT_CONFIG_FLAG  (0xF382C92CCC1CCDBC)
-- flagId: see SET_TRANSPORT_CONFIG_FLAG
-- min build: 1207
---@param transportEntity number
---@param flagId number
---@param p2 boolean
---@return boolean
function GetTransportConfigFlag(transportEntity, flagId, p2) end

-- IS_PED_ENTERING_TRANSPORT  (0x619E63980BFC0096)
-- min build: 1207
---@param ped number
---@param transportEntity number
---@param p2 boolean
---@return boolean
function IsPedEnteringTransport(ped, transportEntity, p2) end

-- IS_PED_EXITING_TRANSPORT  (0x660639BC60157048)
-- min build: 1207
---@param ped number
---@param transportEntity number
---@return boolean
function IsPedExitingTransport(ped, transportEntity) end

-- SET_PED_OFF_TRANSPORT_SEAT  (0x8886D83A430537FD)
-- min build: 1207
---@param ped number
---@param flags number
function SetPedOffTransportSeat(ped, flags) end

-- SET_PED_ON_TRANSPORT_SEAT  (0xE588B5A8A005CB5E)
-- seat: see CREATE_PED_INSIDE_VEHICLE
-- min build: 1207
---@param ped number
---@param transportEntity number
---@param seat number
---@param flags number
function SetPedOnTransportSeat(ped, transportEntity, seat, flags) end

-- SET_TRANSPORT_ACCESSIBLE_SEAT_FLAGS  (0xDD0660C997DE94FD)
-- min build: 1207
---@param transportEntity number
---@param flags number
function SetTransportAccessibleSeatFlags(transportEntity, flags) end

-- SET_TRANSPORT_CONFIG_FLAG  (0xBA8818212633500A)
-- flagId:
-- enum eTransportConfigFlags
-- {
-- 	TCF_NotConsideredForEntryByLocalPlayer,
-- 	TCF_0xB78D6624,
-- 	TCF_0xA9700425,
-- 	TCF_0x8D7E4641,
-- 	TCF_0xF24BAA1F,
-- 	TCF_0x63B77935,
-- 	TCF_NotConsideredForEntryByAllPlayers,
-- 	TCF_0xD17A2AFD,
-- 	TCF_0xD4E4FDD5,
-- 	TCF_0x8227C929,
-- 	TCF_0x812C1070,
-- 	TCF_0x0E1AB26F,
-- 	TCF_0xBF4EC863,
-- 	TCF_0x75660C36,
-- 	TCF_0xA2539E20,
-- 	TCF_0x9162C633,
-- 	TCF_DisableHonorModifiers,
-- 	TCF_0xF9E71CB6,
-- 	TCF_0x933ECD3F,
-- 	TCF_0x18513A34
-- };
-- https://github.com/femga/rdr3_discoveries/tree/master/AI/TRANSPORT_CONFIG_FLAGS
-- min build: 1207
---@param transportEntity number
---@param flagId number
---@param value boolean
function SetTransportConfigFlag(transportEntity, flagId, value) end

-- TASK_ENTER_TRANSPORT  (0xAEE3ADD08829CB6F)
-- Request a ped to enter/join a transport seat. args is a script struct<9> (72 bytes); each field is 8-byte (alignas(8)).
-- 
-- struct TaskEnterTransportArgs
-- {
-- 	alignas(8) Any     p0;        // unused/reserved in observed scripts
-- 	alignas(8) Any     p1;        // unused/reserved in observed scripts
-- 	alignas(8) Any     p2;        // unused/reserved in observed scripts
-- 	alignas(8) Ped     ped;       // performing ped
-- 	alignas(8) Vehicle vehicle;   // target transport
-- 	alignas(8) int     seatIndex; // seat to join (scripts use -1 or explicit seat)
-- 	alignas(8) int     timeoutMs; // time until forced join/teleport (commonly 20000)
-- 	alignas(8) float   pedSpeed;  // blend/speed
-- 	alignas(8) int     flags;     // seen values: (1<<30), 1, 16, 1048578 (usage unclear)
-- };
-- min build: 1207
---@return any
function TaskEnterTransport() end

-- TASK_EXIT_TRANSPORT  (0xC273A5B8488F7838)
-- Request a ped to exit a transport. args is a script struct<7> (56 bytes); each field is 8-byte (alignas(8)).
-- 
-- struct TaskExitTransportArgs
-- {
-- 	alignas(8) Any     p0;       // unused/reserved in observed scripts
-- 	alignas(8) Any     p1;       // unused/reserved in observed scripts
-- 	alignas(8) Any     p2;       // unused/reserved in observed scripts
-- 	alignas(8) Ped     ped;      // performing ped (e.g. PLAYER_PED_ID())
-- 	alignas(8) Vehicle vehicle;  // transport to exit (vehicle or mount entity handle)
-- 	alignas(8) float   pedSpeed; // blend/speed
-- 	alignas(8) int     flags;    // seen values: (1<<30) and 1 (usage unclear)
-- };
-- min build: 1207
---@return any
function TaskExitTransport() end
