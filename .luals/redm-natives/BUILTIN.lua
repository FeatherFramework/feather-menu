---@meta

-- RDR3 namespace: BUILTIN -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- CEIL  (0x11E019C8F43ACC8A)
-- Rounds a float value up to the next whole number
-- min build: 1207
---@param value number
---@return number
function Ceil(value) end

-- COS  (0xD0FFB162F40A139C)
-- min build: 1207
---@param value number
---@return number
function Cos(value) end

-- FLOOR  (0xF34EE736CF047844)
-- Rounds a float value down to the next whole number
-- min build: 1207
---@param value number
---@return number
function Floor(value) end

-- LOG10  (0xE816E655DE37FE20)
-- Old name: _LOG10
-- min build: 1232
---@param value number
---@return number
function Log10(value) end

-- POW  (0xE3621CC40F31FE2E)
-- min build: 1207
---@param base number
---@param exponent number
---@return number
function Pow(base, exponent) end

-- ROUND  (0xF2DB717A73826179)
-- min build: 1207
---@param value number
---@return number
function Round(value) end

-- SET_THIS_THREAD_PRIORITY  (0x42B65DEEF2EDF2A1)
-- THREAD_PRIO_HIGHEST = 0
-- THREAD_PRIO_NORMAL = 1
-- THREAD_PRIO_LOWEST = 2
-- THREAD_PRIO_MANUAL_UPDATE = 100
-- min build: 1207
---@param priority number
function SetThisThreadPriority(priority) end

-- SETTIMERA  (0xC1B1E9A034A63A62)
-- min build: 1207
---@param value number
function Settimera(value) end

-- SETTIMERB  (0x5AE11BC36633DE4E)
-- min build: 1207
---@param value number
function Settimerb(value) end

-- SHIFT_LEFT  (0xEDD95A39E5544DE8)
-- min build: 1207
---@param value number
---@param bitShift number
---@return number
function ShiftLeft(value, bitShift) end

-- SHIFT_RIGHT  (0x97EF1E5BCE9DC075)
-- min build: 1207
---@param value number
---@param bitShift number
---@return number
function ShiftRight(value, bitShift) end

-- SIN  (0x0BADBFA3B172435F)
-- min build: 1207
---@param value number
---@return number
function Sin(value) end

-- SQRT  (0x71D93B57D07F9804)
-- min build: 1207
---@param value number
---@return number
function Sqrt(value) end

-- TIMERA  (0x83666F9FB8FEBD4B)
-- Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
-- min build: 1207
---@return number
function Timera() end

-- TIMERB  (0xC9D9444186B5A374)
-- min build: 1207
---@return number
function Timerb() end

-- TIMESTEP  (0x0000000050597EE2)
-- Gets the current frame time.
-- min build: 1207
---@return number
function Timestep() end

-- TO_FLOAT  (0xBBDA792448DB5A89)
-- min build: 1207
---@param value number
---@return number
function ToFloat(value) end

-- VDIST  (0x2A488C176D52CCA5)
-- Calculates distance between vectors.
-- The value returned will be in meters.
-- min build: 1207
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return number
function Vdist(x1, y1, z1, x2, y2, z2) end

-- VDIST2  (0xB7A628320EFF8E47)
-- Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
-- The value returned will be in RAGE units.
-- min build: 1207
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return number
function Vdist2(x1, y1, z1, x2, y2, z2) end

-- VMAG  (0x652D2EEEF1D3E62C)
-- Calculates the magnitude of a vector.
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@return number
function Vmag(x, y, z) end

-- VMAG2  (0xA8CEACB4F35AE058)
-- Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@return number
function Vmag2(x, y, z) end

-- WAIT  (0x4EDE34FBADD967A6)
-- min build: 1207
---@param ms number
function Wait(ms) end
