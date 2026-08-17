---@meta

-- RDR3 namespace: DECORATOR -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _DECOR_GET_PLAYER_INDEX  (0xB1682B2443F0540B)
-- min build: 1207
---@param entity number
---@param propertyName string
---@return number
function _DecorGetPlayerIndex(entity, propertyName) end

-- _DECOR_REGISTER_NETWORKED  (0x4587374F88B7F6C2)
-- type: see DECOR_REGISTER
-- min build: 1207
---@param propertyName string
---@param type number
---@param isNetworked boolean
function _DecorRegisterNetworked(propertyName, type, isNetworked) end

-- _DECOR_SET_PLAYER_INDEX  (0x4BDC83150D43772D)
-- min build: 1207
---@param entity number
---@param propertyName string
---@param value number
---@return boolean
function _DecorSetPlayerIndex(entity, propertyName, value) end

-- DECOR_EXIST_ON  (0xD9D1CDBF3464DCDF)
-- Returns whether or not the specified property is set for the entity.
-- min build: 1207
---@param entity number
---@param propertyName string
---@return boolean
function DecorExistOn(entity, propertyName) end

-- DECOR_GET_BOOL  (0xDEF3F1B071ABB197)
-- min build: 1207
---@param entity number
---@param propertyName string
---@return boolean
function DecorGetBool(entity, propertyName) end

-- DECOR_GET_FLOAT  (0xE5FF70CD842CA9D4)
-- min build: 1207
---@param entity number
---@param propertyName string
---@return number
function DecorGetFloat(entity, propertyName) end

-- DECOR_GET_INT  (0x44DB62727762FD9B)
-- min build: 1207
---@param entity number
---@param propertyName string
---@return number
function DecorGetInt(entity, propertyName) end

-- DECOR_IS_REGISTERED_AS_TYPE  (0x72355278C069F272)
-- type: see DECOR_REGISTER
-- min build: 1207
---@param propertyName string
---@param type number
---@return boolean
function DecorIsRegisteredAsType(propertyName, type) end

-- DECOR_REGISTER  (0x0B253D644E3C36B3)
-- type:
-- enum eDecorType
-- {
-- 	DECOR_TYPE_UNKNOWN,
-- 	DECOR_TYPE_FLOAT,
-- 	DECOR_TYPE_BOOL,
-- 	DECOR_TYPE_INT,
-- 	DECOR_TYPE_STRING,
-- 	DECOR_TYPE_TIME,
-- 	DECOR_TYPE_PLAYER_INDEX
-- };
-- min build: 1207
---@param propertyName string
---@param type number
function DecorRegister(propertyName, type) end

-- DECOR_REMOVE  (0x2BA7F5877A088A1D)
-- min build: 1207
---@param entity number
---@param propertyName string
---@return boolean
function DecorRemove(entity, propertyName) end

-- DECOR_REMOVE_ALL  (0x88942780E0ADEA42)
-- min build: 1207
---@param entity number
---@return boolean
function DecorRemoveAll(entity) end

-- DECOR_SET_BOOL  (0xFE26E4609B1C3772)
-- This function sets metadata of type bool to specified entity.
-- min build: 1207
---@param entity number
---@param propertyName string
---@param value boolean
---@return boolean
function DecorSetBool(entity, propertyName, value) end

-- DECOR_SET_FLOAT  (0x238F8B0C1C7FE834)
-- min build: 1207
---@param entity number
---@param propertyName string
---@param value number
---@return boolean
function DecorSetFloat(entity, propertyName, value) end

-- DECOR_SET_INT  (0xE88F4D7F52A6090F)
-- Sets property to int.
-- min build: 1207
---@param entity number
---@param propertyName string
---@param value number
---@return boolean
function DecorSetInt(entity, propertyName, value) end

-- DECOR_SET_STRING  (0x0671C1A3FF7AFDFC)
-- min build: 1207
---@param entity number
---@param propertyName string
---@param value string
---@return boolean
function DecorSetString(entity, propertyName, value) end
