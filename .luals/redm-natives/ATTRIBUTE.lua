---@meta

-- RDR3 namespace: ATTRIBUTE -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _ENABLE_ATTRIBUTE_CORE_OVERPOWER  (0x4AF5A4C7B9157D14)
-- coreIndex: see _SET_ATTRIBUTE_CORE_VALUE
-- 
-- Previously incorrectly named ENABLE_ATTRIBUTE_OVERPOWER
-- min build: 1207
---@param ped number
---@param coreIndex number
---@param value number
---@param makeSound boolean
function _EnableAttributeCoreOverpower(ped, coreIndex, value, makeSound) end

-- _GET_ATTRIBUTE_CORE_OVERPOWER_SECONDS_LEFT  (0xB429F58803D285B1)
-- min build: 1207
---@param ped number
---@param coreIndex number
---@return number
function _GetAttributeCoreOverpowerSecondsLeft(ped, coreIndex) end

-- _GET_ATTRIBUTE_CORE_VALUE  (0x36731AC041289BB1)
-- Gets the ped's core value on a scale of 0 to 100.
-- coreIndex: see _SET_ATTRIBUTE_CORE_VALUE
-- min build: 1207
---@param ped number
---@param coreIndex number
---@return number
function _GetAttributeCoreValue(ped, coreIndex) end

-- _GET_ATTRIBUTE_OVERPOWER_SECONDS_LEFT  (0x4C9F782180712742)
-- min build: 1207
---@param ped number
---@param attributeIndex number
---@return number
function _GetAttributeOverpowerSecondsLeft(ped, attributeIndex) end

-- _IS_ATTRIBUTE_CORE_OVERPOWERED  (0x200373A8DF081F22)
-- min build: 1207
---@param ped number
---@param coreIndex number
---@return boolean
function _IsAttributeCoreOverpowered(ped, coreIndex) end

-- _IS_ATTRIBUTE_OVERPOWERED  (0x103C2F885ABEB00B)
-- attributeIndex: see SET_ATTRIBUTE_BASE_RANK
-- min build: 1207
---@param ped number
---@param attributeIndex number
---@return boolean
function _IsAttributeOverpowered(ped, attributeIndex) end

-- _SET_ATTRIBUTE_CORE_VALUE  (0xC6258F41D86676E0)
-- coreIndex:
-- enum eAttributeCore
-- {
-- 	ATTRIBUTE_CORE_HEALTH,
-- 	ATTRIBUTE_CORE_STAMINA,
-- 	ATTRIBUTE_CORE_DEADEYE
-- };
-- min build: 1207
---@param ped number
---@param coreIndex number
---@param value number
function _SetAttributeCoreValue(ped, coreIndex, value) end

-- _SET_STATUS_EFFECT_CORE_ICON  (0xA4D3A1C008F250DF)
-- Displays status effects on core icons (includes warnings).
-- 
-- enum eUiRpgStatusEffect
-- {
-- 	STATUS_NONE,
-- 	STATUS_COLD,
-- 	STATUS_HOT,
-- 	STATUS_OVERFED,
-- 	STATUS_DIRTY,
-- 	STATUS_SNAKE_VENOM,
-- 	STATUS_ARROW_WOUNDED,
-- 	STATUS_ARROW_DRAINED,
-- 	STATUS_ARROW_DISORIENTED,
-- 	STATUS_ARROW_TRACKED,
-- 	STATUS_ARROW_CONFUSION,
-- 	STATUS_UNDERWEIGHT,
-- 	STATUS_OVERWEIGHT,
-- 	STATUS_SICK_1,
-- 	STATUS_SICK_2,
-- 	STATUS_PREDATOR_INVULNERABLE
-- };
-- min build: 1207
---@param statusEffectType number
function _SetStatusEffectCoreIcon(statusEffectType) end

-- _SET_STATUS_EFFECT_PERIODIC_ICON  (0xFB6E111908502871)
-- Starts core periodic icon.
-- statusEffectType: see 0xA4D3A1C008F250DF
-- min build: 1207
---@param statusEffectType number
function _SetStatusEffectPeriodicIcon(statusEffectType) end

-- _START_ITEM_PREVIEW  (0x7E2C766ADB2C5F1A)
-- Params: p1 is related to satchel_category
-- min build: 1207
---@param p0 any
---@param p1 number
function _StartItemPreview(p0, p1) end

-- _STOP_STATUS_EFFECT_PERIODIC_ICON  (0x3FC4C027FD0936F4)
-- Stops periodic icon.
-- statusEffectType: see 0xA4D3A1C008F250DF
-- min build: 1207
---@param statusEffectType number
function _StopStatusEffectPeriodicIcon(statusEffectType) end

-- ADD_ATTRIBUTE_POINTS  (0x75415EE0CB583760)
-- attributeIndex: see SET_ATTRIBUTE_BASE_RANK
-- min build: 1207
---@param ped number
---@param attributeIndex number
---@param p2 number
function AddAttributePoints(ped, attributeIndex, p2) end

-- DISABLE_ATTRIBUTE_OVERPOWER  (0xF8DAC3D85636C241)
-- attributeIndex: see SET_ATTRIBUTE_BASE_RANK
-- min build: 1207
---@param ped number
---@param attributeIndex number
function DisableAttributeOverpower(ped, attributeIndex) end

