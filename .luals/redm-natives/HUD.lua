---@meta

-- RDR3 namespace: HUD -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x052D4AC0922AF91A  (0x052D4AC0922AF91A)
-- min build: 1207
---@param p0 any
---@param p1 any
function N_0x052D4AC0922AF91A(p0, p1) end

-- _0x066725A9D52B3641  (0x066725A9D52B3641)
-- min build: 1232
---@return any
function N_0x066725A9D52B3641() end

-- _0x100157D6D7FE32CA  (0x100157D6D7FE32CA)
-- min build: 1207
---@param p0 any
---@param p1 any
---@return any
function N_0x100157D6D7FE32CA(p0, p1) end

-- _0x160825DADF1B04B3  (0x160825DADF1B04B3)
-- min build: 1207
function N_0x160825DADF1B04B3() end

-- _0x28AE29D909C8FDCE  (0x28AE29D909C8FDCE)
-- min build: 1207
---@param p0 any
---@return any
function N_0x28AE29D909C8FDCE(p0) end

-- _0x2F7BB105144ACF30  (0x2F7BB105144ACF30)
-- nullsub, doesn't do anything
-- min build: 1207
function N_0x2F7BB105144ACF30() end

-- _0x3FE4FB41EF7D2196  (0x3FE4FB41EF7D2196)
-- min build: 1207
---@param p0 any
function N_0x3FE4FB41EF7D2196(p0) end

-- _0x53CE46C01A089DA1  (0x53CE46C01A089DA1)
-- min build: 1207
---@param prompt number
---@param p1 boolean
function N_0x53CE46C01A089DA1(prompt, p1) end

-- _0x5651516D947ABC53  (0x5651516D947ABC53)
-- min build: 1207
function N_0x5651516D947ABC53() end

-- _0x8A59D44189AF2BC5  (0x8A59D44189AF2BC5)
-- min build: 1207
---@param p0 any
---@param p1 any
function N_0x8A59D44189AF2BC5(p0, p1) end

-- _0x8B55B324A9123F6B  (0x8B55B324A9123F6B)
-- min build: 1232
---@param groupId number
---@param volume number
---@param p2 string
---@param p3 any
---@param p4 any
---@param p5 any
---@return any
function N_0x8B55B324A9123F6B(groupId, volume, p2, p3, p4, p5) end

-- _0x958278B97C4AFFD8  (0x958278B97C4AFFD8)
-- min build: 1232
---@param p0 any
---@param p1 any
function N_0x958278B97C4AFFD8(p0, p1) end

-- _0x9D37EB5003E0F2CF  (0x9D37EB5003E0F2CF)
-- min build: 1207
---@param p0 any
---@param p1 any
function N_0x9D37EB5003E0F2CF(p0, p1) end

-- _0xBFFF81E12A745A5F  (0xBFFF81E12A745A5F)
-- nullsub, doesn't do anything
-- min build: 1207
function N_0xBFFF81E12A745A5F() end

-- _0xD6BD313CFA41E57A  (0xD6BD313CFA41E57A)
-- min build: 1207
---@param p0 any
---@return any
function N_0xD6BD313CFA41E57A(p0) end

-- _0xF1E6979C0B779985  (0xF1E6979C0B779985)
-- min build: 1207
---@param uiscene number
function N_0xF1E6979C0B779985(uiscene) end

-- _BUSYSPINNER_SET_TEXT  (0x7F78CD75CC4539E4)
-- min build: 1207
---@param text string
function _BusyspinnerSetText(text) end

-- _CREATE_MP_GAMER_TAG  (0xD877AF112AD2B41B)
-- min build: 1207
---@param player number
---@param username string
---@param pointedClanTag boolean
---@param isRockstarClan boolean
---@param clanTag string
---@param clanFlag number
---@return number
function _CreateMpGamerTag(player, username, pointedClanTag, isRockstarClan, clanTag, clanFlag) end

-- _CREATE_MP_GAMER_TAG_ON_ENTITY  (0xE961BF23EAB76B12)
-- min build: 1207
---@param entity number
---@param text string
---@return number
function _CreateMpGamerTagOnEntity(entity, text) end

-- _DISABLE_HUD_CONTEXT  (0x8BC7C1F929D07BF3)
-- Old name: _DISPLAY_HUD_COMPONENT
-- min build: 1207
---@param component number
function _DisableHudContext(component) end

-- _DISABLE_REDUCED_MENU_TIME_SCALE  (0xC5C7A2F6567FCCBC)
-- Disables reduced time scale while menus such as weapon wheel and satchel are open.
-- min build: 1207
function _DisableReducedMenuTimeScale() end

-- _DISPLAY_TEXT  (0xD79334A4BB99BAD1)
-- nullsub, this native does nothing since build 1436, use _BG_DISPLAY_TEXT (0x16794E044C9EFB58) instead.
-- min build: 1207
---@param text string
---@param xPos number
---@param yPos number
function _DisplayText(text, xPos, yPos) end

-- _DOES_TEXT_BLOCK_EXIST  (0x2C729F2B94CEA911)
-- min build: 1207
---@param textDatabase string
---@return boolean
function _DoesTextBlockExist(textDatabase) end

-- _ENABLE_HUD_CONTEXT  (0x4CC5F2FC1332577F)
-- https://github.com/femga/rdr3_discoveries/tree/master/graphics/HUD/hud_presets
-- Old name: _HIDE_HUD_COMPONENT
-- min build: 1207
---@param component number
function _EnableHudContext(component) end

-- _ENABLE_HUD_CONTEXT_THIS_FRAME  (0xC9CAEAEEC1256E54)
-- min build: 1207
---@param component number
function _EnableHudContextThisFrame(component) end

-- _ENABLE_REDUCED_MENU_TIME_SCALE  (0x26F6BBEA2CE3E3DC)
-- Enables reduced time scale while menus such as weapon wheel and satchel are open.
-- min build: 1207
function _EnableReducedMenuTimeScale() end

