---@meta

-- RDR3 namespace: ITEMDATABASE -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x17721003A66C72BF  (0x17721003A66C72BF)
-- min build: 1207
---@param shopType number
---@param key number
---@return boolean
---@return any
function N_0x17721003A66C72BF(shopType, key) end

-- _0x537A0555F62CA01A  (0x537A0555F62CA01A)
-- min build: 1436
---@param key number
---@param p1 number
---@return boolean
function N_0x537A0555F62CA01A(key, p1) end

-- _0x799FCD53358ED5FA  (0x799FCD53358ED5FA)
-- Returns Item Count
-- min build: 1355
---@param bundle any
---@param p1 any
---@return number
function N_0x799FCD53358ED5FA(bundle, p1) end

-- _0x8870895BA5ED9385  (0x8870895BA5ED9385)
-- min build: 1232
---@param key number
---@param tagType number
---@return number
---@return any
function N_0x8870895BA5ED9385(key, tagType) end

-- _0xC4146375D8A0B374  (0xC4146375D8A0B374)
-- min build: 1355
---@param bundle any
---@param p1 any
---@param index number
---@param p3 any
---@return boolean
function N_0xC4146375D8A0B374(bundle, p1, index, p3) end

-- _ITEMDATABASE_CAN_EQUIP_ITEM_ON_CATEGORY  (0x856FF92C57742AE5)
-- min build: 1207
---@param key number
---@param category number
---@param slotId number
---@return boolean
function _ItemdatabaseCanEquipItemOnCategory(key, category, slotId) end

-- _ITEMDATABASE_CREATE_ITEM_COLLECTION  (0x71EFA7999AE79408)
-- Returns collectionId to be used with 0x8750F69A720C2E41 (p0) and 0xCBB7B6EDFA933ADE (p0)
-- struct ItemCollectionFilter
-- {
-- 	alignas(8) Hash slotId;
-- 	alignas(8) Hash slotId2;
-- 	alignas(8) Hash tag;
-- 	alignas(8) Hash ciCategory;
-- 	alignas(8) Hash cost;
-- 	alignas(8) Hash unk5;
-- 	alignas(8) int  flags;
-- 	alignas(8) Hash itemType;
-- 	alignas(8) Hash ciTag;
-- };
-- min build: 1207
---@param comparisonType number
---@return number
---@return any
---@return number
function _ItemdatabaseCreateItemCollection(comparisonType) end

-- _ITEMDATABASE_DOES_BUNDLE_HAVE_TAG  (0x99C6EA66DFE73757)
-- Params: tag = TAG_ITEM_PROPERTY (tagType(?))
-- min build: 1207
---@param bundle number
---@param tag number
---@param tagType number
---@return boolean
function _ItemdatabaseDoesBundleHaveTag(bundle, tag, tagType) end

-- _ITEMDATABASE_DOES_ITEM_HAVE_TAG  (0xFF5FB5605AD56856)
-- min build: 1207
---@param item number
---@param tag number
---@param tagType number
---@return boolean
function _ItemdatabaseDoesItemHaveTag(item, tag, tagType) end

-- _ITEMDATABASE_FILLOUT_ACQUIRE_COST  (0x74F7928816E4E181)
-- min build: 1207
---@param key number
---@param costtype number
---@return boolean
---@return any
function _ItemdatabaseFilloutAcquireCost(key, costtype) end

-- _ITEMDATABASE_FILLOUT_AWARD_ACQUIRE_COST  (0xF27F01BBF5ACD3F3)
-- min build: 1232
---@param award number
---@param costtype number
---@param index number
---@return boolean
---@return any
function _ItemdatabaseFilloutAwardAcquireCost(award, costtype, index) end

-- _ITEMDATABASE_FILLOUT_AWARD_ITEM_INFO  (0x121D2005DD64496B)
-- min build: 1207
---@param award number
---@param index number
---@return boolean
---@return number
function _ItemdatabaseFilloutAwardItemInfo(award, index) end

-- _ITEMDATABASE_FILLOUT_AWARD_UNLOCK_FLAG  (0x8D029948CA29409B)
-- Fills out unlock-flag data for an award entry.
-- 
-- outData:
-- struct AwardUnlockFlag
-- {
-- 	alignas(8) Hash item;
-- 	alignas(8) int  p1;
-- 	alignas(8) Hash unlockFlag; // e.g. UF_VISIBLE
-- };
-- min build: 1207
---@param award number
---@param index number
---@return boolean
---@return any
function _ItemdatabaseFilloutAwardUnlockFlag(award, index) end