-- ENABLE_ATTRIBUTE_OVERPOWER  (0xF6A7C08DF2E28B28)
-- attributeIndex: see SET_ATTRIBUTE_BASE_RANK
-- 
-- Old name: _SET_ATTRIBUTE_OVERPOWER_VALUE
-- min build: 1207
---@param ped number
---@param attributeIndex number
---@param value number
---@param makeSound boolean
function EnableAttributeOverpower(ped, attributeIndex, value, makeSound) end

-- GET_ATTRIBUTE_BASE_RANK  (0x147149F2E909323C)
-- attributeIndex: see SET_ATTRIBUTE_BASE_RANK
-- min build: 1207
---@param ped number
---@param attributeIndex number
---@return number
function GetAttributeBaseRank(ped, attributeIndex) end

-- GET_ATTRIBUTE_BONUS_RANK  (0x0EFA71F4B4330E04)
-- attributeIndex: see SET_ATTRIBUTE_BASE_RANK
-- min build: 1207
---@param ped number
---@param coreIndex number
---@return number
function GetAttributeBonusRank(ped, coreIndex) end

-- GET_ATTRIBUTE_POINTS  (0x219DA04BAA9CB065)
-- attributeIndex: see SET_ATTRIBUTE_BASE_RANK
-- min build: 1207
---@param ped number
---@param attributeIndex number
---@return number
function GetAttributePoints(ped, attributeIndex) end

-- GET_ATTRIBUTE_RANK  (0xA4C8E23E29040DE0)
-- attributeIndex: see SET_ATTRIBUTE_BASE_RANK
-- min build: 1207
---@param ped number
---@param attributeIndex number
---@return number
function GetAttributeRank(ped, attributeIndex) end

-- GET_DEFAULT_ATTRIBUTE_POINTS_NEEDED_FOR_RANK  (0x94A7F191DB49A44D)
-- attributeIndex: see SET_ATTRIBUTE_BASE_RANK
-- min build: 1207
---@param modelHash number
---@param attributeIndex number
---@param rank number
---@return number
function GetDefaultAttributePointsNeededForRank(modelHash, attributeIndex, rank) end

-- GET_DEFAULT_ATTRIBUTE_RANK  (0x958DD43D41F89A47)
-- attributeIndex: see SET_ATTRIBUTE_BASE_RANK
-- min build: 1207
---@param modelHash number
---@param attributeIndex number
---@return number
function GetDefaultAttributeRank(modelHash, attributeIndex) end

-- GET_DEFAULT_MAX_ATTRIBUTE_RANK  (0x7C059C55AD940CB4)
-- attributeIndex: see SET_ATTRIBUTE_BASE_RANK
-- min build: 1207
---@param modelHash number
---@param attributeIndex number
---@return number
function GetDefaultMaxAttributeRank(modelHash, attributeIndex) end

-- GET_MAX_ATTRIBUTE_POINTS  (0x223BF310F854871C)
-- attributeIndex: see SET_ATTRIBUTE_BASE_RANK
-- min build: 1207
---@param ped number
---@param attributeIndex number
---@return number
function GetMaxAttributePoints(ped, attributeIndex) end

-- GET_MAX_ATTRIBUTE_RANK  (0x704674A0535A471D)
-- attributeIndex: see SET_ATTRIBUTE_BASE_RANK
-- min build: 1207
---@param ped number
---@param attributeIndex number
---@return number
function GetMaxAttributeRank(ped, attributeIndex) end

-- SET_ATTRIBUTE_BASE_RANK  (0x5DA12E025D47D4E5)
-- attributeIndex:
-- enum ePedAttribute
-- {
-- 	PA_HEALTH,
-- 	PA_STAMINA,
-- 	PA_SPECIALABILITY,
-- 	PA_COURAGE,
-- 	PA_AGILITY,
-- 	PA_SPEED,
-- 	PA_ACCELERATION,
-- 	PA_BONDING,
-- 	SA_HUNGER,
-- 	SA_FATIGUED,
-- 	SA_INEBRIATED,
-- 	SA_POISONED,
-- 	SA_BODYHEAT,
-- 	SA_BODYWEIGHT,
-- 	SA_OVERFED,
-- 	SA_SICKNESS,
-- 	SA_DIRTINESS,
-- 	SA_DIRTINESSHAT,
-- 	MTR_STRENGTH,
-- 	MTR_GRIT,
-- 	MTR_INSTINCT,
-- 	PA_UNRULINESS,
-- 	SA_DIRTINESSSKIN
-- };
-- min build: 1207
---@param ped number
---@param attributeIndex number
---@param newValue number
function SetAttributeBaseRank(ped, attributeIndex, newValue) end

-- SET_ATTRIBUTE_BONUS_RANK  (0x920F9488BD115EFB)
-- attributeIndex: see SET_ATTRIBUTE_BASE_RANK
-- min build: 1207
---@param ped number
---@param attributeIndex number
---@param newValue number
function SetAttributeBonusRank(ped, attributeIndex, newValue) end

-- SET_ATTRIBUTE_POINTS  (0x09A59688C26D88DF)
-- attributeIndex: see SET_ATTRIBUTE_BASE_RANK
-- min build: 1207
---@param ped number
---@param attributeIndex number
---@param p2 number
function SetAttributePoints(ped, attributeIndex, p2) end

-- STOP_ITEM_PREVIEW  (0xD962F8579D702DB5)
-- min build: 1207
function StopItemPreview() end
