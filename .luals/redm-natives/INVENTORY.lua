---@meta

-- RDR3 namespace: INVENTORY -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x0349404A22736740  (0x0349404A22736740)
-- Params: p0 is only 0 or 1
-- Only used in R* SP Scripts
-- min build: 1207
---@param p0 boolean
---@param inventoryId number
---@return any
function N_0x0349404A22736740(p0, inventoryId) end

-- _0x46DB71883EE9D5AF  (0x46DB71883EE9D5AF)
-- Returns databindingEntryId to be used with 0x951847CEF3D829FF (p0)
-- min build: 1207
---@param data any
---@param stats string
---@param ped number
---@return number
---@return any
function N_0x46DB71883EE9D5AF(data, stats, ped) end

-- _0x6862E4D93F64CF01  (0x6862E4D93F64CF01)
-- Only used in R* SP Scripts
-- min build: 1207
---@param inventoryId number
---@param p2 number
---@return boolean
---@return any
---@return any
function N_0x6862E4D93F64CF01(inventoryId, p2) end

-- _0x6968CE7AC32F6788  (0x6968CE7AC32F6788)
-- Only used in R* SP Scripts
-- min build: 1207
---@param inventoryId number
function N_0x6968CE7AC32F6788(inventoryId) end

-- _0x75CFAC49301E134F  (0x75CFAC49301E134F)
-- p0: value returned by 0x9D21B185ABC2DBC4
-- p1, p2: false
-- min build: 1207
---@param databindingEntryId number
---@param p1 boolean
---@param p2 boolean
function N_0x75CFAC49301E134F(databindingEntryId, p1, p2) end

-- _0x951847CEF3D829FF  (0x951847CEF3D829FF)
-- p0: value returned by 0x46DB71883EE9D5AF
-- min build: 1207
---@param p0 any
---@param ped number
---@return any
function N_0x951847CEF3D829FF(p0, ped) end

-- _0x9B4E793B1CB6550A  (0x9B4E793B1CB6550A)
-- Used in function SET_SHOP_BEING_ROBBED and many other shop related scripts and functions.
-- INVENTORY_A*
-- min build: 1207
function N_0x9B4E793B1CB6550A() end

-- _0x9E58207B194488AC  (0x9E58207B194488AC)
-- min build: 1207
---@param ped number
---@param p1 number
function N_0x9E58207B194488AC(ped, p1) end

-- _0xB1DD74A1F5536622  (0xB1DD74A1F5536622)
-- min build: 1311
---@param inventoryId number
---@return boolean
---@return any
function N_0xB1DD74A1F5536622(inventoryId) end

-- _0xD08685BA892DBFAB  (0xD08685BA892DBFAB)
-- Params: p3 returns an int between 0 and 20 (?)
-- Only used in R* SP Scripts
-- min build: 1207
---@param inventoryId number
---@return boolean
---@return any
---@return number
---@return number
function N_0xD08685BA892DBFAB(inventoryId) end

-- _0xE1F45A67A9F0DCBC  (0xE1F45A67A9F0DCBC)
-- Only used in R* SP Scripts
-- min build: 1207
---@param inventoryId number
function N_0xE1F45A67A9F0DCBC(inventoryId) end

-- _GET_DEFAULT_ITEM_SLOT_INFO  (0x6452B1D357D81742)
-- p1: WARDROBE, KIT_CAMP, CHARACTER, KIT_MOONSHINER_PROPERTY
-- Returns slot hash
-- min build: 1207
---@param item number
---@param p1 number
---@return number
function _GetDefaultItemSlotInfo(item, p1) end

-- _GET_ITEM_ROLE_MAX_LEVEL_COUNT  (0xADDD1E7C0ECF7D95)
-- min build: 1207
---@param inventoryId number
---@param eRoleMaxLevel number
---@return number
function _GetItemRoleMaxLevelCount(inventoryId, eRoleMaxLevel) end

-- _GET_ITEM_SLOT_MAX_COUNT  (0xE80E50BEE276A54A)
-- min build: 1207
---@param provision number
---@param slotId number
---@return number
function _GetItemSlotMaxCount(provision, slotId) end