-- _ITEMDATABASE_FILLOUT_BUNDLE  (0xB542632693D53408)
-- min build: 1232
---@param bundle number
---@param costtype number
---@param index number
---@return boolean
---@return any
function _ItemdatabaseFilloutBundle(bundle, costtype, index) end

-- _ITEMDATABASE_FILLOUT_BUNDLE_UI_DATA  (0x74C3B1093728D263)
-- min build: 1207
---@param bundle number
---@return boolean
---@return any
function _ItemdatabaseFilloutBundleUiData(bundle) end

-- _ITEMDATABASE_FILLOUT_BUY_AWARD_ACQUIRE_COSTS  (0xB52E20F6767A09A2)
-- min build: 1207
---@param award number
---@param p3 number
---@return boolean
---@return any
---@return number
function _ItemdatabaseFilloutBuyAwardAcquireCosts(award, p3) end

-- _ITEMDATABASE_FILLOUT_BUY_AWARD_UI_DATA  (0xF8D09EF8CE61D7BF)
-- min build: 1207
---@param award number
---@return boolean
---@return any
function _ItemdatabaseFilloutBuyAwardUiData(award) end

-- _ITEMDATABASE_FILLOUT_ITEM  (0xAD73B614DF26CF8A)
-- min build: 1232
---@param key number
---@param costtype number
---@param index number
---@return boolean
---@return any
function _ItemdatabaseFilloutItem(key, costtype, index) end

-- _ITEMDATABASE_FILLOUT_ITEM_EFFECT_IDS  (0x9379BE60DC55BBE6)
-- min build: 1207
---@param key number
---@return boolean
---@return any
function _ItemdatabaseFilloutItemEffectIds(key) end

-- _ITEMDATABASE_FILLOUT_MODIFIER  (0x60614A0AB580A2B5)
-- min build: 1207
---@param key number
---@param index number
---@return boolean
---@return any
function _ItemdatabaseFilloutModifier(key, index) end

-- _ITEMDATABASE_FILLOUT_PRICE_MODIFIER_BY_KEY  (0x40C5D95818823C94)
-- min build: 1207
---@param key number
---@return boolean
---@return any
function _ItemdatabaseFilloutPriceModifierByKey(key) end

-- _ITEMDATABASE_FILLOUT_SATCHEL_DATA  (0x4776EFD78F75C23F)
-- min build: 1207
---@param key number
---@return boolean
---@return number
function _ItemdatabaseFilloutSatchelData(key) end

-- _ITEMDATABASE_FILLOUT_SELL_PRICE  (0x7A62A2EEDE1C3766)
-- Params: sellType = SELL_SHOP_DEFAULT
-- min build: 1207
---@param key number
---@param sellType number
---@return boolean
---@return any
function _ItemdatabaseFilloutSellPrice(key, sellType) end

-- _ITEMDATABASE_FILLOUT_TAG_DATA  (0x5A11D6EEA17165B0)
-- min build: 1207
---@param key number
---@param p3 number
---@return boolean
---@return any
---@return number
function _ItemdatabaseFilloutTagData(key, p3) end

-- _ITEMDATABASE_FILLOUT_UI_DATA  (0xB86F7CC2DC67AC60)
-- min build: 1207
---@param key number
---@return boolean
---@return any
function _ItemdatabaseFilloutUiData(key) end

-- _ITEMDATABASE_GET_ACQUIRE_COST  (0x6772A83C67A25775)
-- min build: 1207
---@param key number
---@param index number
---@return boolean
---@return any
function _ItemdatabaseGetAcquireCost(key, index) end

-- _ITEMDATABASE_GET_ACQUIRE_COSTS_COUNT  (0x01FDDAD392D04144)
-- Returns the number of <Item>s <acquirecosts> has from the key in catalog_sp.ymt
-- min build: 1207
---@param key number
---@return number
function _ItemdatabaseGetAcquireCostsCount(key) end

-- _ITEMDATABASE_GET_ACQUIRE_COSTS_COUNT_FROM_COST_TYPE  (0xDEE7B3C76ED664BE)
-- min build: 1232
---@param key number
---@param costtype number
---@return number
function _ItemdatabaseGetAcquireCostsCountFromCostType(key, costtype) end

-- _ITEMDATABASE_GET_AWARD_ACQUIRE_COST  (0x1FC25AEB5F76B38D)
-- min build: 1311
---@param award number
---@param index number
---@return boolean
---@return any
function _ItemdatabaseGetAwardAcquireCost(award, index) end