-- _GET_COLOR_FROM_NAME  (0xB981DD2DFAF9B1C9)
-- colorNameHash: https://alloc8or.re/rdr3/doc/enums/eColor.txt
-- min build: 1207
---@param colorNameHash number
---@return number
---@return number
---@return number
---@return number
function _GetColorFromName(colorNameHash) end

-- _GET_HUD_VISIBILITY_SLOT_STATE  (0x7EC0D68233E391AC)
-- Returns the current state value for a HUD component slot ID.
-- Enum: https://github.com/Halen84/RDR3-Native-Flags-And-Enums/tree/main/eHudVisibilitySlotType 
-- Notes:
-- - Component-specific semantics: the same numeric state can mean different things depending on the component.
-- - Used heavily as a gating signal for prompts/targeting/UI updates (e.g., return 0 when 21==2 or 54==2; block logic when 10==2 or 10==4).
-- min build: 1207
---@param hudSlot number
---@return number
function _GetHudVisibilitySlotState(hudSlot) end

-- _GET_LABEL_TEXT_2  (0x3429670F9B9EF2D3)
-- _GET_FILENAME_* - _GET_FRAME*
-- min build: 1207
---@param label string
---@return string
function _GetLabelText2(label) end

-- _GET_TEXT_SUBSTRING_2  (0xD8402B858F4DDD88)
-- Similar to 0x9D7E12EC6A1EE4E5(GET_TEXT_SUBSTRING) but starts at the beginning of the string
-- _GET_FILE* - _GET_FRAME*
-- min build: 1207
---@param text string
---@param length number
---@return string
function _GetTextSubstring2(text, length) end

-- _GET_TEXT_SUBSTRING_3  (0x806862E5D266CF38)
-- _GET_BOUNTY* - _GET_CHARACTER*
-- min build: 1207
---@param text string
---@param begin number
---@param length number
---@return string
function _GetTextSubstring3(text, begin, length) end

-- _HUD_CHECK_CLOSEST_HORSE  (0x0501D52D24EA8934)
-- Returns closest horse entity handle (about 3 meters; facing, directly riding, etc).
-- Maybe when horse hud interaction prompts are allowed to show (?)
-- 
-- Params: p0 is usually true, if its false the native returns the players ped handle (?)
-- 
-- _HIDE_* - _IGNORE_*
-- min build: 1207
---@param p0 boolean
---@return number
function _HudCheckClosestHorse(p0) end

-- _HUD_GET_INVENTORY_WHEEL_CURRENTLY_HIGHLIGHTED  (0x9C409BBC492CB5B1)
-- Returns the hash of the currently highlighted item in the weapon wheel.
-- Only works while the wheel is open.
-- 
-- Use in conjunction with IS_CONTROL_JUST_RELEASED(0, 'INPUT_OPEN_WHEEL_MENU') to detect item selection/usage.
-- min build: 1207
---@return number
function _HudGetInventoryWheelCurrentlyHighlighted() end

-- _HUD_HIDE_THIS_FRAME  (0xBF4F34A85CA2970D)
-- min build: 1207
function _HudHideThisFrame() end

-- _IS_MP_GAMER_TAG_ACTIVE_ON_ENTITY  (0x502E1591A504F843)
-- min build: 1207
---@param gamerTagId number
---@param entity number
---@return boolean
function _IsMpGamerTagActiveOnEntity(gamerTagId, entity) end

-- _JOURNAL_CAN_WRITE_ENTRY  (0xCF782691D91F270E)
-- min build: 1207
---@param p0 any
---@return any
function _JournalCanWriteEntry(p0) end

-- _JOURNAL_CLEAR_ALL_PROGRESS  (0xF402978DE6F88D6E)
-- min build: 1207
function _JournalClearAllProgress() end

-- _JOURNAL_GET_ENTRY_AT_INDEX  (0x3D16ABD7A1FD8C96)
-- min build: 1207
---@param p0 any
---@return any
function _JournalGetEntryAtIndex(p0) end

-- _JOURNAL_GET_ENTRY_COUNT  (0xE65B5DE53351BE22)
-- min build: 1207
---@return any
function _JournalGetEntryCount() end

-- _JOURNAL_GET_ENTRY_INFO  (0x5514C3E60673530F)
-- min build: 1207
---@param p0 any
---@param p1 any
---@return any
function _JournalGetEntryInfo(p0, p1) end

-- _JOURNAL_GET_GRIME_AT_INDEX  (0xCB5945E1B855852F)
-- min build: 1207
---@param p0 any
---@return any
function _JournalGetGrimeAtIndex(p0) end

-- _JOURNAL_GET_TEXTURE_WITH_LAYOUT  (0x62CC549B3B8EA2AA)
-- min build: 1207
---@param p0 any
---@param p1 any
---@param p2 any
---@return any
function _JournalGetTextureWithLayout(p0, p1, p2) end

-- _JOURNAL_MARK_READ  (0xE4509BABE59BD24E)
-- min build: 1207
---@param p0 any
function _JournalMarkRead(p0) end

-- _JOURNAL_WRITE_ENTRY  (0x6DFDD665E416B093)
-- min build: 1207
---@param p0 any
function _JournalWriteEntry(p0) end

-- _MP_GAMER_TAG_DISABLE_REVIVE_TOP_ICON  (0x1F9A64C2804B3471)
-- min build: 1207
---@param gamerTagId number
function _MpGamerTagDisableReviveTopIcon(gamerTagId) end

-- _MP_GAMER_TAG_ENABLE_REVIVE_TOP_ICON  (0xFFF6579CF0139FCE)
-- min build: 1207
---@param gamerTagId number
function _MpGamerTagEnableReviveTopIcon(gamerTagId) end