-- _INVENTORY_ADD_ITEM_WITH_GUID  (0xCB5D11F9508A928D)
-- inventoryItemSlotHash: https://pastebin.com/P6fyr3vr
-- min build: 1207
---@param inventoryId number
---@param item number
---@param inventoryItemSlot number
---@param p5 number
---@param addReason number
---@return boolean
---@return any
---@return any
function _InventoryAddItemWithGuid(inventoryId, item, inventoryItemSlot, p5, addReason) end

-- _INVENTORY_APPLY_WEAPON_STATS_TO_ENTRY  (0x75CFAC49301E134E)
-- Applies weapon stats to the 'CatalogItemInspection' stats entry id.
-- p0: value returned by 0x9D21B185ABC2DBC5
-- _INVENTORY_GET*
-- min build: 1207
---@param databindingEntryId number
---@param p1 boolean
---@param ped number
function _InventoryApplyWeaponStatsToEntry(databindingEntryId, p1, ped) end

-- _INVENTORY_ARE_LOCAL_CHANGES_ALLOWED  (0x0FBBFFC891A97C81)
-- inventoryId: see _INVENTORY_GET_PED_INVENTORY_ID
-- min build: 1207
---@param inventoryId number
---@return boolean
function _InventoryAreLocalChangesAllowed(inventoryId) end

-- _INVENTORY_COMPARE_GUIDS  (0x4C543D5DFCD2DAFD)
-- min build: 1207
---@return boolean
---@return any
---@return any
function _InventoryCompareGuids() end

-- _INVENTORY_COPY_ITEM_TO_INVENTORY  (0xC04F47D488EF9EBA)
-- min build: 1207
---@param inventoryId number
---@param inventoryIdCloned number
---@param p3 any
---@return any
function _InventoryCopyItemToInventory(inventoryId, inventoryIdCloned, p3) end

-- _INVENTORY_COPY_ITEM_TO_MISSION_INVENTORY  (0x3112ADB9D5F3426B)
-- min build: 1207
---@param p1 boolean
---@return any
function _InventoryCopyItemToMissionInventory(p1) end

-- _INVENTORY_CREATE_CATALOG_ITEM_INSPECTION_EFFECTS_ENTRY  (0x9D21B185ABC2DBC4)
-- data: return value of DATABINDING::_DATABINDING_ADD_DATA_CONTAINER(..., 'CatalogItemInspection');
-- name: effects
-- p2, p3: false
-- 
-- Returns databindingEntryId of 'CatalogItemInspection' container to be used with 0x75CFAC49301E134F (p0)
-- min build: 1207
---@param data number
---@param name string
---@param p2 boolean
---@param p3 boolean
---@return number
function _InventoryCreateCatalogItemInspectionEffectsEntry(data, name, p2, p3) end

-- _INVENTORY_CREATE_CATALOG_ITEM_INSPECTION_STATS_ENTRY  (0x9D21B185ABC2DBC5)
-- data: return value of DATABINDING::_DATABINDING_ADD_DATA_CONTAINER(..., 'CatalogItemInspection');
-- name: stats, compareStats
-- p2: 0
-- p3: -1
-- 
-- Returns databindingEntryId of 'CatalogItemInspection' container to be used with 0x75CFAC49301E134E (p0)
-- min build: 1207
---@param data number
---@param name string
---@param p2 number
---@param p3 number
---@return number
function _InventoryCreateCatalogItemInspectionStatsEntry(data, name, p2, p3) end

-- _INVENTORY_CREATE_ITEM_COLLECTION  (0x80D78BDC9D88EF07)
-- filterName (collections): "ALL", "ALL SATCHEL", "ALL HORSES", "ALL COACHES", "ALL MOUNTS", "ALL CLOTHING", "ALL WEAPONS", "ALL SATCHEL EXCLUDING CLOTHING", "ALL EXCLUDING CLOTHING"
-- slotId: -1591664384
-- p3: outCollectionSize (?)
-- Returns collectionId
-- min build: 1207
---@param inventoryId number
---@param filterName string
---@param slotId number
---@return number
---@return number
function _InventoryCreateItemCollection(inventoryId, filterName, slotId) end

