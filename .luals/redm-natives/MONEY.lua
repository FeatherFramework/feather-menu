---@meta

-- RDR3 namespace: MONEY -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x07AD9E43FD478527  (0x07AD9E43FD478527)
-- min build: 1207
---@param p0 any
---@param p1 any
---@return boolean
function N_0x07AD9E43FD478527(p0, p1) end

-- _0xA46FD001D1BE896C  (0xA46FD001D1BE896C)
-- min build: 1207
---@return string
function N_0xA46FD001D1BE896C() end

-- _MONEY_DECREMENT_CASH_BALANCE  (0x466BC8769CF26A7A)
-- min build: 1207
---@param amount number
---@return boolean
function _MoneyDecrementCashBalance(amount) end

-- _MONEY_GET_CASH_BALANCE  (0x0C02DABFA3B98176)
-- min build: 1207
---@return number
function _MoneyGetCashBalance() end

-- _MONEY_INCREMENT_CASH_BALANCE  (0xBC3422DC91667621)
-- min build: 1207
---@param amount number
---@param addReason number
---@return boolean
function _MoneyIncrementCashBalance(amount, addReason) end

-- _NETWORK_GET_CASH_BALANCE  (0x8A67120DBC299525)
-- min build: 1207
---@return number
function _NetworkGetCashBalance() end

-- _NETWORK_GET_STRING_CASH_BALANCE  (0x282D36FF103D78DF)
-- min build: 1207
---@return string
function _NetworkGetStringCashBalance() end

-- _NETWORK_IS_MONEY_BALANCE_NOT_LESS_THAN  (0xAEC5F0119867E457)
-- min build: 1207
---@param cashBalance number
---@param goldBarBalance number
---@return boolean
function _NetworkIsMoneyBalanceNotLessThan(cashBalance, goldBarBalance) end
