---@meta

-- RDR3 namespace: ANTICHEAT -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _REPORT_PLAYER_BAD_SPORT_BEHAVIOR  (0xC31C44C43B48FDE3)
-- nullsub, doesn't do anything
-- however it is being used in tty scripts: [NET_BAD_SPORT_REPORT_PLAYER] Detected bad sport behavior from Player
-- badSportBehavior: BS_QUITTER = 0, BS_VEHICLE_DESTRUCTION = 1, BS_VOTED_OUT = 2
-- min build: 1207
---@param badSportBehaviorType number
---@return any
function _ReportPlayerBadSportBehavior(badSportBehaviorType) end