-- _ITEMDATABASE_GET_AWARD_ACQUIRE_COST_COUNT  (0x12DF9C58201DD19A)
-- min build: 1311
---@param key number
---@return number
function _ItemdatabaseGetAwardAcquireCostCount(key) end

-- _ITEMDATABASE_GET_AWARD_ACQUIRE_COST_COUNT_FROM_COST_TYPE  (0xF540239F9937033B)
-- min build: 1232
---@param award number
---@param costtype number
---@return number
function _ItemdatabaseGetAwardAcquireCostCountFromCostType(award, costtype) end

-- _ITEMDATABASE_GET_AWARD_COST_MODIFIERS  (0xE81D0378A384E755)
-- min build: 1232
---@param award number
---@return boolean
---@return any
function _ItemdatabaseGetAwardCostModifiers(award) end

-- _ITEMDATABASE_GET_AWARD_INFO  (0xD076DB9B96FAADF1)
-- min build: 1311
---@param award number
---@return boolean
---@return any
function _ItemdatabaseGetAwardInfo(award) end

-- _ITEMDATABASE_GET_AWARD_ITEM_COUNT  (0x3FAA928A79591761)
-- Returns iAwardItemCount
-- min build: 1207
---@param award number
---@return number
function _ItemdatabaseGetAwardItemCount(award) end

-- _ITEMDATABASE_GET_AWARD_UNLOCK_FLAG_COUNT  (0x48229CE0C7938237)
-- Returns the count of unlock flags for an award.
-- min build: 1207
---@param award number
---@return number
function _ItemdatabaseGetAwardUnlockFlagCount(award) end

-- _ITEMDATABASE_GET_BUNDLE_ACQUIRE_COST  (0x3A0B667ABFF87F6E)
-- Fills out acquire-cost data for a bundle entry.
-- Use index with _ITEMDATABASE_GET_BUNDLE_ACQUIRE_COSTS_COUNT.
-- 
-- outData:
-- struct AcquireCost
-- {
-- 	alignas(8) Hash cost;
-- 	alignas(8) Any  p1;
-- 	alignas(8) Hash costType;
-- 	alignas(8) int  numCosts;
-- 	alignas(8) int  p4;
-- 	alignas(8) Any* costs; // array of Cost entries
-- };
-- 
-- struct Cost
-- {
-- 	alignas(8) Hash currency;
-- 	alignas(8) int  amount;
-- };
-- min build: 1207
---@param bundle number
---@param index number
---@return boolean
---@return any
function _ItemdatabaseGetBundleAcquireCost(bundle, index) end

-- _ITEMDATABASE_GET_BUNDLE_ACQUIRE_COST_MODIFIERS  (0xA97EE5E4589FCF5A)
-- min build: 1207
---@param bundle number
---@return boolean
---@return any
function _ItemdatabaseGetBundleAcquireCostModifiers(bundle) end

-- _ITEMDATABASE_GET_BUNDLE_ACQUIRE_COSTS_COUNT  (0x7A35A72A692BE9DB)
-- Returns the count of acquire costs in a bundle.
-- min build: 1207
---@param bundle number
---@return number
function _ItemdatabaseGetBundleAcquireCostsCount(bundle) end

-- _ITEMDATABASE_GET_BUNDLE_ACQUIRE_COSTS_COUNT_FROM_COST  (0x388088BFF3681189)
-- Returns the number of currencies/cost entries available for a bundle and cost hash.
-- Use with _ITEMDATABASE_FILLOUT_BUNDLE; research notes that several docs call this parameter costtype, but scripts indicate it is the actual cost hash such as COST_GOLD or COST_CRAFTING_MP.
-- min build: 1232
---@param bundle number
---@param cost number
---@return number
function _ItemdatabaseGetBundleAcquireCostsCountFromCost(bundle, cost) end

-- _ITEMDATABASE_GET_BUNDLE_ID  (0x891A45960B6B768A)
-- min build: 1207
---@param bundle number
---@return number
function _ItemdatabaseGetBundleId(bundle) end

-- _ITEMDATABASE_GET_BUNDLE_ITEM_COUNT  (0x3332695B01015DF9)
-- min build: 1207
---@param bundleId number
---@return number
---@return any
function _ItemdatabaseGetBundleItemCount(bundleId) end