-- _SET_CURRENT_UGC_MISSION_DESCRIPTION  (0xCE0D2F5586627CCE)
-- string1 is the only string used in the scripts, the others are null (0)
-- min build: 1207
---@param active boolean
---@param string1 string
---@param string2 string
---@param string3 string
---@param string4 string
function _SetCurrentUgcMissionDescription(active, string1, string2, string3, string4) end

-- _SET_MP_GAMER_TAG_COLOUR  (0x84BD27DDF9575816)
-- min build: 1207
---@param gamerTagId number
---@param colour number
function _SetMpGamerTagColour(gamerTagId, colour) end

-- _SET_MP_GAMER_TAG_NAME_POSSE  (0x1EA716E0628A6F44)
-- min build: 1207
---@param gamerTagId number
---@param text string
function _SetMpGamerTagNamePosse(gamerTagId, text) end

-- _SET_MP_GAMER_TAG_SECONDARY_ICON  (0x95384C6CE1526EFF)
-- Found icons: SPEAKER, THROPY
-- min build: 1207
---@param gamerTagId number
---@param icon number
function _SetMpGamerTagSecondaryIcon(gamerTagId, icon) end

-- _SET_MP_GAMER_TAG_TOP_ICON  (0x5F57522BC1EB9D9D)
-- Found icons: https://pastebin.com/xx6rEgiG
-- min build: 1207
---@param gamerTagId number
---@param icon number
function _SetMpGamerTagTopIcon(gamerTagId, icon) end

-- _SET_MP_GAMER_TAG_TYPE  (0x25B9C78A25105C35)
-- Found types: GENERIC_PLAYER, DEADDROP, HOTPROPERTY, MINIGAMES
-- min build: 1207
---@param gamerTagId number
---@param type number
function _SetMpGamerTagType(gamerTagId, type) end

-- _SET_MP_GAMER_TAG_UNK_ALLOW_LOCALIZED  (0xEF7AB1A0E8C86170)
-- nullsub, doesn't do anything
-- min build: 1207
---@param gamerTagId number
---@param allow boolean
function _SetMpGamerTagUnkAllowLocalized(gamerTagId, allow) end

-- _SET_MP_GAMER_TAG_VISIBILITY  (0x93171DDDAB274EB8)
-- visibility:
-- enum eUIGamertagVisibility
-- {
-- 	UIGAMERTAGVISIBILITY_NONE,
-- 	UIGAMERTAGVISIBILITY_ICON,
-- 	UIGAMERTAGVISIBILITY_SIMPLE,
-- 	UIGAMERTAGVISIBILITY_COMPLEX
-- };
-- min build: 1207
---@param gamerTagId number
---@param visibility number
function _SetMpGamerTagVisibility(gamerTagId, visibility) end

-- _SET_TEXT_COLOR  (0x50A41AD966910F03)
-- This native does nothing since build 1436, use _BG_SET_TEXT_COLOR (0x16FA5CE47F184F1E) instead.
-- min build: 1207
---@param r number
---@param g number
---@param b number
---@param a number
function _SetTextColor(r, g, b, a) end

-- _SHOW_HORSE_CORES  (0xD4EE21B7CC7FD350)
-- min build: 1207
---@param state boolean
function _ShowHorseCores(state) end

-- _SHOW_PLAYER_CORES  (0x50C803A4CD5932C5)
-- min build: 1207
---@param state boolean
function _ShowPlayerCores(state) end

-- _TEXT_BLOCK_DELETE  (0xAA03F130A637D923)
-- min build: 1207
---@param textBlock string
function _TextBlockDelete(textBlock) end

-- _TEXT_BLOCK_IS_STREAMED  (0x3CF96E16265B7DC8)
-- min build: 1207
---@param textBlock string
---@return boolean
function _TextBlockIsStreamed(textBlock) end

-- _UI_PROMPT_ADD_GROUP_LINK  (0x684C96CC7C66E8EF)
-- min build: 1207
---@param p0 any
---@param prompt number
---@param p2 any
function _UiPromptAddGroupLink(p0, prompt, p2) end

-- _UI_PROMPT_ADD_GROUP_RETURN_LINK  (0x837972ED28159536)
-- min build: 1207
---@param p0 any
---@param prompt number
function _UiPromptAddGroupReturnLink(p0, prompt) end

-- _UI_PROMPT_CLEAR_HORIZONTAL_ORIENTATION  (0x6095358C4142932A)
-- id is the return value from 0xD9459157EB22C895.
-- min build: 1207
---@param id number
function _UiPromptClearHorizontalOrientation(id) end

-- _UI_PROMPT_CLEAR_PROMPT_PRIORITY_PREFERENCE  (0x51259AE5C72D4A1B)
-- min build: 1207
function _UiPromptClearPromptPriorityPreference() end

-- _UI_PROMPT_CONTEXT_SET_POINT  (0xAE84C5EE2C384FB3)
-- min build: 1207
---@param prompt number
---@param x number
---@param y number
---@param z number
function _UiPromptContextSetPoint(prompt, x, y, z) end

-- _UI_PROMPT_CONTEXT_SET_RADIUS  (0x0C718001B77CA468)
-- min build: 1207
---@param prompt number
---@param radius number
function _UiPromptContextSetRadius(prompt, radius) end

-- _UI_PROMPT_CONTEXT_SET_VOLUME  (0x4D107406667423BE)
-- Attaches a Volume
-- min build: 1207
---@param prompt number
---@param volume number
function _UiPromptContextSetVolume(prompt, volume) end

-- _UI_PROMPT_CREATE  (0x29FA7910726C3889)
-- min build: 1207
---@param inputHash number
---@param labelName string
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 number
---@return number
function _UiPromptCreate(inputHash, labelName, p2, p3, p4, p5) end

-- _UI_PROMPT_DELETE  (0x00EDE88D4D13CF59)
-- min build: 1207
---@param prompt number
function _UiPromptDelete(prompt) end

