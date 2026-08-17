---@meta

-- RDR3 namespace: SHAPETEST -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x04AA59CA40571C2E  (0x04AA59CA40571C2E)
-- min build: 1207
---@param p0 any
---@param p1 any
---@return any
function N_0x04AA59CA40571C2E(p0, p1) end

-- GET_SHAPE_TEST_RESULT  (0xEDE8AC7C5108FB1D)
-- Returns the result of a shape test: 0 if the handle is invalid, 1 if the shape test is still pending, or 2 if the shape test has completed, and the handle should be invalidated.
-- 
-- When used with an asynchronous shape test, this native should be looped until returning 0 or 2, after which the handle is invalidated.
-- 
-- enum eShapeTestStatus
-- {
-- 	SHAPETEST_STATUS_NONEXISTENT,
-- 	SHAPETEST_STATUS_RESULTS_NOTREADY,
-- 	SHAPETEST_STATUS_RESULTS_READY
-- };
-- min build: 1207
---@param shapeTestHandle number
---@return number
---@return boolean
---@return vector3
---@return vector3
---@return number
function GetShapeTestResult(shapeTestHandle) end

-- START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE  (0x377906D8A31E5586)
-- Does the same as 0x7EE9F5D83DD4F90E, except blocking until the shape test completes.
-- min build: 1207
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param flags number
---@param entityToIgnore number
---@param p8 number
---@return number
function StartExpensiveSynchronousShapeTestLosProbe(x1, y1, z1, x2, y2, z2, flags, entityToIgnore, p8) end

-- START_SHAPE_TEST_BOX  (0xFE466162C4401D18)
-- min build: 1207
---@param posX number
---@param posY number
---@param posZ number
---@param dimensionsX number
---@param dimensionsY number
---@param dimensionsZ number
---@param rotX number
---@param rotY number
---@param rotZ number
---@param rotationOrder number
---@param flags number
---@param entityToIgnore number
---@param options number
---@return number
function StartShapeTestBox(posX, posY, posZ, dimensionsX, dimensionsY, dimensionsZ, rotX, rotY, rotZ, rotationOrder, flags, entityToIgnore, options) end

-- START_SHAPE_TEST_CAPSULE  (0x28579D1B8F8AAC80)
-- min build: 1207
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param radius number
---@param flags number
---@param entityToIgnore number
---@param p9 number
---@return number
function StartShapeTestCapsule(x1, y1, z1, x2, y2, z2, radius, flags, entityToIgnore, p9) end

-- START_SHAPE_TEST_LOS_PROBE  (0x7EE9F5D83DD4F90E)
-- Asynchronously starts a line-of-sight (raycast) world probe shape test.
-- 
-- Use the handle with 0x3D87450E15D98694 or 0x65287525D951F6BE until it returns 0 or 2.
-- 
-- p8 is a bit mask with bits 1, 2 and/or 4, relating to collider types; 4 should usually be used.
-- min build: 1207
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param flags number
---@param entity number
---@param p8 number
---@return number
function StartShapeTestLosProbe(x1, y1, z1, x2, y2, z2, flags, entity, p8) end

-- START_SHAPE_TEST_MOUSE_CURSOR_LOS_PROBE  (0x9839013D8B6014F1)
-- Old name: _START_SHAPE_TEST_SURROUNDING_COORDS
-- min build: 1207
---@param flag number
---@param entity number
---@param flag2 number
---@return number
---@return vector3
---@return vector3
function StartShapeTestMouseCursorLosProbe(flag, entity, flag2) end

-- START_SHAPE_TEST_SWEPT_SPHERE  (0xAA5B7C8309F73230)
-- min build: 1207
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param radius number
---@param flags number
---@param entity number
---@param p9 any
---@return number
function StartShapeTestSweptSphere(x1, y1, z1, x2, y2, z2, radius, flags, entity, p9) end
