---@meta

-- RDR3 namespace: IK -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _IK_SET_FOCUS_ENTITY_FOR_PED  (0x873C792E07A32C8B)
-- Sets or clears the ped's current IK focus/target entity reference.
-- 
-- Notes:
-- - Pass 0 as targetEntity to clear/reset the current IK focus entity.
-- - Commonly used alongside look-at / anim-scene transitions / TASK_CLEAR_LOOK_AT.
-- - Scripts often set this to the player ped when the actor should focus the player, and reset it back to 0 when leaving that state.
-- min build: 1207
---@param ped number
---@param targetEntity number
function _IkSetFocusEntityForPed(ped, targetEntity) end

-- _INVERSE_KINEMATICS_IS_ACTIVE  (0x6098139150DCC745)
-- Returns whether a specific IK index is currently active on the ped.
-- 
-- Notes:
-- - ikIndex is the IK index to query.
-- - Example research usage: index 6 is used for head/look-at IK and returns true while that IK is active.
-- min build: 1207
---@param ped number
---@param ikIndex number
---@return boolean
function _InverseKinematicsIsActive(ped, ikIndex) end

-- _INVERSE_KINEMATICS_POINT_AT  (0x0B9F7A01EC50448D)
-- Makes the ped point at a target with an arm. Must be called every frame while the point-at behavior should remain active.
-- 
-- args:
-- struct PointAtParams
-- {
-- 	alignas(8) BOOL   isRightHand;
-- 	alignas(8) float  offsetX;
-- 	alignas(8) float  offsetY;
-- 	alignas(8) float  offsetZ;
-- 	alignas(8) Entity entity;
-- 	alignas(8) int    boneIndex;
-- 	alignas(8) int    flags;     // (1 << 22) attaches the point-at to the target
-- 	alignas(8) int    p6;        // observed 1..5
-- 	alignas(8) int    p7;        // observed 1..2
-- };
-- min build: 1207
---@param ped number
---@return any
function _InverseKinematicsPointAt(ped) end

-- _INVERSE_KINEMATICS_REQUEST_LOOK_AT  (0x66F9EB44342BB4C5)
-- Requests a look-at IK action for the ped using a script arg struct.
-- 
-- args:
-- struct IkRequestLookAtArgs
-- {
-- 	alignas(8) float  x;
-- 	alignas(8) float  y;
-- 	alignas(8) float  z;
-- 	alignas(8) Entity targetEntity;
-- 	alignas(8) int    targetBone;    // often 21030 (head) or -1
-- 	alignas(8) int    flags;         // bitfield
-- 	alignas(8) int    p6;
-- 	alignas(8) int    durationMs;    // often 500
-- 	alignas(8) int    p8;
-- 	alignas(8) int    p9;
-- 	alignas(8) int    p10;
-- 	alignas(8) int    p11;
-- 	alignas(8) int    p12;
-- 	alignas(8) int    p13;
-- 	alignas(8) int    p14;
-- 	alignas(8) int    p15;
-- 	alignas(8) int    p16;
-- 	alignas(8) int    p17;
-- 	alignas(8) int    p18;
-- 	alignas(8) int    p19;
-- 	alignas(8) int    p20;
-- 	alignas(8) int    p21;
-- 	alignas(8) int    p22;
-- };
-- 
-- static_assert(sizeof(IkRequestLookAtArgs) == 0xB8, "incorrect IkRequestLookAtArgs size");
-- 
-- Notes:
-- - Scripts use this both for entity look-at and world-position/offset look-at.
-- - Common observed fields: targetEntity, targetBone, durationMs, plus mode/priority-like fields p8 and p17..p22.
-- - If ped == 0 while a task sequence is active, the native queues an internal look-at IK task into the current sequence instead of applying immediately.
-- - Pairs naturally with _INVERSE_KINEMATICS_IS_ACTIVE / _INVERSE_KINEMATICS_SET_DISABLED_FOR_PED.
-- min build: 1207
---@param ped number
---@return any
function _InverseKinematicsRequestLookAt(ped) end

-- _INVERSE_KINEMATICS_SET_DISABLED_FOR_PED  (0x0EABF182FBB63D72)
-- Enables/disables a specific IK index on the ped.
-- 
-- Notes:
-- - ikIndex is not a raw bit index; it maps to one or more internal IK flags.
-- - Observed script usage commonly passes ikIndex = 1 during wardrobe/shop-style interactions.
-- - Valid observed ikIndex range from code: 0..8.
-- - Pairs naturally with _INVERSE_KINEMATICS_IS_ACTIVE.
-- min build: 1207
---@param ped number
---@param ikIndex number
---@param disabled boolean
---@return boolean
function _InverseKinematicsSetDisabledForPed(ped, ikIndex, disabled) end
