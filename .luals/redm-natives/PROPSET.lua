---@meta

-- RDR3 namespace: PROPSET -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x58E0B01D45CA7357  (0x58E0B01D45CA7357)
-- min build: 1207
---@param p0 any
function N_0x58E0B01D45CA7357(p0) end

-- _ADD_ADDITIONAL_PROP_SET_FOR_VEHICLE  (0x75F90E4051CC084C)
-- https://github.com/femga/rdr3_discoveries/blob/master/vehicles/vehicle_modding/vehicle_propsets.lua
-- min build: 1207
---@param vehicle number
---@param propset number
function _AddAdditionalPropSetForVehicle(vehicle, propset) end

-- _ADD_LIGHT_PROP_SET_TO_VEHICLE  (0xC0F0417A90402742)
-- To remove propsets either parse a zero as hash or call 0xE31C0CB1C3186D40
-- 0xA6A9712955F53D9C returns lightPropset Hashes
-- https://github.com/femga/rdr3_discoveries/blob/master/vehicles/vehicle_modding/vehicle_lantern_propsets.lua
-- min build: 1207
---@param vehicle number
---@param lightPropset number
function _AddLightPropSetToVehicle(vehicle, lightPropset) end

-- _ADD_PROP_SET_FOR_VEHICLE  (0xD80FAF919A2E56EA)
-- List of vehicle propsets (wagons & trains): https://pastebin.com/1CsnvGLu / https://pastebin.com/v7TtqTgE
-- min build: 1207
---@param vehicle number
---@param propset number
function _AddPropSetForVehicle(vehicle, propset) end

-- _CREATE_PROP_SET  (0xE65C5CBA95F0E510)
-- propsetType: https://github.com/femga/rdr3_discoveries/blob/master/objects/propsets_list.lua
-- placementType: https://github.com/Halen84/RDR3-Native-Flags-And-Enums/tree/main/PlacementType
-- min build: 1207
---@param propsetType number
---@param x number
---@param y number
---@param z number
---@param placementType number
---@param heading number
---@param zProbe number
---@param p7 boolean
---@param useVegMod boolean
---@return number
function _CreatePropSet(propsetType, x, y, z, placementType, heading, zProbe, p7, useVegMod) end

-- _CREATE_PROP_SET_2  (0x899C97A1CCE7D483)
-- Same as _CREATE_PROP_SET
-- min build: 1207
---@param propsetType number
---@param x number
---@param y number
---@param z number
---@param placementType number
---@param heading number
---@param zProbe number
---@param p7 boolean
---@param useVegMod boolean
---@return number
function _CreatePropSet2(propsetType, x, y, z, placementType, heading, zProbe, p7, useVegMod) end

-- _CREATE_PROP_SET_INSTANCE_ATTACHED_TO_ENTITY_2  (0xACA7FB30269096D4)
-- Same as CREATE_PROP_SET_INSTANCE_ATTACHED_TO_ENTITY
-- min build: 1207
---@param hash number
---@param x number
---@param y number
---@param z number
---@param entity number
---@param p5 number
---@param p6 boolean
---@param p7 number
---@param p8 boolean
---@return number
function _CreatePropSetInstanceAttachedToEntity2(hash, x, y, z, entity, p5, p6, p7, p8) end

-- _DELETE_PROP_SET  (0x58AC173A55D9D7B4)
-- min build: 1207
---@param propSet number
---@param p1 boolean
---@param p2 boolean
function _DeletePropSet(propSet, p1, p2) end

-- _DOES_PROP_SET_OF_TYPE_EXIST_NEAR_COORDS  (0x72068021F498E6E3)
-- min build: 1207
---@param propsetHash number
---@param x number
---@param y number
---@param z number
---@return boolean
function _DoesPropSetOfTypeExistNearCoords(propsetHash, x, y, z) end

-- _DOES_VEHICLE_HAVE_ANY_LIGHT_PROP_SET  (0xC9B4B3A36F81FD75)
-- min build: 1207
---@param vehicle number
---@return boolean
function _DoesVehicleHaveAnyLightPropSet(vehicle) end

-- _DOES_VEHICLE_HAVE_ANY_PROP_SET  (0x53784CEA0159439B)
-- min build: 1207
---@param vehicle number
---@return boolean
function _DoesVehicleHaveAnyPropSet(vehicle) end

-- _GET_ENTITIES_FROM_PROP_SET  (0x738271B660FE0695)
-- min build: 1207
---@param propSet number
---@param itemSet number
---@param model number
---@param p3 boolean
---@param p4 boolean
---@return number
function _GetEntitiesFromPropSet(propSet, itemSet, model, p3, p4) end

-- _GET_PROP_SET_AT_COORDS  (0xC061E50F8D299F95)
-- min build: 1207
---@param propsetHash number
---@param x number
---@param y number
---@param z number
---@return number
function _GetPropSetAtCoords(propsetHash, x, y, z) end

-- _GET_PROP_SET_MODEL  (0xA6A9712955F53D9C)
-- min build: 1207
---@param propSet number
---@return number
function _GetPropSetModel(propSet) end

-- _GET_TRAIN_CARRIAGE_PROP_SET  (0xCFC0BD09BB1B73FF)
-- Example before/after deleting a train carriage's propset: https://imgur.com/a/qRNrIrK
-- min build: 1207
---@param trainCarriage number
---@return number
function _GetTrainCarriagePropSet(trainCarriage) end