-- _UI_PROMPT_DISABLE_PROMPT_TYPE_THIS_FRAME  (0xFC094EF26DD153FA)
-- min build: 1207
---@param p0 number
function _UiPromptDisablePromptTypeThisFrame(p0) end

-- _UI_PROMPT_DISABLE_PROMPTS_THIS_FRAME  (0xF1622CE88A1946FB)
-- min build: 1207
function _UiPromptDisablePromptsThisFrame() end

-- _UI_PROMPT_DOES_AMBIENT_GROUP_EXIST  (0xEB550B927B34A1BB)
-- min build: 1207
---@param hash number
---@return boolean
function _UiPromptDoesAmbientGroupExist(hash) end

-- _UI_PROMPT_ENABLE_PROMPT_TYPE_THIS_FRAME  (0x06565032897BA861)
-- https://github.com/femga/rdr3_discoveries/tree/master/graphics/HUD/prompts/prompt_types
-- min build: 1207
---@param p0 number
function _UiPromptEnablePromptTypeThisFrame(p0) end

-- _UI_PROMPT_FILTER_CLEAR  (0x6A2F820452017EA2)
-- min build: 1207
function _UiPromptFilterClear() end

-- _UI_PROMPT_GET_GROUP_ACTIVE_PAGE  (0xC1FCC36C3F7286C8)
-- min build: 1207
---@param hash number
---@return number
function _UiPromptGetGroupActivePage(hash) end

-- _UI_PROMPT_GET_GROUP_ID_FOR_SCENARIO_POINT  (0xCB73D7521E7103F0)
-- min build: 1207
---@param p0 any
---@param p1 number
---@return number
function _UiPromptGetGroupIdForScenarioPoint(p0, p1) end

-- _UI_PROMPT_GET_GROUP_ID_FOR_TARGET_ENTITY  (0xB796970BD125FCE8)
-- min build: 1207
---@param entity number
---@return number
function _UiPromptGetGroupIdForTargetEntity(entity) end

-- _UI_PROMPT_GET_MASH_MODE_PROGRESS  (0x8A9585293863B8A5)
-- min build: 1207
---@param prompt number
---@return number
function _UiPromptGetMashModeProgress(prompt) end

-- _UI_PROMPT_GET_PROGRESS  (0x81801291806DBC50)
-- min build: 1207
---@param prompt number
---@return number
function _UiPromptGetProgress(prompt) end

-- _UI_PROMPT_GET_URGENT_PULSING_ENABLED  (0x1FBA0DABECDDB52B)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptGetUrgentPulsingEnabled(prompt) end

-- _UI_PROMPT_HAS_HOLD_AUTO_FILL_MODE  (0x8010BEBD0D5ED5BC)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptHasHoldAutoFillMode(prompt) end

-- _UI_PROMPT_HAS_HOLD_MODE  (0xB60C9F9ED47ABB76)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptHasHoldMode(prompt) end

-- _UI_PROMPT_HAS_HOLD_MODE_COMPLETED  (0xE0F65F0640EF0617)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptHasHoldModeCompleted(prompt) end

-- _UI_PROMPT_HAS_MANUAL_MASH_MODE  (0xA6C6A4ADB3BAC409)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptHasManualMashMode(prompt) end

-- _UI_PROMPT_HAS_MASH_MODE  (0xCD072523791DDC1B)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptHasMashMode(prompt) end

-- _UI_PROMPT_HAS_MASH_MODE_COMPLETED  (0x845CE958416DC473)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptHasMashModeCompleted(prompt) end

-- _UI_PROMPT_HAS_MASH_MODE_FAILED  (0x25B18E530CF39D6F)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptHasMashModeFailed(prompt) end

-- _UI_PROMPT_HAS_MASH_MODE_JUST_PRESSED  (0xB0E8599243B3F568)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptHasMashModeJustPressed(prompt) end

-- _UI_PROMPT_HAS_PRESSED_TIMED_MODE_COMPLETED  (0x3CE854D250A88DAF)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptHasPressedTimedModeCompleted(prompt) end

-- _UI_PROMPT_HAS_PRESSED_TIMED_MODE_FAILED  (0x1A17B9ECFF617562)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptHasPressedTimedModeFailed(prompt) end

-- _UI_PROMPT_HAS_STANDARD_MODE_COMPLETED  (0xC92AC953F0A982AE)
-- Params: p1 is 0
-- min build: 1207
---@param prompt number
---@param p1 number
---@return boolean
function _UiPromptHasStandardModeCompleted(prompt, p1) end

-- _UI_PROMPT_IS_ACTIVE  (0x546E342E01DE71CF)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptIsActive(prompt) end

-- _UI_PROMPT_IS_ENABLED  (0x0D00EDDFB58B7F28)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptIsEnabled(prompt) end

-- _UI_PROMPT_IS_HOLD_MODE_RUNNING  (0xC7D70EAEF92EFF48)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptIsHoldModeRunning(prompt) end

-- _UI_PROMPT_IS_JUST_PRESSED  (0x2787CC611D3FACC5)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptIsJustPressed(prompt) end

-- _UI_PROMPT_IS_JUST_RELEASED  (0x635CC82FA297A827)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptIsJustReleased(prompt) end

-- _UI_PROMPT_IS_PRESSED  (0x21E60E230086697F)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptIsPressed(prompt) end

-- _UI_PROMPT_IS_RELEASED  (0xAFC887BA7A7756D6)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptIsReleased(prompt) end

-- _UI_PROMPT_IS_VALID  (0x347469FBDD1589A9)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptIsValid(prompt) end

-- _UI_PROMPT_REGISTER_BEGIN  (0x04F97DE45A519419)
-- min build: 1207
---@return number
function _UiPromptRegisterBegin() end

-- _UI_PROMPT_REGISTER_END  (0xF7AA2696A22AD8B9)
-- min build: 1207
---@param prompt number
function _UiPromptRegisterEnd(prompt) end

