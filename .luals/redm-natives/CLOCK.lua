---@meta

-- RDR3 namespace: CLOCK -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _ADD_TIME_TO_DATE_TIME  (0x28EEACE9B43D9597)
-- min build: 1207
---@return any
---@return any
---@return any
function _AddTimeToDateTime() end

-- _GET_POSIX_TIME_STRUCT  (0x86A68E84E5884951)
-- Same as GET_POSIX_TIME except that it takes a single pointer to a struct.
-- min build: 1207
---@return any
function _GetPosixTimeStruct() end

-- _GET_SECONDS_SINCE_BASE_YEAR  (0x78FD8BE812E436B2)
-- Base year is 1898.
-- min build: 1207
---@return number
function _GetSecondsSinceBaseYear() end

-- _PAUSE_CLOCK_THIS_FRAME  (0x568D998A9FF96774)
-- min build: 1207
---@param toggle boolean
function _PauseClockThisFrame(toggle) end

-- _SET_MILLISECONDS_PER_GAME_MINUTE  (0x04EEDB3848DACF68)
-- min build: 1207
---@param ms number
function _SetMillisecondsPerGameMinute(ms) end

-- ADD_TO_CLOCK_TIME  (0xAB7C251C7701D336)
-- min build: 1207
---@param hours number
---@param minutes number
---@param seconds number
function AddToClockTime(hours, minutes, seconds) end

-- ADVANCE_CLOCK_TIME_TO  (0x0184750AE88D0B1D)
-- min build: 1207
---@param hour number
---@param minute number
---@param second number
function AdvanceClockTimeTo(hour, minute, second) end

-- GET_CLOCK_DAY_OF_MONTH  (0xDF2FD796C54480A5)
-- min build: 1207
---@return number
function GetClockDayOfMonth() end

-- GET_CLOCK_DAY_OF_WEEK  (0x4DD02D4C7FB30076)
-- Gets the current day of the week.
-- 
-- 0: Sunday
-- 1: Monday
-- 2: Tuesday
-- 3: Wednesday
-- 4: Thursday
-- 5: Friday
-- 6: Saturday
-- min build: 1207
---@return number
function GetClockDayOfWeek() end

-- GET_CLOCK_HOURS  (0xC82CF208C2B19199)
-- Gets the current ingame hour, expressed without zeros. (09:34 will be represented as 9)
-- min build: 1207
---@return number
function GetClockHours() end

-- GET_CLOCK_MINUTES  (0x4E162231B823DBBF)
-- Gets the current ingame clock minute.
-- min build: 1207
---@return number
function GetClockMinutes() end

-- GET_CLOCK_MONTH  (0x2D44E8FC79EAB1AC)
-- min build: 1207
---@return number
function GetClockMonth() end

-- GET_CLOCK_SECONDS  (0xB6101ABE62B5F080)
-- Gets the current ingame clock second. Note that ingame clock seconds change really fast since a day in RDR is only 48 minutes in real life.
-- min build: 1207
---@return number
function GetClockSeconds() end

-- GET_CLOCK_YEAR  (0xE136DCA28C4A48BA)
-- min build: 1207
---@return number
function GetClockYear() end

-- GET_MILLISECONDS_PER_GAME_MINUTE  (0xE4CB8D126501EC52)
-- min build: 1207
---@return number
function GetMillisecondsPerGameMinute() end

-- GET_POSIX_TIME  (0x90338AD4A784E455)
-- min build: 1207
---@return number
---@return number
---@return number
---@return number
---@return number
---@return number
function GetPosixTime() end

-- PAUSE_CLOCK  (0x4D1A590C92BF377E)
-- min build: 1207
---@param toggle boolean
---@param unused any
function PauseClock(toggle, unused) end

-- SET_CLOCK_DATE  (0x02AD3092562941E2)
-- min build: 1207
---@param day number
---@param month number
---@param year number
function SetClockDate(day, month, year) end

-- SET_CLOCK_TIME  (0x3A52C59FFB2DEED8)
-- SET_CLOCK_TIME(12, 34, 56);
-- min build: 1207
---@param hour number
---@param minute number
---@param second number
function SetClockTime(hour, minute, second) end