-- _GET_VEHICLE_LIGHT_PROP_SET  (0xA079300AF757FB1A)
-- Returns PropSet handle to be used with _GET_PROP_SET_MODEL
-- min build: 1207
---@param vehicle number
---@return number
function _GetVehicleLightPropSet(vehicle) end

-- _GET_VEHICLE_PROP_SET  (0xCE2ACD6F602803E5)
-- min build: 1207
---@param vehicle number
---@return number
function _GetVehiclePropSet(vehicle) end

-- _GET_VEHICLE_PROP_SET_HASH  (0x36F69E7A22655653)
-- min build: 1207
---@param vehicle number
---@return number
function _GetVehiclePropSetHash(vehicle) end

-- _HAS_PROP_SET_LOADED  (0x48A88FC684C55FDC)
-- min build: 1207
---@param hash number
---@return boolean
function _HasPropSetLoaded(hash) end

-- _HAS_PROP_SET_LOADED_2  (0xD090ABEF4D6A7D96)
-- Same as _HAS_PROP_SET_LOADED
-- min build: 1207
---@param hash number
---@return boolean
function _HasPropSetLoaded2(hash) end

-- _HAS_VEHICLE_TRAILER_PROP_SET_LOADED  (0x8F3333F0A6900B3C)
-- min build: 1207
---@param vehicle number
---@param wagonIndex number
---@return boolean
function _HasVehicleTrailerPropSetLoaded(vehicle, wagonIndex) end

-- _IS_PROP_SET_VISIBLE  (0x0CE8AAFE9E433A23)
-- min build: 1207
---@param propSet number
---@return boolean
function _IsPropSetVisible(propSet) end

-- _IS_VEHICLE_LIGHT_PROP_SET_LOADED  (0x0790473EEE1977D3)
-- min build: 1207
---@param vehicle number
---@return boolean
function _IsVehicleLightPropSetLoaded(vehicle) end

-- _IS_VEHICLE_PROP_SET_LOADED  (0x155B2FBE72D7D1D0)
-- min build: 1207
---@param vehicle number
---@return boolean
function _IsVehiclePropSetLoaded(vehicle) end

-- _IS_VEHICLE_PROP_SET_LOADED_ADDITIONAL  (0x7264F9CA87A9830B)
-- min build: 1207
---@param vehicle number
---@return boolean
function _IsVehiclePropSetLoadedAdditional(vehicle) end

-- _MOVE_PROPSET_COORDS_AND_HEADING  (0xC4B67EF3FD65622D)
-- Relocates an existing prop set to specified coordinates and adjusts its heading (rotation) without affecting the prop set's internal layout or structure.
-- When `onGroundProperly` is true, the prop set automatically aligns accurately with the terrain.
-- min build: 1207
---@param propSet number
---@param x number
---@param y number
---@param z number
---@param onGroundProperly boolean
---@param heading number
function _MovePropsetCoordsAndHeading(propSet, x, y, z, onGroundProperly, heading) end

-- _RELEASE_PROP_SET  (0xB1964A83B345B4AB)
-- min build: 1207
---@param hash number
---@return boolean
function _ReleasePropSet(hash) end

-- _REMOVE_VEHICLE_LIGHT_PROP_SETS  (0xE31C0CB1C3186D40)
-- min build: 1207
---@param vehicle number
function _RemoveVehicleLightPropSets(vehicle) end

-- _REMOVE_VEHICLE_PROP_SETS  (0x3BCF32FF37EA9F1D)
-- min build: 1207
---@param vehicle number
function _RemoveVehiclePropSets(vehicle) end

-- _REQUEST_PROP_SET  (0xF3DE57A46D5585E9)
-- min build: 1207
---@param hash number
---@return boolean
function _RequestPropSet(hash) end

-- _REQUEST_PROP_SET_2  (0xE72F591958F3ACAB)
-- Same as _REQUEST_PROP_SET
-- min build: 1207
---@param hash number
---@return boolean
function _RequestPropSet2(hash) end

-- _SET_PROP_SET_AS_NO_LONGER_NEEDED  (0x909E3C7FAE539FB1)
-- min build: 1207
---@param propSet number
function _SetPropSetAsNoLongerNeeded(propSet) end

-- _SET_PROP_SET_FLAG  (0xC1AB7EEFD3E6EE49)
-- min build: 1207
---@param propSet number
---@param flag number
function _SetPropSetFlag(propSet, flag) end

-- _SET_PROP_SET_VISIBLE  (0x9D096A5BD02F953E)
-- min build: 1207
---@param propSet number
---@param toggle boolean
function _SetPropSetVisible(propSet, toggle) end

-- CREATE_PROP_SET_INSTANCE_ATTACHED_TO_ENTITY  (0x9609DBDDE18FAD8C)
-- min build: 1207
---@param hash number
---@param x number
---@param y number
---@param z number
---@param entity number
---@param p5 number
---@param p6 boolean
---@param p7 number
---@param p8 boolean
---@return number
function CreatePropSetInstanceAttachedToEntity(hash, x, y, z, entity, p5, p6, p7, p8) end

-- DOES_PROP_SET_EXIST  (0x7DDDCF815E650FF5)
-- min build: 1207
---@param propSet number
---@return boolean
function DoesPropSetExist(propSet) end

-- IS_PROP_SET_FULLY_LOADED  (0xF42DB680A8B2A4D9)
-- min build: 1207
---@param propSet number
---@return boolean
function IsPropSetFullyLoaded(propSet) end