-- _INVENTORY_CREATE_ITEM_COLLECTION_2  (0x97A3646645727F42)
-- Returns collectionId
-- min build: 1232
---@return number
---@return number
function _InventoryCreateItemCollection2() end

-- _INVENTORY_CREATE_ITEM_COLLECTION_WITH_FILTER  (0x640F890C3E5A3FFD)
-- min build: 1207
---@param inventoryId number
---@return number
---@return any
---@return number
function _InventoryCreateItemCollectionWithFilter(inventoryId) end

-- _INVENTORY_CREATE_SORTED_COLLECTION  (0xBB7F968675B34B0C)
-- p1: 32
-- Returns collectionId
-- min build: 1311
---@param inventoryId number
---@param p1 number
---@return number
---@return number
function _InventoryCreateSortedCollection(inventoryId, p1) end

-- _INVENTORY_DISABLE_ITEM  (0x766315A564594401)
-- Example: (1, WEAPON_REVOLVER_CATTLEMAN, 0) - disables cattleman revolver on weapon wheel
-- min build: 1207
---@param inventoryId number
---@param item number
---@param gtxReason number
function _InventoryDisableItem(inventoryId, item, gtxReason) end

-- _INVENTORY_DISABLE_WEAPONS  (0xE3A46370F70F3607)
-- Params: p1 = 0
-- min build: 1207
---@param inventoryId number
---@param p1 any
function _InventoryDisableWeapons(inventoryId, p1) end

-- _INVENTORY_DOES_ITEM_OWN_EQUIPMENT  (0x88B58B83A43A8CAB)
-- min build: 1207
---@param inventoryId number
---@param item number
---@return boolean
---@return any
function _InventoryDoesItemOwnEquipment(inventoryId, item) end

-- _INVENTORY_ENABLE_ITEM  (0x6A564540FAC12211)
-- min build: 1207
---@param inventoryId number
---@param item number
function _InventoryEnableItem(inventoryId, item) end

-- _INVENTORY_ENABLE_WEAPONS  (0xD5D72F1624F3BA7C)
-- min build: 1207
---@param inventoryId number
function _InventoryEnableWeapons(inventoryId) end

-- _INVENTORY_EQUIP_ITEM_WITH_GUID  (0x734311E2852760D0)
-- min build: 1207
---@param inventoryId number
---@param bEquipped boolean
---@return boolean
---@return any
function _InventoryEquipItemWithGuid(inventoryId, bEquipped) end

-- _INVENTORY_FITS_SLOT_ID  (0x780C5B9AE2819807)
-- min build: 1207
---@param item number
---@param slotId number
---@return boolean
function _InventoryFitsSlotId(item, slotId) end

-- _INVENTORY_GET_CHILDREN_COUNT  (0xE843D21A8E2498AA)
-- min build: 1207
---@param inventoryId number
---@return number
---@return any
function _InventoryGetChildrenCount(inventoryId) end

-- _INVENTORY_GET_FULL_INVENTORY_ITEM_DATA  (0x025A1B1FB03FBF61)
-- min build: 1207
---@param inventoryId number
---@param p3 number
---@param p4 number
---@return boolean
---@return any
---@return any
function _InventoryGetFullInventoryItemData(inventoryId, p3, p4) end

-- _INVENTORY_GET_INVENTORY_ID_FROM_PED  (0x13D234A2A3F66E63)
-- Returns a unique inventory ID for this ped.
-- For the local player ped, it is an eInventories value.
-- For other peds, it is the inventory address casted to unsigned int.
-- 
-- enum eInventories
-- {
-- 	INVENTORY_INVALID,
-- 	INVENTORY_SP_PLAYER,
-- 	INVENTORY_MP_PLAYER,
-- 	INVENTORY_MP_MISSION,
-- 	INVENTORY_SECOND_SCREEN,
-- 	INVENTORY_SP_BACKUP,
-- 	INVENTORY_SP_SNAPSHOT,
-- 	INVENTORY_0xDE2AE452,
-- 	INVENTORY_0x399D9B3A,
-- 	INVENTORY_0x4BD43FA7,
-- 	INVENTORY_0x9529D251,
-- 	INVENTORY_0xA75776AC,
-- 	INVENTORY_MAX_ID = 11,
-- 	INVENTORY_IDS_COUNT
-- };
-- min build: 1207
---@param ped number
---@return number
function _InventoryGetInventoryIdFromPed(ped) end