-- _ITEMDATABASE_GET_BUNDLE_ITEM_INFO  (0x5D48A77E4B668B57)
-- Outputs bundle item info.
-- struct BundleItemInfo
-- {
-- 	alignas(8) Hash item;
-- 	alignas(8) Hash slotId;
-- 	alignas(8) int  unk2;
-- 	alignas(8) int  unk3;
-- };
-- min build: 1207
---@param bundleId number
---@param index number
---@return boolean
---@return any
---@return number
function _ItemdatabaseGetBundleItemInfo(bundleId, index) end

-- _ITEMDATABASE_GET_CATALOG_ITEM_CATEGORY_PATHSET  (0xAA29A5F13B2C20B2)
-- Returns the pathset hash for the selected catalog item category, such as CI_CATEGORY_AMMO or CI_CATEGORY_CAMP_TENT.
-- p1 is observed as DEFAULT in Rockstar scripts.
-- min build: 1232
---@param catalogItemCategory number
---@param p1 number
---@return number
function _ItemdatabaseGetCatalogItemCategoryPathset(catalogItemCategory, p1) end

-- _ITEMDATABASE_GET_COLLECTION_SIZE  (0xD389A2549C4EFB30)
-- Returns (collection?) size/index (?)
-- _ITEMDATABASE_GET_(A)* - _ITEMDATABASE_GET_(B)*
-- min build: 1207
---@param collectionId number
---@return number
function _ItemdatabaseGetCollectionSize(collectionId) end

-- _ITEMDATABASE_GET_COMPONENT_ITEM  (0x8750F69A720C2E41)
-- Params: p2 can be a component item hash
-- min build: 1207
---@param collectionId number
---@param index number
---@return boolean
---@return number
function _ItemdatabaseGetComponentItem(collectionId, index) end

-- _ITEMDATABASE_GET_FITS_SLOT_COUNT  (0x2970D1D6BFCF9B46)
-- min build: 1207
---@param category number
---@return number
function _ItemdatabaseGetFitsSlotCount(category) end

-- _ITEMDATABASE_GET_FITS_SLOT_INFO  (0x77210C146CED5261)
-- min build: 1207
---@param category number
---@param index number
---@return boolean
---@return number
function _ItemdatabaseGetFitsSlotInfo(category, index) end

-- _ITEMDATABASE_GET_HAS_SLOT_COUNT  (0x44915068579D7710)
-- min build: 1207
---@param category number
---@return number
function _ItemdatabaseGetHasSlotCount(category) end

-- _ITEMDATABASE_GET_HAS_SLOT_INFO  (0x8A9BD0DB7E8376CF)
-- min build: 1207
---@param category number
---@param index number
---@return boolean
---@return number
function _ItemdatabaseGetHasSlotInfo(category, index) end

-- _ITEMDATABASE_GET_ITEM_PATHSET  (0xF4452CE83118C738)
-- min build: 1207
---@param key number
---@param defaultPathset number
---@return number
function _ItemdatabaseGetItemPathset(key, defaultPathset) end

-- _ITEMDATABASE_GET_ITEM_PRICE_MODIFIERS  (0x4EB37AAB79AB0C48)
-- min build: 1207
---@param key number
---@return boolean
---@return any
function _ItemdatabaseGetItemPriceModifiers(key) end

-- _ITEMDATABASE_GET_ITEM_TAG_TYPE  (0x6111B8F9413F413A)
-- min build: 1207
---@param item number
---@param tag number
---@return number
function _ItemdatabaseGetItemTagType(item, tag) end

-- _ITEMDATABASE_GET_MODIFIED_PRICE  (0xCB92EC9C004732B4)
-- Returns an alternative cost hash to COST_SHOP_DEFAULT
-- min build: 1207
---@param key number
---@param index number
---@return number
function _ItemdatabaseGetModifiedPrice(key, index) end

-- _ITEMDATABASE_GET_NUMBER_OF_MODIFIED_PRICES  (0x5AAAF40E9B224F5E)
-- min build: 1207
---@param key number
---@return number
function _ItemdatabaseGetNumberOfModifiedPrices(key) end

-- _ITEMDATABASE_GET_NUMBER_OF_MODIFIERS  (0x1289D8315235856D)
-- min build: 1207
---@param key number
---@return number
function _ItemdatabaseGetNumberOfModifiers(key) end

-- _ITEMDATABASE_GET_PRIORITY_ACCESS_AWARD  (0xEF254F1A4C08B7E6)
-- _ITEMDATABASE_GET_* - _ITEMDATABASE_IS_*
-- min build: 1207
---@param award number
---@return boolean
function _ItemdatabaseGetPriorityAccessAward(award) end

