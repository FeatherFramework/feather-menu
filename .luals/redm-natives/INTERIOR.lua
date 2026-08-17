---@meta

-- RDR3 namespace: INTERIOR -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x2533F2AB0EB9C6F9  (0x2533F2AB0EB9C6F9)
-- min build: 1207
---@param p0 any
---@param p1 any
function N_0x2533F2AB0EB9C6F9(p0, p1) end

-- _0xFE2B3D5500B1B2E4  (0xFE2B3D5500B1B2E4)
-- min build: 1207
---@param p0 any
---@param p1 any
function N_0xFE2B3D5500B1B2E4(p0, p1) end

-- _GET_INTERIOR_MINIMAP_HASH  (0x3039BE60B3749716)
-- min build: 1207
---@param interior number
---@return number
function _GetInteriorMinimapHash(interior) end

-- _GET_INTERIOR_POSITION  (0x2C9746D0CA15BE1C)
-- min build: 1207
---@param interior number
---@return vector3
function _GetInteriorPosition(interior) end

-- _IS_INTERIOR_ENTITY_SET_VALID  (0xD56FF170710FC826)
-- min build: 1207
---@param interior number
---@param entitySetName string
---@return boolean
function _IsInteriorEntitySetValid(interior, entitySetName) end

-- ACTIVATE_INTERIOR_ENTITY_SET  (0x174D0AAB11CED739)
-- https://github.com/femga/rdr3_discoveries/tree/master/interiors/interior_sets
-- min build: 1207
---@param interior number
---@param entitySetName string
---@param p2 number
function ActivateInteriorEntitySet(interior, entitySetName, p2) end

-- CLEAR_ROOM_FOR_ENTITY  (0xA1762D5BBFCA13A8)
-- min build: 1207
---@param entity number
function ClearRoomForEntity(entity) end

-- CLEAR_ROOM_FOR_GAME_VIEWPORT  (0x951A049765E0D450)
-- min build: 1207
function ClearRoomForGameViewport() end

-- DEACTIVATE_INTERIOR_ENTITY_SET  (0x33B81A2C07A51FFF)
-- min build: 1207
---@param interior number
---@param entitySetName string
---@param p2 boolean
function DeactivateInteriorEntitySet(interior, entitySetName, p2) end

-- DISABLE_INTERIOR  (0x3C2B92A1A07D4FCE)
-- min build: 1207
---@param interior number
---@param toggle boolean
function DisableInterior(interior, toggle) end

-- FORCE_ROOM_FOR_ENTITY  (0xBC29A9894C976945)
-- min build: 1207
---@param entity number
---@param interior number
---@param roomHashKey number
function ForceRoomForEntity(entity, interior, roomHashKey) end

-- FORCE_ROOM_FOR_GAME_VIEWPORT  (0x115B4AA8FB28AB43)
-- min build: 1207
---@param interiorID number
---@param roomHashKey number
function ForceRoomForGameViewport(interiorID, roomHashKey) end

-- GET_INTERIOR_AT_COORDS  (0xCDD36C9E5C469070)
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@return number
function GetInteriorAtCoords(x, y, z) end

-- GET_INTERIOR_AT_COORDS_WITH_TYPE  (0xAAD6170AA33B13C0)
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@param interiorType string
---@return number
function GetInteriorAtCoordsWithType(x, y, z, interiorType) end

-- GET_INTERIOR_AT_COORDS_WITH_TYPEHASH  (0x3543AEA1816D1D2B)
-- Hashed version of GET_INTERIOR_AT_COORDS_WITH_TYPE
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@param typeHash number
---@return number
function GetInteriorAtCoordsWithTypehash(x, y, z, typeHash) end

-- GET_INTERIOR_FROM_COLLISION  (0x5054D1A5218FA696)
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@return number
function GetInteriorFromCollision(x, y, z) end

-- GET_INTERIOR_FROM_ENTITY  (0xB417689857646F61)
-- Returns the handle of the interior that the entity is in. Returns 0 if outside.
-- min build: 1207
---@param entity number
---@return number
function GetInteriorFromEntity(entity) end

-- GET_INTERIOR_FROM_PRIMARY_VIEW  (0xBC8A281FF125C655)
-- min build: 1207
---@return number
function GetInteriorFromPrimaryView() end

-- GET_INTERIOR_LOCATION_AND_NAMEHASH  (0x8451E87D3C2B0286)
-- min build: 1207
---@param interior number
---@return vector3
---@return number
function GetInteriorLocationAndNamehash(interior) end

-- GET_KEY_FOR_ENTITY_IN_ROOM  (0x27D7B6F79E1F4603)
-- Seems to do the exact same as INTERIOR::GET_ROOM_KEY_FROM_ENTITY
-- min build: 1207
---@param entity number
---@return number
function GetKeyForEntityInRoom(entity) end

-- GET_ROOM_KEY_FROM_ENTITY  (0x076E46E0EB52AFC6)
-- Gets the room hash key from the room that the specified entity is in. Each room in every interior has a unique key. Returns 0 if the entity is outside.
-- min build: 1207
---@param entity number
---@return number
function GetRoomKeyFromEntity(entity) end

-- IS_COLLISION_MARKED_OUTSIDE  (0xF291396B517E25B2)
-- Returns true if the collision at the specified coords is marked as being outside (false if there's an interior)
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@return boolean
function IsCollisionMarkedOutside(x, y, z) end

-- IS_INTERIOR_ENTITY_SET_ACTIVE  (0x32810CA2125F5842)
-- min build: 1207
---@param interior number
---@param entitySetName string
---@return boolean
function IsInteriorEntitySetActive(interior, entitySetName) end

-- IS_INTERIOR_READY  (0x941560D2D45DBFC8)
-- min build: 1207
---@param interior number
---@return boolean
function IsInteriorReady(interior) end

-- IS_INTERIOR_SCENE  (0x4200F14D6F840A9A)
-- min build: 1207
---@return boolean
function IsInteriorScene() end

-- IS_VALID_INTERIOR  (0x017C1B3159F79F6C)
-- min build: 1207
---@param interior number
---@return boolean
function IsValidInterior(interior) end

-- PIN_INTERIOR_IN_MEMORY  (0xBD3D33EABF680168)
-- min build: 1207
---@param interior number
function PinInteriorInMemory(interior) end

-- RETAIN_ENTITY_IN_INTERIOR  (0x5BD616735F16BF5C)
-- min build: 1207
---@param entity number
---@param interior number
function RetainEntityInInterior(entity, interior) end

-- SET_INTERIOR_IN_USE  (0xB5EF6FEF2DC9EBED)
-- Actually returns void in IDA but the script header defines a BOOL return type
-- min build: 1207
---@param interior number
---@return boolean
function SetInteriorInUse(interior) end

-- UNPIN_INTERIOR  (0x07FD1A0B814F6055)
-- Does something similar to INTERIOR::DISABLE_INTERIOR.
-- 
-- You don't fall through the floor but everything is invisible inside and looks the same as when INTERIOR::DISABLE_INTERIOR is used. Peds behaves normally inside.
-- min build: 1207
---@param interior number
function UnpinInterior(interior) end
