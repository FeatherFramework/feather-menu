---@meta

-- RDR3 namespace: COMPENDIUM -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x725D52F21A5E9E22  (0x725D52F21A5E9E22)
-- Only used in R* SP Scripts, category = GANGS
-- _COMPENDIUM_GET_*
-- min build: 1207
---@param category number
---@return number
function N_0x725D52F21A5E9E22(category) end

-- _0x729D52461AEA9E22  (0x729D52461AEA9E22)
-- Only used in R* SP Scripts, category = GANGS
-- _COMPENDIUM_GET_NUM_OF_ENTRIES_IN_*
-- min build: 1207
---@param category number
---@return number
function N_0x729D52461AEA9E22(category) end

-- _COMPENDIUM_GET_NUM_OF_ENTRIES_IN_CATEGORY  (0x729D52F61A5A9E22)
-- min build: 1207
---@param category number
---@return number
function _CompendiumGetNumOfEntriesInCategory(category) end

-- _COMPENDIUM_GET_SUBCATEGORY_HASH_FROM_ANIMAL_TYPE  (0xCD278B6BFBDBDC22)
-- min build: 1355
---@param category number
---@param animalType number
---@return number
function _CompendiumGetSubcategoryHashFromAnimalType(category, animalType) end

-- COMPENDIUM_ANIMAL_GET_SAMPLE_INVENTORY_ITEM  (0x4E4ACAE1C671A9DA)
-- min build: 1311
---@param compendiumEntry number
---@return any
function CompendiumAnimalGetSampleInventoryItem(compendiumEntry) end

-- COMPENDIUM_ANIMAL_HAS_SAMPLE  (0x6FC24625E4FCAC27)
-- min build: 1311
---@param compendiumEntry number
---@return boolean
function CompendiumAnimalHasSample(compendiumEntry) end

-- COMPENDIUM_ANIMAL_HAS_STAMP  (0xBCF569FC32FFF456)
-- min build: 1311
---@param compendiumEntry number
---@return boolean
function CompendiumAnimalHasStamp(compendiumEntry) end

-- COMPENDIUM_ANIMAL_OBSERVED_BY_STAT_NAME  (0x725D52F26A5E9E10)
-- min build: 1207
---@param animalType number
---@param disableCompendiumToast boolean
function CompendiumAnimalObservedByStatName(animalType, disableCompendiumToast) end

-- COMPENDIUM_ANIMAL_SET_DISCOVERED  (0x67F35C7C9F2BDCFE)
-- min build: 1311
---@param compendiumEntry number
function CompendiumAnimalSetDiscovered(compendiumEntry) end

-- COMPENDIUM_FISH_CAUGHT  (0x725D52F21A5E9E00)
-- min build: 1207
---@param ped number
---@param category number
function CompendiumFishCaught(ped, category) end

-- COMPENDIUM_FISH_GET_LURE_SUITABILITY_BY_STAT_ITEM  (0x725D52F21A5E9E81)
-- min build: 1207
---@param animalType number
---@param baitType number
---@return number
function CompendiumFishGetLureSuitabilityByStatItem(animalType, baitType) end

-- COMPENDIUM_GANG_AMBUSH_SURVIVED  (0x725D52F21A5E9E04)
-- min build: 1207
---@param p0 any
function CompendiumGangAmbushSurvived(p0) end

-- COMPENDIUM_GANG_BOUNTY_CAPTURED  (0x725D52F21A5E9E06)
-- min build: 1207
---@param p0 any
function CompendiumGangBountyCaptured(p0) end

-- COMPENDIUM_GANG_CAMP_FOUND  (0x725D52F21A5E9E03)
-- min build: 1207
---@param p0 any
---@param p1 any
function CompendiumGangCampFound(p0, p1) end

-- COMPENDIUM_GANG_ENCOUNTERED  (0x725D52F21A5E9E05)
-- min build: 1207
---@param p0 any
function CompendiumGangEncountered(p0) end

-- COMPENDIUM_GANG_HIDEOUT_FOUND  (0x725D52F21A5E9E08)
-- min build: 1207
---@param p0 any
---@param p1 any
function CompendiumGangHideoutFound(p0, p1) end

-- COMPENDIUM_GANG_MEMBER_KILLED  (0x725D52F21A5E9E07)
-- min build: 1207
---@param p0 any
function CompendiumGangMemberKilled(p0) end

-- COMPENDIUM_GET_ENTRY_BY_INDEX_IN_SUBCATEGORY  (0x5CEB63B2E3D9895F)
-- min build: 1311
---@param category number
---@param subcategory number
---@param count number
---@return number
function CompendiumGetEntryByIndexInSubcategory(category, subcategory, count) end