-- _UI_PROMPT_REMOVE_GROUP  (0x4E52C800A28F7BE8)
-- min build: 1207
---@param prompt number
---@param p1 any
function _UiPromptRemoveGroup(prompt, p1) end

-- _UI_PROMPT_RESTART_MODES  (0xDC6C55DFA2C24EE5)
-- min build: 1207
---@param prompt number
function _UiPromptRestartModes(prompt) end

-- _UI_PROMPT_SET_ACTIVE_GROUP_THIS_FRAME  (0xC65A45D4453C2627)
-- Note: you must use VAR_STRING for p1 if string is not part of text database
-- tabAmount: specifies number of tabs in prompt group
-- tabDefaultIndex: specifies starting index
-- p3 if is set > 3 you can no longer press Q to change tab if there are more than one tab set in tabAmount
-- min build: 1207
---@param hash number
---@param name string
---@param tabAmount number
---@param tabDefaultIndex number
---@param p4 number
---@param prompt number
---@return any
function _UiPromptSetActiveGroupThisFrame(hash, name, tabAmount, tabDefaultIndex, p4, prompt) end

-- _UI_PROMPT_SET_ALLOWED_ACTION  (0x565C1CE183CB0EAF)
-- min build: 1207
---@param prompt number
---@param action number
function _UiPromptSetAllowedAction(prompt, action) end

-- _UI_PROMPT_SET_AMBIENT_GROUP_THIS_FRAME  (0x315C81D760609108)
-- min build: 1207
---@param entity number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param name string
---@param p6 number
---@return any
function _UiPromptSetAmbientGroupThisFrame(entity, p1, p2, p3, p4, name, p6) end

-- _UI_PROMPT_SET_ATTRIBUTE  (0x560E76D5E2E1803F)
-- attribute: https://github.com/Halen84/RDR3-Native-Flags-And-Enums/tree/main/eUIPromptAttribute
-- min build: 1207
---@param prompt number
---@param attribute number
---@param enabled boolean
function _UiPromptSetAttribute(prompt, attribute, enabled) end

-- _UI_PROMPT_SET_BEAT_MODE  (0xF957A1654C6322FE)
-- min build: 1207
---@param prompt number
---@param toggle boolean
function _UiPromptSetBeatMode(prompt, toggle) end

-- _UI_PROMPT_SET_BEAT_MODE_GRAYED_OUT  (0xB487A4936FBF40AC)
-- min build: 1207
---@param prompt number
---@param p1 any
function _UiPromptSetBeatModeGrayedOut(prompt, p1) end

-- _UI_PROMPT_SET_CONTROL_ACTION  (0xB5352B7494A08258)
-- min build: 1207
---@param prompt number
---@param action number
---@return any
function _UiPromptSetControlAction(prompt, action) end

-- _UI_PROMPT_SET_ENABLED  (0x8A0FB4D03A630D21)
-- min build: 1207
---@param prompt number
---@param toggle boolean
function _UiPromptSetEnabled(prompt, toggle) end

-- _UI_PROMPT_SET_GROUP  (0x2F11D3A254169EA4)
-- tabIndex: specifies tab of prompt
-- min build: 1207
---@param prompt number
---@param groupId number
---@param tabIndex number
function _UiPromptSetGroup(prompt, groupId, tabIndex) end

-- _UI_PROMPT_SET_HOLD_AUTO_FILL_MODE  (0x3CE932E737C145D6)
-- min build: 1207
---@param prompt number
---@param autoFillTimeMs number
---@param holdTimeMs number
function _UiPromptSetHoldAutoFillMode(prompt, autoFillTimeMs, holdTimeMs) end

-- _UI_PROMPT_SET_HOLD_AUTO_FILL_WITH_DECAY_MODE  (0xA3F2149AA24F3D8E)
-- min build: 1207
---@param prompt number
---@param autoFillTimeMs number
---@param holdTimeMs number
function _UiPromptSetHoldAutoFillWithDecayMode(prompt, autoFillTimeMs, holdTimeMs) end

-- _UI_PROMPT_SET_HOLD_INDEFINITELY_MODE  (0xEA5CCF4EEB2F82D1)
-- min build: 1207
---@param prompt number
function _UiPromptSetHoldIndefinitelyMode(prompt) end

-- _UI_PROMPT_SET_HOLD_MODE  (0x94073D5CA3F16B7B)
-- Params: p2 is 304000 in R* SP Script coachrobberies
-- min build: 1207
---@param prompt number
---@param holdTimeMs number
function _UiPromptSetHoldMode(prompt, holdTimeMs) end

-- _UI_PROMPT_SET_MANUAL_RESOLVED  (0xA520C7B05FA4EB2A)
-- min build: 1207
---@param prompt number
---@param p1 any
function _UiPromptSetManualResolved(prompt, p1) end

-- _UI_PROMPT_SET_MASH_AUTO_FILL_MODE  (0x6C39587D7CC66801)
-- min build: 1207
---@param prompt number
---@param autoFillTimeMs number
---@param mashes number
function _UiPromptSetMashAutoFillMode(prompt, autoFillTimeMs, mashes) end

-- _UI_PROMPT_SET_MASH_INDEFINITELY_MODE  (0x7B66E89312727274)
-- min build: 1207
---@param prompt number
function _UiPromptSetMashIndefinitelyMode(prompt) end

-- _UI_PROMPT_SET_MASH_MANUAL_CAN_FAIL_MODE  (0x179DCF71F705DA20)
-- min build: 1207
---@param prompt number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 any
function _UiPromptSetMashManualCanFailMode(prompt, p1, p2, p3, p4) end

-- _UI_PROMPT_SET_MASH_MANUAL_MODE  (0x32DF729D8BD3C1C6)
-- min build: 1207
---@param prompt number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 any
function _UiPromptSetMashManualMode(prompt, p1, p2, p3, p4) end