-- _INVENTORY_GET_INVENTORY_ITEM_CHILD  (0xCD9A485F2B383B44)
-- min build: 1207
---@param inventoryId number
---@param childIndex any
---@return boolean
---@return any
---@return any
function _InventoryGetInventoryItemChild(inventoryId, childIndex) end

-- _INVENTORY_GET_INVENTORY_ITEM_COMPATIBLE_SLOTS  (0x9AC53CB6907B4428)
-- Writes up to maxResults compatible SLOTID_* hashes for item into outSlotIds (int32 array; unused entries are 0). Commonly used to gather valid equip slots for component/decoration items. Returns true on success.
-- Example (C++):
-- 	Hash item = joaat("horse_equipment_western_04_stock_new_saddle_005");
-- 	int out[30] = {};
-- 	if (INVENTORY::_INVENTORY_GET_INVENTORY_ITEM_COMPATIBLE_SLOTS(item, out, 30)) {
-- 		for (int i = 0; i < 30 && out[i] != 0; ++i) {
-- 			printf("slot[%d] = 0x%08X\n", i + 1, (unsigned)out[i]);
-- 		}
-- 	}
-- Typical result for the sample item includes: SLOTID_HORSE_SADDLEBAG, SLOTID_HORSE_BEDROLL, SLOTID_HORSE_HORN, SLOTID_HORSE_STIRRUP, SLOTID_HORSE_BLANKET, SLOTID_HORSE_REINS, SLOTID_HORSE_SEAT, SLOTID_HORSE_FENDER, SLOTID_HORSE_SKIRT, SLOTID_HORSE_CANTLE, SLOTID_HORSE_LANTERN, SLOTID_HORSE_MASK. Note (FiveM DataView): read each int at an 8-byte stride (i*8).
-- min build: 1207
---@param item number
---@param maxResults number
---@return boolean
---@return number
function _InventoryGetInventoryItemCompatibleSlots(item, maxResults) end

-- _INVENTORY_GET_INVENTORY_ITEM_COUNT_WITH_GUID  (0xC97E0D2302382211)
-- min build: 1207
---@param inventoryId number
---@param p2 boolean
---@return number
---@return any
function _InventoryGetInventoryItemCountWithGuid(inventoryId, p2) end

-- _INVENTORY_GET_INVENTORY_ITEM_COUNT_WITH_ITEMID  (0xE787F05DFC977BDE)
-- min build: 1207
---@param inventoryId number
---@param eInventoryItem number
---@param p2 boolean
---@return number
function _InventoryGetInventoryItemCountWithItemid(inventoryId, eInventoryItem, p2) end

-- _INVENTORY_GET_INVENTORY_ITEM_DESCRIPTION_HASH  (0xA4550FE9C512E3DD)
-- min build: 1207
---@param item number
---@return number
function _InventoryGetInventoryItemDescriptionHash(item) end

-- _INVENTORY_GET_INVENTORY_ITEM_EQUIPPED_IN_SLOT  (0xBE012571B25F5ACA)
-- min build: 1207
---@param inventoryId number
---@param slotId number
---@param p3 number
---@return number
---@return any
---@return any
function _InventoryGetInventoryItemEquippedInSlot(inventoryId, slotId, p3) end

-- _INVENTORY_GET_INVENTORY_ITEM_EQUIPPED_IN_SLOT_BY_REF  (0x22E590F108289A9D)
-- min build: 1207
---@param inventoryId number
---@param slotId number
---@return boolean
---@return any
---@return any
function _InventoryGetInventoryItemEquippedInSlotByRef(inventoryId, slotId) end

-- _INVENTORY_GET_INVENTORY_ITEM_FIT_SLOT  (0xB991FE166FAF84FD)
-- min build: 1207
---@param p0 number
---@param p2 number
---@return boolean
---@return any
function _InventoryGetInventoryItemFitSlot(p0, p2) end

-- _INVENTORY_GET_INVENTORY_ITEM_HIDDEN  (0xF9933164965533B7)
-- min build: 1207
---@param inventoryId number
---@return boolean
---@return any
function _InventoryGetInventoryItemHidden(inventoryId) end

