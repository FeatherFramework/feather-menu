---@meta

-- RDR3 namespace: SAVE -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x443174C20B8B9E7F  (0x443174C20B8B9E7F)
-- min build: 1207
---@param p0 any
---@param p1 any
---@param p2 any
function N_0x443174C20B8B9E7F(p0, p1, p2) end

-- _0x4FB5869E2B37FC00  (0x4FB5869E2B37FC00)
-- min build: 1207
function N_0x4FB5869E2B37FC00() end

-- _0x81F4E92BE3958364  (0x81F4E92BE3958364)
-- min build: 1207
---@param p0 any
---@param p1 any
---@param p2 any
function N_0x81F4E92BE3958364(p0, p1, p2) end

-- _0x8E8FFB9E4AD051D2  (0x8E8FFB9E4AD051D2)
-- min build: 1207
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function N_0x8E8FFB9E4AD051D2(p0, p1, p2, p3) end

-- _0x9BB83C4DD7BE0802  (0x9BB83C4DD7BE0802)
-- min build: 1207
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function N_0x9BB83C4DD7BE0802(p0, p1, p2, p3, p4) end

-- _0xA7ECEBAFBAF997A5  (0xA7ECEBAFBAF997A5)
-- min build: 1436
---@param savegameType number
---@return any
function N_0xA7ECEBAFBAF997A5(savegameType) end

-- _0xA844FEB5C22C2C74  (0xA844FEB5C22C2C74)
-- min build: 1207
function N_0xA844FEB5C22C2C74() end

-- _0xB00CE33465B5406D  (0xB00CE33465B5406D)
-- min build: 1207
---@param p0 any
---@param p1 any
---@return any
function N_0xB00CE33465B5406D(p0, p1) end

-- _0xC0ABF784590798A9  (0xC0ABF784590798A9)
-- min build: 1207
---@param p0 any
function N_0xC0ABF784590798A9(p0) end

-- _0xE0B45E983BFC0768  (0xE0B45E983BFC0768)
-- min build: 1207
function N_0xE0B45E983BFC0768() end

-- _0xE8346E62FD7FB962  (0xE8346E62FD7FB962)
-- min build: 1207
function N_0xE8346E62FD7FB962() end

-- _0xED4B0C1057892B2E  (0xED4B0C1057892B2E)
-- min build: 1207
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function N_0xED4B0C1057892B2E(p0, p1, p2, p3) end

-- _SAVEGAME_GET_BOOL  (0xBB7F4273C186BC4B)
-- Does the exact same as 0x529B9CCD0972AF4E
-- min build: 1207
---@param variableName string
---@return any
function _SavegameGetBool(variableName) end

-- _SAVEGAME_GET_FLOAT  (0x35DEFECAE36D4FAE)
-- min build: 1207
---@param variableName string
---@return any
function _SavegameGetFloat(variableName) end

-- _SAVEGAME_GET_INT  (0x529B9CCD0972AF4E)
-- min build: 1207
---@param variableName string
---@return any
function _SavegameGetInt(variableName) end

-- _SAVEGAME_GET_INT_2  (0x529B9CCD0972AF4D)
-- Does the exact same as 0x529B9CCD0972AF4E
-- Commonly used with time/timestamps
-- min build: 1207
---@param variableName string
---@return any
function _SavegameGetInt2(variableName) end

-- _SAVEGAME_GET_INT_3  (0xB25B5A375BE5BE26)
-- Does the exact same as 0x529B9CCD0972AF4E
-- Commonly used with enums and flags
-- min build: 1207
---@param variableName string
---@return any
function _SavegameGetInt3(variableName) end

-- _SAVEGAME_GET_TEXT_LABEL_23  (0x5A10D6506B2F2C63)
-- min build: 1207
---@param variableName string
---@return any
function _SavegameGetTextLabel23(variableName) end

-- _SAVEGAME_GET_TEXT_LABEL_31  (0x4845E7E7643A908C)
-- min build: 1207
---@param variableName string
---@return any
function _SavegameGetTextLabel31(variableName) end

-- _SAVEGAME_GET_TEXT_LABEL_63  (0x186608A2AC6F9E88)
-- min build: 1207
---@param variableName string
---@return any
function _SavegameGetTextLabel63(variableName) end

-- _SAVEGAME_HAS_SAVE_FAILED  (0x1431540BCA1A1BD2)
-- min build: 1207
---@return boolean
function _SavegameHasSaveFailed() end

-- SAVEGAME_IS_SAVE_PENDING  (0x3CF46F55C6585590)
-- min build: 1207
---@return boolean
function SavegameIsSavePending() end

-- SAVEGAME_SAVE_MP  (0x1840F3B30ED0105F)
-- See SAVEGAME_SAVE_SP
-- min build: 1207
---@param savegameType number
---@return boolean
function SavegameSaveMp(savegameType) end

-- SAVEGAME_SAVE_SP  (0x62C9EB51656D68CE)
-- enum eSavegameType : Hash
-- {
-- 	SAVEGAMETYPE_AMBIENT = 0x3CA4E1F8,
-- 	SAVEGAMETYPE_DEFAULT = 0xCB6ED080,
-- 	SAVEGAMETYPE_DELETE_CHAR = 0xCD35F947,
-- 	SAVEGAMETYPE_END_CREATE_NEWCHAR = 0x4C50A3CE,
-- 	SAVEGAMETYPE_END_MATCH = 0xE470ED50,
-- 	SAVEGAMETYPE_END_MISSION = 0x9A444E54,
-- 	SAVEGAMETYPE_END_SESSION = 0x6D23956C,
-- 	SAVEGAMETYPE_END_SHOPPING = 0xA311A6C4,
-- 	SAVEGAMETYPE_RANKUP = 0xE25F8017,
-- 	SAVEGAMETYPE_SCRIPT_MP_GLOBALS = 0xAFF30AD4,
-- 	SAVEGAMETYPE_SP_AUTOSAVE = 0xF4AE69EC,
-- 	SAVEGAMETYPE_SP_DEBUG = 0x6A8122FD,
-- 	SAVEGAMETYPE_SP_PROPERTY = 0xAE0AB38E
-- };
-- min build: 1207
---@param savegameType number
---@return boolean
function SavegameSaveSp(savegameType) end