-- _UI_PROMPT_SET_MASH_MANUAL_MODE_DECAY_SPEED  (0x7D393C247FB9B431)
-- standard (prompt not held) rate: 0.035f
-- fast (prompt held) rate: 0.015f
-- punitive (been hit) rate: 0.14f
-- min build: 1207
---@param prompt number
---@param speed number
function _UiPromptSetMashManualModeDecaySpeed(prompt, speed) end

-- _UI_PROMPT_SET_MASH_MANUAL_MODE_INCREASE_PER_PRESS  (0xA0D1D79C6036A855)
-- standard (prompt not held) rate: (1f / 128f)
-- fast (prompt held) rate: (1f / 64f)
-- punitive (been hit) rate: (1f / 128f)
-- min build: 1207
---@param prompt number
---@param rate number
function _UiPromptSetMashManualModeIncreasePerPress(prompt, rate) end

-- _UI_PROMPT_SET_MASH_MANUAL_MODE_PRESSED_GROWTH_SPEED  (0x56DBB26F98582C29)
-- min build: 1207
---@param prompt number
---@param speed number
function _UiPromptSetMashManualModePressedGrowthSpeed(prompt, speed) end

-- _UI_PROMPT_SET_MASH_MODE  (0xDF6423BF071C7F71)
-- min build: 1207
---@param prompt number
---@param mashes number
function _UiPromptSetMashMode(prompt, mashes) end

-- _UI_PROMPT_SET_MASH_WITH_RESISTANCE_CAN_FAIL_MODE  (0xDC0CB602DEADBA53)
-- Sets the mode for the given prompt to mash mode.
-- decreaseSpeed: 0.0f will result in the prompt not showing the mash progress at all. 0.01f - ?.0f. At speeds around 7.0f to 8.0f the prompt basically fails immediately if you don't start mashing right away.
-- startProgress: 0.0f - 1.0f is a percentage value, so 0.5f = 50% progress. Range: 0.0f - 1.0f 
-- min build: 1207
---@param prompt number
---@param mashes number
---@param decreaseSpeed number
---@param startProgress number
function _UiPromptSetMashWithResistanceCanFailMode(prompt, mashes, decreaseSpeed, startProgress) end

-- _UI_PROMPT_SET_MASH_WITH_RESISTANCE_MODE  (0xCD1BDFF15EFA79F5)
-- min build: 1207
---@param prompt number
---@param mashes number
---@param p2 number
---@param p3 number
function _UiPromptSetMashWithResistanceMode(prompt, mashes, p2, p3) end

-- _UI_PROMPT_SET_ORDERING_AS_INPUT_TYPE  (0x2F385ECC5200938D)
-- min build: 1207
---@param prompt number
---@param p1 any
function _UiPromptSetOrderingAsInputType(prompt, p1) end

-- _UI_PROMPT_SET_PRESSED_TIMED_MODE  (0x1473D3AF51D54276)
-- min build: 1207
---@param prompt number
---@param depletionTimeMs number
function _UiPromptSetPressedTimedMode(prompt, depletionTimeMs) end

-- _UI_PROMPT_SET_PRIORITY  (0xCA24F528D0D16289)
-- priority: https://github.com/Halen84/RDR3-Native-Flags-And-Enums/tree/main/ePromptPriority
-- min build: 1207
---@param prompt number
---@param priority number
function _UiPromptSetPriority(prompt, priority) end

-- _UI_PROMPT_SET_PROMPT_PRIORITY_PREFERENCE  (0x530A428705BE5DEF)
-- min build: 1207
---@param ped number
function _UiPromptSetPromptPriorityPreference(ped) end

-- _UI_PROMPT_SET_REGISTER_HORIZONTAL_ORIENTATION  (0xD9459157EB22C895)
-- This returns an id that can be used with 0x6095358C4142932A.
-- min build: 1207
---@return number
function _UiPromptSetRegisterHorizontalOrientation() end

-- _UI_PROMPT_SET_ROTATE_MODE  (0x7ABE7095FB3D2581)
-- Used for controllers
-- min build: 1207
---@param prompt number
---@param p1 number
---@param counterclockwise boolean
function _UiPromptSetRotateMode(prompt, p1, counterclockwise) end

-- _UI_PROMPT_SET_SPINNER_POSITION  (0x832CB510DE546282)
-- min build: 1207
---@param prompt number
---@param p1 any
function _UiPromptSetSpinnerPosition(prompt, p1) end

-- _UI_PROMPT_SET_SPINNER_SPEED  (0xAC6586A7FDCD4B68)
-- min build: 1207
---@param prompt number
---@param p1 any
function _UiPromptSetSpinnerSpeed(prompt, p1) end

-- _UI_PROMPT_SET_STANDARD_MODE  (0xCC6656799977741B)
-- min build: 1207
---@param prompt number
---@param releaseMode boolean
function _UiPromptSetStandardMode(prompt, releaseMode) end

-- _UI_PROMPT_SET_STANDARDIZED_HOLD_MODE  (0x74C7D7B72ED0D3CF)
-- holdType: SHORT_TIMED_EVENT_MP, SHORT_TIMED_EVENT, MEDIUM_TIMED_EVENT, LONG_TIMED_EVENT, RUSTLING_CALM_TIMING, PLAYER_FOCUS_TIMING, PLAYER_REACTION_TIMING
-- min build: 1207
---@param prompt number
---@param holdType number
function _UiPromptSetStandardizedHoldMode(prompt, holdType) end

-- _UI_PROMPT_SET_TAG  (0xDEC85C174751292B)
-- min build: 1207
---@param prompt number
---@param p1 any
function _UiPromptSetTag(prompt, p1) end

-- _UI_PROMPT_SET_TARGET_MODE  (0x5F6503D9CD2754EB)
-- min build: 1207
---@param prompt number
---@param p1 number
---@param p2 number
---@param p3 any
function _UiPromptSetTargetMode(prompt, p1, p2, p3) end