-- _INVENTORY_GET_INVENTORY_ITEM_IN_USE  (0x70E3A884ED000A01)
-- min build: 1311
---@param inventoryId number
---@return boolean
---@return any
function _InventoryGetInventoryItemInUse(inventoryId) end

-- _INVENTORY_GET_INVENTORY_ITEM_INSPECTION_INFO  (0x0C093C1787F18519)
-- min build: 1207
---@param item number
---@return boolean
---@return any
function _InventoryGetInventoryItemInspectionInfo(item) end

-- _INVENTORY_GET_INVENTORY_ITEM_IS_ANIMAL_PELT  (0x4AEF1FB5B9011D75)
-- min build: 1207
---@param item number
---@return boolean
function _InventoryGetInventoryItemIsAnimalPelt(item) end

-- _INVENTORY_GET_INVENTORY_ITEM_LAST_CREATION  (0x112BCA290D2EB53C)
-- Outputs the last creation date of the item for the selected inventory. Returns true if successful, false otherwise.
-- min build: 1207
---@param inventoryId number
---@param item number
---@return boolean
---@return number
---@return number
---@return number
---@return number
---@return number
---@return number
function _InventoryGetInventoryItemLastCreation(inventoryId, item) end

-- _INVENTORY_GET_INVENTORY_ITEM_SOUND  (0x2E1CDC1FF3B8473E)
-- soundType: see 0x2BAE4880DCDD560B
-- Returns item Hash to be used with _IS_SCRIPTED_AUDIO_CUSTOM and _PLAY_SOUND_FROM_ITEM (p0)
-- min build: 1207
---@param item number
---@param soundType number
---@return number
function _InventoryGetInventoryItemSound(item, soundType) end

-- _INVENTORY_GET_INVENTORY_ITEM_WEAPON_COPY_ID  (0xAB5F12746A099A0E)
-- Returns CopyID
-- min build: 1207
---@param inventoryId number
---@return number
---@return any
function _InventoryGetInventoryItemWeaponCopyId(inventoryId) end

-- _INVENTORY_GET_IS_INVENTORY_ITEM_SOUND_VALID  (0x2BAE4880DCDD560B)
-- soundType: https://github.com/Halen84/RDR3-Native-Flags-And-Enums/tree/main/CItemInfoSoundsInterface__sSoundsInfo__eSoundType
-- min build: 1207
---@param item number
---@param soundType number
---@return boolean
function _InventoryGetIsInventoryItemSoundValid(item, soundType) end

-- _INVENTORY_GET_ITEM_EXPIRY_TIME  (0x4A606C17276E1BCC)
-- min build: 1232
---@return number
---@return any
function _InventoryGetItemExpiryTime() end

-- _INVENTORY_GET_ITEM_FROM_COLLECTION_INDEX  (0x82FA24C3D3FCD9B7)
-- collectionId is < outCollectionSize
-- min build: 1207
---@param collectionId number
---@param itemIndex number
---@return boolean
---@return any
function _InventoryGetItemFromCollectionIndex(collectionId, itemIndex) end

-- _INVENTORY_IS_GUID_VALID  (0xB881CA836CC4B6D4)
-- min build: 1207
---@return boolean
---@return any
function _InventoryIsGuidValid() end

-- _INVENTORY_IS_INVENTORY_ITEM_EQUIPPED  (0x3D10D7179D7034AF)
-- Alternative Name: _INVENTORY_IS_ITEM_DISABLED
-- min build: 1207
---@param inventoryId number
---@param item number
---@param p2 boolean
---@return boolean
function _InventoryIsInventoryItemEquipped(inventoryId, item, p2) end

-- _INVENTORY_IS_INVENTORY_ITEM_FLAG_ENABLED  (0x245D07651B1D183B)
-- flag: https://github.com/Halen84/RDR3-Native-Flags-And-Enums/tree/main/ItemDatabaseItemFlags
-- 2097152 (is item read?), 8388608 (is item sent/received/mailable?), 16777216 (is item consumable?)
-- min build: 1207
---@param item number
---@param flag number
---@return boolean
function _InventoryIsInventoryItemFlagEnabled(item, flag) end