-- _ITEMDATABASE_GET_SHOP_INVENTORIES_ITEM_INFO  (0x4A79B41B4EB91F4E)
-- min build: 1207
---@param shopType number
---@param index number
---@return boolean
---@return any
function _ItemdatabaseGetShopInventoriesItemInfo(shopType, index) end

-- _ITEMDATABASE_GET_SHOP_INVENTORIES_ITEM_INFO_BY_KEY  (0xCFB06801F5099B25)
-- Same Native Function as 0x17721003A66C72BF
-- min build: 1207
---@param shopType number
---@param key number
---@return boolean
---@return any
function _ItemdatabaseGetShopInventoriesItemInfoByKey(shopType, key) end

-- _ITEMDATABASE_GET_SHOP_INVENTORIES_ITEMS_COUNT  (0xC568B1A0F17C7025)
-- min build: 1207
---@param shopType number
---@return number
function _ItemdatabaseGetShopInventoriesItemsCount(shopType) end

-- _ITEMDATABASE_GET_SHOP_INVENTORIES_REQUIREMENT_GROUP_INFO  (0x76C752D788A76813)
-- min build: 1207
---@param shopType number
---@param key number
---@param index number
---@return boolean
---@return any
function _ItemdatabaseGetShopInventoriesRequirementGroupInfo(shopType, key, index) end

-- _ITEMDATABASE_GET_SHOP_INVENTORIES_REQUIREMENT_INFO  (0xE0EA5C031AE5539F)
-- min build: 1207
---@param shopType number
---@param key number
---@param groupIndex number
---@param index number
---@return boolean
---@return any
function _ItemdatabaseGetShopInventoriesRequirementInfo(shopType, key, groupIndex, index) end

-- _ITEMDATABASE_GET_SHOP_LAYOUT_INFO  (0x66A6D76B6BB999B4)
-- min build: 1207
---@param layout number
---@return boolean
---@return any
function _ItemdatabaseGetShopLayoutInfo(layout) end

-- _ITEMDATABASE_GET_SHOP_LAYOUT_MENU_INFO_BY_ID  (0xD66114469978B55B)
-- min build: 1207
---@param layout number
---@param menu number
---@return boolean
---@return any
function _ItemdatabaseGetShopLayoutMenuInfoById(layout, menu) end

-- _ITEMDATABASE_GET_SHOP_LAYOUT_MENU_INFO_BY_INDEX  (0xF04247092F193B75)
-- min build: 1207
---@param layout number
---@param menu number
---@param index number
---@return boolean
---@return any
function _ItemdatabaseGetShopLayoutMenuInfoByIndex(layout, menu, index) end

-- _ITEMDATABASE_GET_SHOP_LAYOUT_MENU_PAGE_KEY  (0x9A60570657A7B635)
-- min build: 1207
---@param layout number
---@param menu number
---@param index number
---@return boolean
---@return number
function _ItemdatabaseGetShopLayoutMenuPageKey(layout, menu, index) end

-- _ITEMDATABASE_GET_SHOP_LAYOUT_PAGE_INFO_BY_INDEX  (0xDBEADA0DF5F9AB9F)
-- Outputs the layout page info at the selected index.
-- struct LayoutPageInfo
-- {
-- 	alignas(8) Hash pageKey;
-- 	alignas(8) Hash unk1;
-- 	alignas(8) BOOL unk2;
-- 	alignas(8) int  numItems;
-- };
-- min build: 1355
---@param layout number
---@param index number
---@return boolean
---@return any
function _ItemdatabaseGetShopLayoutPageInfoByIndex(layout, index) end

-- _ITEMDATABASE_GET_SHOP_LAYOUT_PAGE_INFO_BY_KEY  (0xB347C100DF0C9B7F)
-- min build: 1207
---@param layout number
---@param pageKey number
---@return boolean
---@return any
function _ItemdatabaseGetShopLayoutPageInfoByKey(layout, pageKey) end

-- _ITEMDATABASE_GET_SHOP_LAYOUT_PAGE_ITEM_KEY  (0xF32BEF578B3DBAE8)
-- min build: 1207
---@param layout number
---@param pageKey number
---@param index number
---@return boolean
---@return number
---@return number
---@return number
function _ItemdatabaseGetShopLayoutPageItemKey(layout, pageKey, index) end