-- _UI_PROMPT_SET_TARGET_MODE_PROGRESS  (0x00123054BEC8A30F)
-- min build: 1207
---@param prompt number
---@param progress number
function _UiPromptSetTargetModeProgress(prompt, progress) end

-- _UI_PROMPT_SET_TARGET_MODE_TARGET  (0x5E019C45DD3B6A14)
-- min build: 1207
---@param prompt number
---@param p1 number
---@param p2 number
function _UiPromptSetTargetModeTarget(prompt, p1, p2) end

-- _UI_PROMPT_SET_TEXT  (0x5DD02A8318420DD7)
-- min build: 1207
---@param prompt number
---@param text string
function _UiPromptSetText(prompt, text) end

-- _UI_PROMPT_SET_TRANSPORT_MODE  (0x876E4A35C73A6655)
-- TM_ANY = 0,
-- TM_ON_FOOT,
-- TM_IN_VEHICLE
-- min build: 1207
---@param prompt number
---@param mode number
function _UiPromptSetTransportMode(prompt, mode) end

-- _UI_PROMPT_SET_TYPE  (0xF4A5C4509BF923B1)
-- Params: type = mostly 0, 6 (net_mission_intro_story_gvo), 7 (fm_mission_controller), 14 (net_ugc_end_flow_transition_online), 15 (net_main_[tlg_]offline)
-- min build: 1207
---@param prompt number
---@param type number
function _UiPromptSetType(prompt, type) end

-- _UI_PROMPT_SET_URGENT_PULSING_ENABLED  (0xC5F428EE08FA7F2C)
-- min build: 1207
---@param prompt number
---@param toggle boolean
function _UiPromptSetUrgentPulsingEnabled(prompt, toggle) end

-- _UI_PROMPT_SET_VISIBLE  (0x71215ACCFDE075EE)
-- min build: 1207
---@param prompt number
---@param toggle boolean
function _UiPromptSetVisible(prompt, toggle) end

-- _UI_PROMPT_WAS_BEAT_MODE_PRESSED_IN_TIME_WINDOW  (0x1FE4788AB1430C55)
-- min build: 1207
---@param prompt number
---@return boolean
function _UiPromptWasBeatModePressedInTimeWindow(prompt) end

-- ALLOW_PAUSE_WHEN_NOT_IN_STATE_OF_PLAY_THIS_FRAME  (0x30996422DF1EE561)
-- Old name: _ALLOW_PAUSE_MENU_WHEN_DEAD_THIS_FRAME
-- min build: 1207
function AllowPauseWhenNotInStateOfPlayThisFrame() end

-- BUSYSPINNER_IS_ON  (0x823BF7B1DF613A21)
-- min build: 1207
---@return boolean
function BusyspinnerIsOn() end

-- BUSYSPINNER_OFF  (0x58F441B90EA84D06)
-- Removes the loading prompt at the bottom right of the screen.
-- min build: 1207
function BusyspinnerOff() end

-- CLEAR_ALL_HELP_MESSAGES  (0x916ED8321F087059)
-- min build: 1207
function ClearAllHelpMessages() end

-- CREATE_FAKE_MP_GAMER_TAG  (0x53CB4B502E1C57EA)
-- min build: 1207
---@param ped number
---@param username string
---@param pointedClanTag boolean
---@param isRockstarClan boolean
---@param clanTag string
---@param clanFlag number
---@return number
function CreateFakeMpGamerTag(ped, username, pointedClanTag, isRockstarClan, clanTag, clanFlag) end

-- DISABLE_FRONTEND_THIS_FRAME  (0x56CE42A528156A67)
-- min build: 1207
function DisableFrontendThisFrame() end

-- DISPLAY_HUD  (0xD63FE3AF9FB3D53F)
-- If Hud should be displayed
-- min build: 1207
---@param toggle boolean
function DisplayHud(toggle) end

-- DOES_TEXT_LABEL_EXIST  (0x73C258C68D6F55B6)
-- Checks if the passed gxt name exists in the game files.
-- min build: 1207
---@param label string
---@return boolean
function DoesTextLabelExist(label) end

-- GET_CHARACTER_FROM_AUDIO_CONVERSATION_FILENAME  (0x9D7E12EC6A1EE4E5)
-- Note: you must use VAR_STRING. Byte code very similar to TEXT_COMMAND_DISPLAY_TEXT in V
-- Old name: _GET_TEXT_SUBSTRING
-- min build: 1207
---@param text string
---@param position number
---@param length number
---@return string
function GetCharacterFromAudioConversationFilename(text, position, length) end

-- GET_FILENAME_FOR_AUDIO_CONVERSATION  (0xCFEDCCAD3C5BA90D)
-- Gets a string literal from a label name.
-- 
-- Old name: _GET_LABEL_TEXT
-- min build: 1207
---@param labelName string
---@return string
function GetFilenameForAudioConversation(labelName) end

-- GET_HUD_SCREEN_POSITION_FROM_WORLD_POSITION  (0xB39C81628EF10B42)
-- min build: 1207
---@param worldX number
---@param worldY number
---@param worldZ number
---@return number
---@return number
---@return number
function GetHudScreenPositionFromWorldPosition(worldX, worldY, worldZ) end

-- GET_LENGTH_OF_LITERAL_STRING  (0x481FBF588B0B76DB)
-- Returns the length of the string passed (much like strlen).
-- min build: 1207
---@param string string
---@return number
function GetLengthOfLiteralString(string) end

-- GET_LENGTH_OF_LITERAL_STRING_IN_BYTES  (0xDC5AD6B7AB8184F5)
-- min build: 1207
---@param string string
---@return number
function GetLengthOfLiteralStringInBytes(string) end

