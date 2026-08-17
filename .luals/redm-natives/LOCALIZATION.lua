---@meta

-- RDR3 namespace: LOCALIZATION -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _DOES_CURRENT_LANGUAGE_SUPPORT_CONDENSED_STYLE  (0x45D50415E4D885FF)
-- Returns true if the current language is american, french, german, italian, spanish, brazilian or mexican.
-- _DOES_*
-- min build: 1207
---@return boolean
function _DoesCurrentLanguageSupportCondensedStyle() end

-- GET_CURRENT_LANGUAGE  (0xDB917DA5C6835FCC)
-- 0 = american (en-US)
-- 1 = french (fr-FR)
-- 2 = german (de-DE)
-- 3 = italian (it-IT)
-- 4 = spanish (es-ES)
-- 5 = brazilian (pt-BR)
-- 6 = polish (pl-PL)
-- 7 = russian (ru-RU)
-- 8 = korean (ko-KR)
-- 9 = chinesetrad (zh-TW)
-- 10 = japanese (ja-JP)
-- 11 = mexican (es-MX)
-- 12 = chinesesimp (zh-CN)
-- min build: 1207
---@return number
function GetCurrentLanguage() end

-- LOCALIZATION_GET_SYSTEM_DATE_TYPE  (0x76E30B799EBEEA0F)
-- 0 = DATE_FORMAT_DMY
-- 1 = DATE_FORMAT_MDY
-- 2 = DATE_FORMAT_YMD
-- 
-- Old name: _LOCALIZATION_GET_SYSTEM_DATE_FORMAT
-- min build: 1207
---@return number
function LocalizationGetSystemDateType() end

-- LOCALIZATION_GET_SYSTEM_LANGUAGE  (0x3C1A05F86AE6ACB5)
-- Same return values as GET_CURRENT_LANGUAGE
-- min build: 1207
---@return number
function LocalizationGetSystemLanguage() end