-- _ITEMDATABASE_GET_SHOP_LAYOUT_ROOT_MENU_INFO  (0x86FCB565CCA0CFA7)
-- min build: 1207
---@param layout number
---@param index number
---@return boolean
---@return any
function _ItemdatabaseGetShopLayoutRootMenuInfo(layout, index) end

-- _ITEMDATABASE_IS_BUNDLE_VALID  (0x4308812A6E9CA62E)
-- Params: mode is 0
-- min build: 1207
---@param bundle number
---@param mode number
---@return boolean
function _ItemdatabaseIsBundleValid(bundle, mode) end

-- _ITEMDATABASE_IS_INTRINSIC_ITEM  (0x337F88E3A063995E)
-- min build: 1207
---@param key number
---@return boolean
function _ItemdatabaseIsIntrinsicItem(key) end

-- _ITEMDATABASE_IS_KEY_VALID  (0x6D5D51B188333FD1)
-- Params: mode is 0
-- min build: 1207
---@param key number
---@param mode number
---@return boolean
function _ItemdatabaseIsKeyValid(key, mode) end

-- _ITEMDATABASE_IS_OVERPOWERED_ITEM  (0x337F88E3A063995F)
-- min build: 1207
---@param key number
---@return boolean
function _ItemdatabaseIsOverpoweredItem(key) end

-- _ITEMDATABASE_IS_SHOP_KEY_VALID  (0x00B9507D8E1D8716)
-- min build: 1207
---@param shopType number
---@return boolean
function _ItemdatabaseIsShopKeyValid(shopType) end

-- _ITEMDATABASE_IS_SHOP_LAYOUT_KEY_VALID  (0x3AFE5182C45A84F6)
-- min build: 1207
---@param layout number
---@return boolean
function _ItemdatabaseIsShopLayoutKeyValid(layout) end

-- _ITEMDATABASE_LOCALIZATION_GET_NUM_LABEL_TYPES  (0xCEC6A41E8910486A)
-- Returns docData.iNumTotalLabelTypes
-- min build: 1207
---@param p0 any
---@return number
function _ItemdatabaseLocalizationGetNumLabelTypes(p0) end

-- _ITEMDATABASE_LOCALIZATION_GET_NUM_VALUES  (0x49885D82A13EEAEA)
-- Returns iNumValuesForType
-- min build: 1207
---@param p0 any
---@param p1 any
---@return number
function _ItemdatabaseLocalizationGetNumValues(p0, p1) end

-- _ITEMDATABASE_LOCALIZATION_GET_TYPE  (0xCABF5D41D0073D4A)
-- Returns LabelType
-- min build: 1207
---@param p0 any
---@param p1 any
---@return any
function _ItemdatabaseLocalizationGetType(p0, p1) end

-- _ITEMDATABASE_LOCALIZATION_GET_VALUE  (0x9AE5610FDCED6EA7)
-- min build: 1207
---@param p0 any
---@param label number
---@param p2 any
---@return number
function _ItemdatabaseLocalizationGetValue(p0, label, p2) end

-- _ITEMDATABASE_RELEASE_ITEM_COLLECTION  (0xCBB7B6EDFA933ADE)
-- min build: 1207
---@param collectionId number
---@return boolean
function _ItemdatabaseReleaseItemCollection(collectionId) end

-- ITEMDATABASE_FILLOUT_ITEM_BY_NAME  (0x2A610BEE7D341CC4)
-- min build: 1207
---@param key number
---@return boolean
---@return any
function ItemdatabaseFilloutItemByName(key) end

-- ITEMDATABASE_FILLOUT_ITEM_EFFECT_ID_INFO  (0xCF2D360D27FD1ABF)
-- min build: 1207
---@param key number
---@return boolean
---@return any
function ItemdatabaseFilloutItemEffectIdInfo(key) end

-- ITEMDATABASE_FILLOUT_ITEM_INFO  (0xFE90ABBCBFDC13B2)
-- Outputs item infos.
-- struct ItemInfo
-- {
-- 	alignas(8) Hash category;
-- 	alignas(8) Hash itemType;
-- 	alignas(8) Hash unk2;
-- 	alignas(8) Hash model;
-- 	alignas(8) Hash award;
-- };
-- min build: 1207
---@param key number
---@return boolean
---@return any
function ItemdatabaseFilloutItemInfo(key) end

-- ITEMDATABASE_IS_BUYABLE_AWARD_VALID  (0x4CE753203FA42214)
-- min build: 1207
---@param award number
---@return boolean
function ItemdatabaseIsBuyableAwardValid(award) end
