---@meta

-- RDR3 namespace: FIRE -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x24DB6B9F2B719043  (0x24DB6B9F2B719043)
-- Only used in R* SP Related Camp Scripts
-- min build: 1207
---@param p0 number
function N_0x24DB6B9F2B719043(p0) end

-- _0x41B87A6495EE13DD  (0x41B87A6495EE13DD)
-- min build: 1232
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
---@param p6 any
---@param p7 any
---@param p8 any
---@param p9 any
---@return any
function N_0x41B87A6495EE13DD(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

-- _0x68F6A75FDF5A70D6  (0x68F6A75FDF5A70D6)
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@param p3 number
function N_0x68F6A75FDF5A70D6(x, y, z, p3) end

-- _0x754937C28271BC65  (0x754937C28271BC65)
-- min build: 1207
---@param p0 any
function N_0x754937C28271BC65(p0) end

-- _ADD_EXPLOSION_WITH_DAMAGE_CAUSER  (0xB7DF150605EEDC9B)
-- Adds an explosion with entity as damage causer.
-- explosionType: see ADD_EXPLOSION
-- _A* - _ADD_D*
-- min build: 1207
---@param entity number
---@param p1 number
---@param x number
---@param y number
---@param z number
---@param explosionType number
---@param damageScale number
---@param isAudible boolean
---@param isInvisible boolean
---@param cameraShake number
function _AddExplosionWithDamageCauser(entity, p1, x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake) end

-- _ADD_EXPLOSION_WITH_USER_VFX_AND_DAMAGE_CAUSER  (0x34AE85C7CA4857AA)
-- Adds an explosion with vfx and entity as damage causer.
-- explosionFx: see ADD_EXPLOSION_WITH_USER_VFX
-- _A* - _ADD_D*
-- min build: 1207
---@param entity number
---@param p1 boolean
---@param x number
---@param y number
---@param z number
---@param explosionType number
---@param explosionFx number
---@param damageScale number
---@param isAudible boolean
---@param isInvisible boolean
---@param cameraShake number
function _AddExplosionWithUserVfxAndDamageCauser(entity, p1, x, y, z, explosionType, explosionFx, damageScale, isAudible, isInvisible, cameraShake) end

-- _GET_CLOSEST_FIRE_POS_IN_VOLUME  (0x559FC1D310813031)
-- min build: 1232
---@param posX number
---@param posY number
---@param posZ number
---@param rotX number
---@param rotY number
---@param rotZ number
---@param scaleX number
---@param scaleY number
---@param scaleZ number
---@return boolean
---@return vector3
function _GetClosestFirePosInVolume(posX, posY, posZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ) end

-- _IS_ENTITY_BEING_DAMAGED_BY_FIRE  (0xA4454592DCF7C992)
-- Returns true if entity is being damaged by fire, once damage caused to entity by fire (like burned appearance) has cleared over time, the native returns false.
-- min build: 1207
---@param entity number
---@return boolean
function _IsEntityBeingDamagedByFire(entity) end

-- _IS_ENTITY_CONSUMED_BY_FIRE  (0xCDC25355C0D65963)
-- min build: 1207
---@param entity number
---@return boolean
function _IsEntityConsumedByFire(entity) end

-- _IS_EXPLOSION_IN_VOLUME  (0xE24822A4CFC9107A)
-- explosionType: see ADD_EXPLOSION
-- min build: 1207
---@param explosionType number
---@param volume number
---@return boolean
function _IsExplosionInVolume(explosionType, volume) end

-- _IS_PED_SHOCKING_EVENT_ACTIVE  (0xAB7993BA61A4674F)
-- Tested with fire & dynamite. Only returns true using value p1 = 1 and when the ped is affected by fire.
-- min build: 1232
---@param ped number
---@param p1 number
---@return boolean
function _IsPedShockingEventActive(ped, p1) end

-- _STOP_FIRE_IN_BOX  (0xB7C7BDC375AEA9A4)
-- min build: 1207
---@param posX number
---@param posY number
---@param posZ number
---@param rotX number
---@param rotY number
---@param rotZ number
---@param scaleX number
---@param scaleY number
---@param scaleZ number
function _StopFireInBox(posX, posY, posZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ) end

-- ADD_EXPLOSION  (0x7D6F58F69DA92530)
-- https://github.com/femga/rdr3_discoveries/tree/master/graphics/explosions
-- 
-- explosionType:
-- enum eExplosionTag
-- {
-- 	EXP_TAG_DONTCARE = -1,
-- 	EXP_TAG_GRENADE,
-- 	EXP_TAG_STICKYBOMB,
-- 	EXP_TAG_MOLOTOV,
-- 	EXP_TAG_MOLOTOV_VOLATILE,
-- 	EXP_TAG_HI_OCTANE,
-- 	EXP_TAG_CAR,
-- 	EXP_TAG_PLANE,
-- 	EXP_TAG_PETROL_PUMP,
-- 	EXP_TAG_DIR_STEAM,
-- 	EXP_TAG_DIR_FLAME,
-- 	EXP_TAG_DIR_WATER_HYDRANT,
-- 	EXP_TAG_BOAT,
-- 	EXP_TAG_BULLET,
-- 	EXP_TAG_SMOKEGRENADE,
-- 	EXP_TAG_BZGAS,
-- 	EXP_TAG_GAS_CANISTER,
-- 	EXP_TAG_EXTINGUISHER,
-- 	EXP_TAG_TRAIN,
-- 	EXP_TAG_DIR_FLAME_EXPLODE,
-- 	EXP_TAG_VEHICLE_BULLET,
-- 	EXP_TAG_BIRD_CRAP,
-- 	EXP_TAG_FIREWORK,
-- 	EXP_TAG_TORPEDO,
-- 	EXP_TAG_TORPEDO_UNDERWATER,
-- 	EXP_TAG_LANTERN,
-- 	EXP_TAG_DYNAMITE,
-- 	EXP_TAG_DYNAMITESTACK,
-- 	EXP_TAG_DYNAMITE_VOLATILE,
-- 	EXP_TAG_RIVER_BLAST,
-- 	EXP_TAG_PLACED_DYNAMITE,
-- 	EXP_TAG_FIRE_ARROW,
-- 	EXP_TAG_DYNAMITE_ARROW,
-- 	EXP_TAG_PHOSPHOROUS_BULLET,
-- 	EXP_TAG_LIGHTNING_STRIKE,
-- 	EXP_TAG_TRACKING_ARROW,
-- 	EXP_TAG_POISON_BOTTLE
-- };
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@param explosionType number
---@param damageScale number
---@param isAudible boolean
---@param isInvisible boolean
---@param cameraShake number
function AddExplosion(x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake) end

-- ADD_EXPLOSION_WITH_USER_VFX  (0x53BA259F3A67A99E)
-- Changes explosionFx (Visual Effect) for specified explosionType
-- explosionType: see ADD_EXPLOSION
-- explosionFx: https://github.com/femga/rdr3_discoveries/blob/master/graphics/explosions/explosion_vfxTags.lua
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@param explosionType number
---@param explosionFx number
---@param damageScale number
---@param isAudible boolean
---@param isInvisible boolean
---@param cameraShake number
function AddExplosionWithUserVfx(x, y, z, explosionType, explosionFx, damageScale, isAudible, isInvisible, cameraShake) end

-- ADD_OWNED_EXPLOSION  (0xD84A917A64D4D016)
-- explosionType: see ADD_EXPLOSION
-- min build: 1207
---@param ped number
---@param x number
---@param y number
---@param z number
---@param explosionType number
---@param damageScale number
---@param isAudible boolean
---@param isInvisible boolean
---@param cameraShake number
function AddOwnedExplosion(ped, x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake) end

-- GET_CLOSEST_FIRE_POS  (0xB646FB657F448261)
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@return boolean
---@return vector3
function GetClosestFirePos(x, y, z) end

-- GET_NUMBER_OF_FIRES_IN_RANGE  (0xF9617BC6FAE61E08)
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@param radius number
---@return number
function GetNumberOfFiresInRange(x, y, z, radius) end

-- GET_OWNER_OF_EXPLOSION_IN_ANGLED_AREA  (0x8002DDAB58594D78)
-- explosionType: see ADD_EXPLOSION
-- min build: 1207
---@param explosionType number
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param radius number
---@return number
function GetOwnerOfExplosionInAngledArea(explosionType, x1, y1, z1, x2, y2, z2, radius) end

-- IS_ENTITY_ON_FIRE  (0x1BD7C371CE257C3E)
-- min build: 1207
---@param entity number
---@return boolean
function IsEntityOnFire(entity) end

-- IS_EXPLOSION_ACTIVE_IN_AREA  (0xD96E82AEBFFAAFF0)
-- explosionType: see ADD_EXPLOSION
-- min build: 1207
---@param explosionType number
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return boolean
function IsExplosionActiveInArea(explosionType, x1, y1, z1, x2, y2, z2) end

-- IS_EXPLOSION_IN_ANGLED_AREA  (0x5AE661ECD18524C9)
-- explosionType: see ADD_EXPLOSION
-- min build: 1207
---@param explosionType number
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param angle number
---@return boolean
function IsExplosionInAngledArea(explosionType, x1, y1, z1, x2, y2, z2, angle) end

-- IS_EXPLOSION_IN_AREA  (0x8391BA4313A25AD3)
-- explosionType: see ADD_EXPLOSION
-- min build: 1207
---@param explosionType number
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return boolean
function IsExplosionInArea(explosionType, x1, y1, z1, x2, y2, z2) end

-- IS_EXPLOSION_IN_SPHERE  (0xD62DD846D82CBB90)
-- explosionType: see ADD_EXPLOSION
-- min build: 1207
---@param explosionType number
---@param x number
---@param y number
---@param z number
---@param radius number
---@return boolean
function IsExplosionInSphere(explosionType, x, y, z, radius) end

-- REMOVE_SCRIPT_FIRE  (0x790125C36E194069)
-- min build: 1207
---@param fireHandle number
function RemoveScriptFire(fireHandle) end

-- START_ENTITY_FIRE  (0xC4DC7418A44D6822)
-- fireFlags: 2 = zone/env fire, 8 = scorched carcass.
-- min build: 1207
---@param entity number
---@param intensity number
---@param boneIndex number
---@param fireFlags number
function StartEntityFire(entity, intensity, boneIndex, fireFlags) end

-- START_SCRIPT_FIRE  (0x6B83617E04503888)
-- Starts a fire:
-- 
-- xyz: Location of fire
-- maxChildren: The max amount of times a fire can spread to other objects. Must be 25 or less, or the function will do nothing.
-- isGasFire: Whether or not the fire is powered by gasoline.
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@param p3 number
---@param p4 number
---@param p5 boolean
---@param soundsetName string
---@param p7 number
---@param p8 number
---@return number
function StartScriptFire(x, y, z, p3, p4, p5, soundsetName, p7, p8) end

-- STOP_ENTITY_FIRE  (0x8390751DC40C1E98)
-- min build: 1207
---@param p0 any
---@param p1 any
function StopEntityFire(p0, p1) end

-- STOP_FIRE_IN_RANGE  (0xDB38F247BD421708)
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@param radius number
function StopFireInRange(x, y, z, radius) end