-- _INVENTORY_IS_ITEM_EXPIRED  (0x0137C77A2EC64536)
-- min build: 1232
---@return boolean
---@return any
function _InventoryIsItemExpired() end

-- _INVENTORY_IS_PLAYER_INVENTORY_MIRRORING_TRANSACTIONS  (0xFC7563F482781A3D)
-- min build: 1207
---@return boolean
function _InventoryIsPlayerInventoryMirroringTransactions() end

-- _INVENTORY_IS_USING_BACKUP_INVENTORY  (0x7C7E4AB748EA3B07)
-- min build: 1207
---@return boolean
function _InventoryIsUsingBackupInventory() end

-- _INVENTORY_MOVE_INVENTORY_ITEM  (0xDCCAA7C3BFD88862)
-- guid1: old parent GUID
-- guid2: new parent GUID
-- guid3: new item GUID (out param)
-- min build: 1207
---@param inventoryId number
---@param slotId number
---@param quantity number
---@return boolean
---@return any
---@return any
---@return any
function _InventoryMoveInventoryItem(inventoryId, slotId, quantity) end

-- _INVENTORY_RELEASE_ITEM_COLLECTION  (0x42A2F33A1942E865)
-- Max num of collections is 5, so release your unused ones.
-- min build: 1207
---@param collectionId number
---@return boolean
function _InventoryReleaseItemCollection(collectionId) end

-- _INVENTORY_REMOVE_INVENTORY_ITEM_WITH_GUID  (0x3E4E811480B3AE79)
-- min build: 1207
---@param inventoryId number
---@param quantity number
---@param removeReason number
---@return boolean
---@return any
function _InventoryRemoveInventoryItemWithGuid(inventoryId, quantity, removeReason) end

-- _INVENTORY_REMOVE_INVENTORY_ITEM_WITH_ITEMID  (0xB4158C8C9A3B5DCE)
-- min build: 1207
---@param inventoryId number
---@param item number
---@param quantity number
---@param removeReason number
---@return boolean
function _InventoryRemoveInventoryItemWithItemid(inventoryId, item, quantity, removeReason) end

-- _INVENTORY_REMOVE_INVENTORY_ITEMS  (0x5D6182F3BCE1333B)
-- removeReason: REMOVE_REASON_DEFAULT (eRemoveItemReason)
-- Example: INVENTORY::_0x5D6182F3BCE1333B(1, joaat("REMOVE_REASON_DEFAULT")); -> clears weapon wheel
-- Only used in R* SP Scripts
-- min build: 1207
---@param inventoryId number
---@param removeReason number
---@return boolean
function _InventoryRemoveInventoryItems(inventoryId, removeReason) end

-- _INVENTORY_SET_INVENTORY_ITEM_HIDDEN  (0x9A113C660AEA3832)
-- Used with CClothingItem
-- min build: 1207
---@param inventoryId number
---@param hidden boolean
---@return any
function _InventorySetInventoryItemHidden(inventoryId, hidden) end

-- _INVENTORY_SET_INVENTORY_ITEM_HIDDEN_2  (0xD740F11FBC8AEF43)
-- Used with CSatchelItem, R* Script usage: fisihing_core
-- min build: 1207
---@param inventoryId number
---@param hidden boolean
---@return any
function _InventorySetInventoryItemHidden2(inventoryId, hidden) end

-- _INVENTORY_SET_INVENTORY_ITEM_IN_USE  (0x65A5F70F4A292EBE)
-- Only works on CClothingItem
-- min build: 1207
---@param inventoryId number
---@param inUse boolean
---@return any
function _InventorySetInventoryItemInUse(inventoryId, inUse) end

-- _INVENTORY_SET_INVENTORY_ITEM_INSPECTION_ENABLED  (0x227522FD59DDB7E8)
-- min build: 1207
---@param inventoryId number
---@param enabled boolean
---@return boolean
---@return any
function _InventorySetInventoryItemInspectionEnabled(inventoryId, enabled) end