-- GET_NAMED_RENDERTARGET_RENDER_ID  (0xB6762A85EE29AA60)
-- min build: 1207
---@param name string
---@return number
function GetNamedRendertargetRenderId(name) end

-- GET_STRING_FROM_HASH_KEY  (0xBD5DD5EAE2B6CE14)
-- Returns the label text given the hash.
-- 
-- Old name: _GET_LABEL_TEXT_BY_HASH
-- min build: 1207
---@param labelHash number
---@return string
function GetStringFromHashKey(labelHash) end

-- HIDE_HUD_AND_RADAR_THIS_FRAME  (0x36CDD81627A6FCD2)
-- min build: 1207
function HideHudAndRadarThisFrame() end

-- HIDE_LOADING_ON_FADE_THIS_FRAME  (0xEA600AABAF4B9084)
-- min build: 1207
function HideLoadingOnFadeThisFrame() end

-- IS_HUD_HIDDEN  (0x71B72B478F8189DC)
-- min build: 1207
---@return boolean
function IsHudHidden() end

-- IS_MP_GAMER_TAG_ACTIVE  (0x6E1C31E14C7A5F97)
-- min build: 1207
---@param gamerTagId number
---@return boolean
function IsMpGamerTagActive(gamerTagId) end

-- IS_NAMED_RENDERTARGET_LINKED  (0x707032835FF09AE7)
-- min build: 1207
---@param modelHash number
---@return boolean
function IsNamedRendertargetLinked(modelHash) end

-- IS_NAMED_RENDERTARGET_REGISTERED  (0x3EE32F7964C40FE6)
-- min build: 1207
---@param name string
---@return boolean
function IsNamedRendertargetRegistered(name) end

-- IS_PAUSE_MENU_ACTIVE  (0x535384D6067BA42E)
-- Returns true when either Pause Menu, a Frontend Menu, Online Policies menu or Social Club menu is active.
-- min build: 1207
---@return boolean
function IsPauseMenuActive() end

-- IS_RADAR_HIDDEN  (0x1B82FD5FFA4D666E)
-- min build: 1207
---@return boolean
function IsRadarHidden() end

-- IS_RADAR_HIDDEN_BY_SCRIPT  (0x66F35DD9D2B58579)
-- min build: 1207
---@return boolean
function IsRadarHiddenByScript() end

-- IS_RADAR_PREFERENCE_SWITCHED_ON  (0x81E47F0EE1F2B21E)
-- min build: 1207
---@return boolean
function IsRadarPreferenceSwitchedOn() end

-- IS_SUBTITLE_PREFERENCE_SWITCHED_ON  (0x7C4AC9573587F2DF)
-- min build: 1355
---@return boolean
function IsSubtitlePreferenceSwitchedOn() end

-- LINK_NAMED_RENDERTARGET  (0x2F506B8556242DDB)
-- min build: 1207
---@param modelHash number
function LinkNamedRendertarget(modelHash) end

-- REGISTER_NAMED_RENDERTARGET  (0x98AF2BB6F62BD588)
-- min build: 1207
---@param name string
---@param p1 boolean
---@return boolean
function RegisterNamedRendertarget(name, p1) end

-- RELEASE_NAMED_RENDERTARGET  (0x0E692EE61761361F)
-- min build: 1207
---@param name string
---@return boolean
function ReleaseNamedRendertarget(name) end

-- REMOVE_MP_GAMER_TAG  (0x839BFD7D7E49FE09)
-- min build: 1207
---@param gamerTagId number
function RemoveMpGamerTag(gamerTagId) end

-- SET_FRONTEND_ACTIVE  (0xCE47C21C0687EBC2)
-- min build: 1207
---@param active boolean
function SetFrontendActive(active) end

-- SET_MISSION_NAME  (0x402669A4BDAA72DA)
-- min build: 1207
---@param p0 boolean
---@param name string
function SetMissionName(p0, name) end

-- SET_MISSION_NAME_FOR_UGC_MISSION  (0xD98630CE73C61E98)
-- min build: 1207
---@param p0 boolean
---@param name string
function SetMissionNameForUgcMission(p0, name) end

-- SET_MP_GAMER_TAG_BIG_TEXT  (0xA0D7CE5F83259663)
-- min build: 1207
---@param gamerTagId number
---@param string string
function SetMpGamerTagBigText(gamerTagId, string) end

-- SET_MP_GAMER_TAG_NAME  (0xEA6F4B8D4B4B5B3E)
-- min build: 1207
---@param gamerTagId number
---@param string string
function SetMpGamerTagName(gamerTagId, string) end

-- SET_TEXT_RENDER_ID  (0xE550CDE128D56757)
-- min build: 1207
---@param renderId number
function SetTextRenderId(renderId) end

-- TEXT_BLOCK_IS_LOADED  (0xD0976CC34002DB57)
-- min build: 1207
---@param textBlock string
---@return boolean
function TextBlockIsLoaded(textBlock) end

-- TEXT_BLOCK_REQUEST  (0xF66090013DE648D5)
-- min build: 1207
---@param textBlock string
function TextBlockRequest(textBlock) end

-- UI_GET_SCENE_UIOBJECT  (0xBE1067CD1C9570F6)
-- min build: 1207
---@param p0 any
---@return any
function UiGetSceneUiobject(p0) end

-- UI_MOVIEVIEW_SET_RENDER_TARGET  (0x51DE09A2196BD951)
-- min build: 1207
---@param p0 any
---@param p1 any
function UiMovieviewSetRenderTarget(p0, p1) end

-- UI_PROMPT_IS_CONTROL_ACTION_ACTIVE  (0x1BE19185B8AFE299)
-- min build: 1207
---@param controlAction number
---@return boolean
function UiPromptIsControlActionActive(controlAction) end

-- UI_REQUEST_SCENE  (0xB6857100F8FD433C)
-- min build: 1207
---@param p0 any
---@param p1 any
---@return any
function UiRequestScene(p0, p1) end
