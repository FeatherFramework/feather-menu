---@meta

-- RDR3 namespace: ITEMSETS -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _CLEAR_ITEMSET  (0x20A4BF0E09BEE146)
-- min build: 1207
---@param itemset number
function _ClearItemset(itemset) end

-- ADD_TO_ITEMSET  (0xABE74510883C7950)
-- min build: 1207
---@param entity number
---@param itemset number
---@return boolean
function AddToItemset(entity, itemset) end

-- CLEAN_ITEMSET  (0x85F3A86CA9021FB0)
-- min build: 1207
---@param itemset number
function CleanItemset(itemset) end

-- CREATE_ITEMSET  (0xA1AF16083320065A)
-- min build: 1207
---@param p0 boolean
---@return number
function CreateItemset(p0) end

-- DESTROY_ITEMSET  (0x712BC69F10549B92)
-- min build: 1207
---@param itemset number
function DestroyItemset(itemset) end

-- GET_INDEXED_ITEM_IN_ITEMSET  (0x275A2E2C0FAB7612)
-- min build: 1207
---@param index number
---@param itemset number
---@return number
function GetIndexedItemInItemset(index, itemset) end

-- GET_INDEXED_SCENARIO_POINT_INDEX_IN_ITEMSET  (0x9FC3CDB5CE815901)
-- min build: 1207
---@param index number
---@param itemset number
---@return any
function GetIndexedScenarioPointIndexInItemset(index, itemset) end

-- GET_ITEMSET_SIZE  (0x55F2E375AC6018A9)
-- min build: 1207
---@param itemset number
---@return number
function GetItemsetSize(itemset) end

-- IS_IN_ITEMSET  (0xD1503C2EE2FE688C)
-- min build: 1207
---@param entity number
---@param itemset number
---@return boolean
function IsInItemset(entity, itemset) end

-- IS_ITEMSET_VALID  (0xD30765D153EF5C76)
-- min build: 1207
---@param itemset number
---@return boolean
function IsItemsetValid(itemset) end

-- REMOVE_FROM_ITEMSET  (0xC5BAA432B429DC24)
-- min build: 1207
---@param entity number
---@param itemset number
function RemoveFromItemset(entity, itemset) end