-- _INVENTORY_SET_INVENTORY_ITEM_WEATHER_EFFECTIVENESS  (0x6D2F987736A42D4C)
-- OWE_INVALID = -1,
-- OWE_GOOD_IN_HOT
-- OWE_GOOD_IN_NONE
-- OWE_GOOD_IN_COLD
-- OWE_GOOD_IN_ALL
-- min build: 1207
---@param inventoryId number
---@param weatherEffectiveness number
---@return any
function _InventorySetInventoryItemWeatherEffectiveness(inventoryId, weatherEffectiveness) end

-- _INVENTORY_SWAP_INVENTORY_ITEM  (0xF2753D691BCDA314)
-- min build: 1207
---@param inventoryId number
---@return boolean
---@return any
---@return any
function _InventorySwapInventoryItem(inventoryId) end

-- _INVENTORY_UPDATE_INVENTORY_ITEM  (0xD80A8854DB5CFBA5)
-- Getter: _INVENTORY_GET_FULL_INVENTORY_ITEM_DATA
-- min build: 1207
---@param inventoryId number
---@param p3 number
---@return boolean
---@return any
---@return any
function _InventoryUpdateInventoryItem(inventoryId, p3) end

-- _INVENTORY_USE_BACKUP_INVENTORY  (0xE36D4A38D28D9CFB)
-- Only used in R* SP Scripts
-- min build: 1207
---@param p0 boolean
function _InventoryUseBackupInventory(p0) end

-- _INVENTORY_USE_MISSION_INVENTORY  (0xA6AA9F56BC6CFF58)
-- min build: 1207
---@param enable boolean
---@param mirrorTransactions boolean
function _InventoryUseMissionInventory(enable, mirrorTransactions) end

-- _INVENTORY_USE_SATCHEL_ITEM  (0x46743BBFEDBC859E)
-- eInventoryItem: CLOTHING_FANCY_SUIT, CLOTHING_GUNSLINGER_OUTFIT, etc.
-- Only used in R* SP Scripts
-- min build: 1207
---@param inventoryId number
---@param eInventoryItem number
---@param p2 boolean
function _InventoryUseSatchelItem(inventoryId, eInventoryItem, p2) end

-- _SET_CARRIABLE_CARRY_ACTION_PROMPT_OVERRIDE  (0xF666EF30F4F0AC4E)
-- min build: 1207
---@return any
function _SetCarriableCarryActionPromptOverride() end

-- _SET_ITEM_PROMPT_INFO_REQUEST  (0xFD41D1D4350F6413)
-- min build: 1207
---@return any
function _SetItemPromptInfoRequest() end

-- _SET_USE_MISSION_INVENTORY  (0x597F571DDEE3FFAC)
-- This native has no functionality.
-- min build: 1207
---@param toggle boolean
function _SetUseMissionInventory(toggle) end

-- INVENTORY_COPY_MP_INVENTORY_TO_MISSION_INVENTORY  (0x644CCB76A76CFBD6)
-- min build: 1207
---@param p0 boolean
---@param p1 boolean
---@param bCopySatchelItems boolean
---@param bCopyEmotes boolean
---@param bCopyHorse boolean
---@param p5 boolean
function InventoryCopyMpInventoryToMissionInventory(p0, p1, bCopySatchelItems, bCopyEmotes, bCopyHorse, p5) end

-- INVENTORY_DISABLE_MISSION_INVENTORY_PICKUPS  (0xE1F389F03DC83673)
-- min build: 1311
function InventoryDisableMissionInventoryPickups() end

-- INVENTORY_GET_CHILDREN_IN_SLOT_COUNT  (0x033EE4B89F3AC545)
-- min build: 1207
---@param inventoryId number
---@param slotId number
---@return number
---@return any
function InventoryGetChildrenInSlotCount(inventoryId, slotId) end

-- INVENTORY_GET_GUID_FROM_ITEMID  (0x886DFD3E185C8A89)
-- min build: 1207
---@param inventoryId number
---@param p2 number
---@param slotId number
---@return boolean
---@return any
---@return any
function InventoryGetGuidFromItemid(inventoryId, p2, slotId) end

-- INVENTORY_GET_INVENTORY_ITEM  (0x9700E8EFC4AB9089)
-- min build: 1207
---@param inventoryId number
---@param p3 boolean
---@return boolean
---@return any
---@return any
function InventoryGetInventoryItem(inventoryId, p3) end