-- COMPENDIUM_GET_ENTRY_BY_PED_INDEX  (0x1CFA0219D8E1CF25)
-- min build: 1311
---@param category number
---@param ped number
---@return number
function CompendiumGetEntryByPedIndex(category, ped) end

-- COMPENDIUM_GET_ENTRY_BY_STAT_ITEM  (0x66EC938394D76C85)
-- min build: 1355
---@param category number
---@param animalType number
---@return number
function CompendiumGetEntryByStatItem(category, animalType) end

-- COMPENDIUM_GET_MAP_DISCOVERABLE_FROM_STAT_ITEM  (0x729D54121A5E9E20)
-- min build: 1207
---@param animalStatItem number
---@param x number
---@param y number
---@param z number
---@return number
function CompendiumGetMapDiscoverableFromStatItem(animalStatItem, x, y, z) end

-- COMPENDIUM_GET_NUM_ENTRIES_IN_SUBCATEGORY  (0xF58A0C0E086E8E36)
-- min build: 1311
---@param category number
---@param subcategory number
---@return number
function CompendiumGetNumEntriesInSubcategory(category, subcategory) end

-- COMPENDIUM_GET_SHORT_DESCRIPTION_FROM_PED  (0x6C5E5D48E48B4C65)
-- min build: 1207
---@param ped number
---@return number
function CompendiumGetShortDescriptionFromPed(ped) end

-- COMPENDIUM_GET_STUDY_AWARD_ID  (0x9F678782720349E4)
-- min build: 1311
---@param ped number
---@return any
function CompendiumGetStudyAwardId(ped) end

-- COMPENDIUM_GET_SUBCATEGORY_PED_IS_IN  (0x9B657550DF55EC96)
-- min build: 1311
---@param category number
---@param ped number
---@return number
function CompendiumGetSubcategoryPedIsIn(category, ped) end

-- COMPENDIUM_GET_SUBCATEGORY_SAMPLE_TOAST_DESC_COMPLETE  (0x59D4D68CDB82427C)
-- min build: 1311
---@param category number
---@param subcategory number
---@return string
function CompendiumGetSubcategorySampleToastDescComplete(category, subcategory) end

-- COMPENDIUM_GET_SUBCATEGORY_SAMPLE_TOAST_DESC_PROGRESS  (0x82BFB5B367957699)
-- min build: 1311
---@param category number
---@param subcategory number
---@return string
function CompendiumGetSubcategorySampleToastDescProgress(category, subcategory) end

-- COMPENDIUM_GET_SUBCATEGORY_SAMPLE_TOAST_TITLE  (0x5E50C67EB60951E6)
-- min build: 1311
---@param category number
---@param subcategory number
---@return string
function CompendiumGetSubcategorySampleToastTitle(category, subcategory) end

-- COMPENDIUM_GET_SUBCATEGORY_TOAST_APP_ID  (0x2BF30D9D4D680112)
-- min build: 1311
---@param category number
---@param subcategory number
---@return any
function CompendiumGetSubcategoryToastAppId(category, subcategory) end

-- COMPENDIUM_HERB_PICKED  (0x725D52F21A5E9E09)
-- herbType: https://alloc8or.re/rdr3/doc/enums/eHerbType.txt
-- Vector3: Player Location
-- min build: 1207
---@param herbType number
---@param x number
---@param y number
---@param z number
function CompendiumHerbPicked(herbType, x, y, z) end

-- COMPENDIUM_HORSE_BONDING  (0x725D52F21A5E9E50)
-- min build: 1207
---@param ped number
---@param bondingLevel number
function CompendiumHorseBonding(ped, bondingLevel) end

-- COMPENDIUM_HORSE_OBSERVED  (0x725D58F2125E5E50)
-- Only gets called if bSetObserved is true and animalType is matching
-- min build: 1207
---@param ped number
---@param disableCompendiumToast boolean
function CompendiumHorseObserved(ped, disableCompendiumToast) end

-- COMPENDIUM_HORSE_WILD_BROKEN  (0x725852D21A2E9E50)
-- NET_PLAYER_HORSE_PROCESS_EVENT_HORSE_BREAKING
-- min build: 1207
---@param ped number
function CompendiumHorseWildBroken(ped) end

-- COMPENDIUM_WAS_ANIMAL_OBSERVED  (0x23B5E9C5160BC04F)
-- min build: 1311
---@param ped number
---@return boolean
function CompendiumWasAnimalObserved(ped) end
