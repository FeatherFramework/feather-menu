---@meta

-- RDR3 namespace: ANIMSCENE -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0x1407F5115FB9583E  (0x1407F5115FB9583E)
-- Used in SP R* Scripts only
-- Params: p1 = 2B-LowHonor, 2A-HighHonor
-- min build: 1207
---@param animScene number
---@param p1 string
---@return boolean
function N_0x1407F5115FB9583E(animScene, p1) end

-- _0x1AD896BF43619551  (0x1AD896BF43619551)
-- Used in braithwaites2 SP R* Scripts only
-- _A*
-- min build: 1207
function N_0x1AD896BF43619551() end

-- _0x1C5D33A4293E6DDE  (0x1C5D33A4293E6DDE)
-- Used in SP R* Scripts only
-- _IS_ANIM_SCENE_P*
-- min build: 1207
---@param animScene number
---@param phaseName string
---@return boolean
function N_0x1C5D33A4293E6DDE(animScene, phaseName) end

-- _0x2DB524750DC41ED4  (0x2DB524750DC41ED4)
-- Used in SP R* Scripts only
-- _IS_PED_* - _IS_SC*
-- min build: 1207
---@return boolean
function N_0x2DB524750DC41ED4() end

-- _0x3641FCD53E59B335  (0x3641FCD53E59B335)
-- p2: MINIGAME_GET_SECONDARY_VOICE_STRING
-- _SET_*
-- min build: 1207
---@param mgmHandle number
---@param ped number
---@param secondaryVoiceString string
function N_0x3641FCD53E59B335(mgmHandle, ped, secondaryVoiceString) end

-- _0x3B393716C3FD8237  (0x3B393716C3FD8237)
-- Used in SP R* Scripts only
-- _IS_*
-- min build: 1207
---@param ped number
---@return boolean
function N_0x3B393716C3FD8237(ped) end

-- _0x4B85B3CF91972222  (0x4B85B3CF91972222)
-- Used in Script Function CUTSCENE_MANAGE_SKIP
-- _CHECK_* (?)
-- min build: 1207
---@param animScene number
---@return boolean
function N_0x4B85B3CF91972222(animScene) end

-- _0x5D7BFDA2290B4E39  (0x5D7BFDA2290B4E39)
-- Used in SP R* Scripts only
-- _IS_ANIM_SCENE_R* - _IS_ANIM_SCENE_S*
-- min build: 1207
---@param p0 string
---@return boolean
function N_0x5D7BFDA2290B4E39(p0) end

-- _0x61B2AAEF645DDAF0  (0x61B2AAEF645DDAF0)
-- Only used in tg_p R* Script
-- Returns true when mgm event success
-- _PREPARE_* - _REGISTER_*
-- min build: 1207
---@param mgmEventHandle number
---@param p1 string
---@param seatId number
---@param p3 number
---@param p4 boolean
---@return boolean
function N_0x61B2AAEF645DDAF0(mgmEventHandle, p1, seatId, p3, p4) end

-- _0x73616E64696C132E  (0x73616E64696C132E)
-- Used in SP R* Scripts only
-- _CO* - _CR*
-- min build: 1207
---@param animScene number
---@param p1 boolean
---@return boolean
function N_0x73616E64696C132E(animScene, p1) end

-- _0x9AAE3C1148A09BCA  (0x9AAE3C1148A09BCA)
-- Checks if AnimScene is aborted, and an unknown check. Usually used with 0x34A0671BE613D3D0
-- Used in SP R* Scripts only
-- _IS_ANIM_SCENE_*
-- min build: 1207
---@param animScene number
---@return boolean
function N_0x9AAE3C1148A09BCA(animScene) end

-- _0xA96619FE85159ED2  (0xA96619FE85159ED2)
-- Checks if AnimScene is aborted, and an unknown check.
-- Used in SP R* Scripts only
-- _WAS_ANIM_SCENE_*
-- min build: 1207
---@param animScene number
---@return boolean
function N_0xA96619FE85159ED2(animScene) end

-- _0xAE6DE22DE0ED4554  (0xAE6DE22DE0ED4554)
-- _UNLOAD_* - _WAS_ANIM_SCENE_*
-- min build: 1207
---@param mgmHandle number
---@param ped number
function N_0xAE6DE22DE0ED4554(mgmHandle, ped) end

-- _0xB1A196BAFE650402  (0xB1A196BAFE650402)
-- _PREPARE_* - _REGISTER_*
-- min build: 1207
---@param mgmHandle number
---@param ped number
function N_0xB1A196BAFE650402(mgmHandle, ped) end

-- _0xC1193521E3B9FADD  (0xC1193521E3B9FADD)
-- Used in SP R* Scripts only
-- _RESUME_* - _SET_A*
-- min build: 1207
---@param entity number
---@param p1 boolean
function N_0xC1193521E3B9FADD(entity, p1) end

-- _0xCDCD7B2D49AEE73A  (0xCDCD7B2D49AEE73A)
-- Used in SP R* Scripts only
-- _SET_P*
-- min build: 1207
---@param p0 boolean
function N_0xCDCD7B2D49AEE73A(p0) end

-- _0xD70C7A30412F8FA0  (0xD70C7A30412F8FA0)
-- Checks if AnimScene is NOT aborted, and an unknown check. Usually used with ABORT_ANIM_SCENE
-- Used in SP R* Scripts only
-- _IS_ANIM_SCENE_*
-- min build: 1207
---@param animScene number
---@return boolean
function N_0xD70C7A30412F8FA0(animScene) end

-- _0xE12D7B4B959644CD  (0xE12D7B4B959644CD)
-- Used in SP R* Scripts only
-- _SET_B* - _SET_C*
-- min build: 1207
function N_0xE12D7B4B959644CD() end

-- _0xEA41D44A8D42057B  (0xEA41D44A8D42057B)
-- Used in SP R* Scripts only
-- _PAUSE_* - _PLAY_*
-- min build: 1207
---@return boolean
function N_0xEA41D44A8D42057B() end

-- _CLEAR_ANIM_SCENE_WAS_SKIPPED  (0x8A8208AE92BF87A5)
-- min build: 1207
---@param animScene number
function _ClearAnimSceneWasSkipped(animScene) end

-- _CLEAR_BREAKOUT_ARCHETYPE  (0xBC781D24AA11F179)
-- min build: 1207
---@param ped number
function _ClearBreakoutArchetype(ped) end

-- _CREATE_ANIM_SCENE  (0x1FCA98E33C1437B3)
-- flags: https://github.com/Halen84/RDR3-Native-Flags-And-Enums/tree/main/eAnimSceneFlag
-- min build: 1207
---@param animDict string
---@param flags number
---@param playbackListName string
---@param p3 boolean
---@param p4 boolean
---@return number
function _CreateAnimScene(animDict, flags, playbackListName, p3, p4) end

-- _CREATE_MGM_SYSTEM  (0xA1300DE03E5D1973)
-- Returns mgmHandle
-- min build: 1207
---@param mgmFilename string
---@return number
function _CreateMgmSystem(mgmFilename) end

-- _DELETE_ANIM_SCENE  (0x84EEDB2C6E650000)
-- min build: 1207
---@param animScene number
function _DeleteAnimScene(animScene) end

-- _DELETE_MGM_SYSTEM  (0x53CB3970BA02E3CC)
-- min build: 1207
---@param mgmHandle number
function _DeleteMgmSystem(mgmHandle) end

-- _DOES_ANIM_SCENE_OWNERSHIP_OF_ENTITY_EXIST  (0x9D1ECA9337BE9FC3)
-- min build: 1207
---@param animScene number
---@param entityName string
---@return boolean
function _DoesAnimSceneOwnershipOfEntityExist(animScene, entityName) end

-- _DOES_ANIM_SCENE_PLAY_LIST_EXIST  (0xA9016536015DE29D)
-- min build: 1207
---@param animScene number
---@param playbackListName string
---@return boolean
function _DoesAnimScenePlayListExist(animScene, playbackListName) end

-- _DOES_ENTITY_WITH_ID_EXIST_IN_ANIM_SCENE  (0x6F1F0B17109309DA)
-- min build: 1207
---@param animScene number
---@param entityId string
---@return boolean
function _DoesEntityWithIdExistInAnimScene(animScene, entityId) end

-- _GET_ANIM_SCENE_DICT  (0xAE5ADA4FE3E21ADC)
-- min build: 1207
---@param animScene number
---@return number
function _GetAnimSceneDict(animScene) end

-- _GET_ANIM_SCENE_DURATION  (0x49F1D143ADE32656)
-- min build: 1207
---@param animScene number
---@return number
function _GetAnimSceneDuration(animScene) end

-- _GET_ANIM_SCENE_OBJECT  (0xFB5674687A1B2814)
-- min build: 1207
---@param animScene number
---@param name string
---@param isNetwork boolean
---@return number
function _GetAnimSceneObject(animScene, name, isNetwork) end

-- _GET_ANIM_SCENE_PED  (0xE5822422197BBBA3)
-- min build: 1207
---@param animScene number
---@param name string
---@param isNetwork boolean
---@return number
function _GetAnimScenePed(animScene, name, isNetwork) end

-- _GET_ANIM_SCENE_PLAYBACK_LIST_PHASE_AUDIO_LOAD_STRESS  (0x9E036D5204FFBBC8)
-- min build: 1207
---@param animScene number
---@param phaseName string
---@return number
function _GetAnimScenePlaybackListPhaseAudioLoadStress(animScene, phaseName) end

-- _GET_ANIM_SCENE_RATE  (0x43C21623E42B821B)
-- min build: 1207
---@param animScene number
---@return number
function _GetAnimSceneRate(animScene) end

-- _GET_ANIM_SCENE_TIME  (0x61BE7D6186260002)
-- min build: 1207
---@param animScene number
---@return number
function _GetAnimSceneTime(animScene) end

-- _GET_ANIM_SCENE_VEHICLE  (0x430EE0A19BC5A287)
-- min build: 1207
---@param animScene number
---@param name string
---@param isNetwork boolean
---@return number
function _GetAnimSceneVehicle(animScene, name, isNetwork) end

-- _HAS_ENTITY_ENTERED_ANIM_SCENE  (0x337F1CC8EE895601)
-- _HAS_L* (?)
-- min build: 1207
---@param animScene number
---@param entityName string
---@return boolean
function _HasEntityEnteredAnimScene(animScene, entityName) end

-- _IS_ANIM_SCENE_ABORTED  (0x34A0671BE613D3D0)
-- min build: 1207
---@param animScene number
---@return boolean
function _IsAnimSceneAborted(animScene) end

-- _IS_ANIM_SCENE_LOADING  (0x59606519FF9D3EC2)
-- min build: 1207
---@param animScene number
---@param p1 boolean
---@return boolean
function _IsAnimSceneLoading(animScene, p1) end

-- _IS_ANIM_SCENE_METADATA_ASSET_IN_RANGE_LOADING  (0xF8D1D2DAB6007EEF)
-- min build: 1207
---@param animScene number
---@param p1 boolean
---@return boolean
function _IsAnimSceneMetadataAssetInRangeLoading(animScene, p1) end

-- _IS_ANIM_SCENE_PAUSED  (0x4B4038796F0D6566)
-- min build: 1207
---@param animScene number
---@return boolean
function _IsAnimScenePaused(animScene) end

-- _IS_ANIM_SCENE_PLAYBACK_LIST_PHASE_ACTIVE  (0x1F0E401031E20146)
-- min build: 1207
---@param animScene number
---@param phaseName string
---@return boolean
function _IsAnimScenePlaybackListPhaseActive(animScene, phaseName) end

-- _IS_ANIM_SCENE_PLAYBACK_LIST_PHASE_LOADED  (0x23E33CB9F4A3F547)
-- min build: 1207
---@param animScene number
---@param phaseName string
---@return boolean
function _IsAnimScenePlaybackListPhaseLoaded(animScene, phaseName) end

-- _IS_ANIM_SCENE_PLAYBACK_LIST_PHASE_LOADING  (0x0DF57F86FE71DBE5)
-- min build: 1207
---@param animScene number
---@param phaseName string
---@return boolean
function _IsAnimScenePlaybackListPhaseLoading(animScene, phaseName) end

-- _IS_ANIM_SCENE_SKIPPABLE  (0x4CDFFE3189EBDBD0)
-- min build: 1207
---@param animScene number
---@return boolean
function _IsAnimSceneSkippable(animScene) end

-- _IS_MGM_SYSTEM_LOADED  (0xFDFC14799373283F)
-- MGM stands for MiniGameMoments.
-- min build: 1207
---@param mgmFilename string
---@return boolean
function _IsMgmSystemLoaded(mgmFilename) end

-- _LOAD_MGM_ASSETS  (0xB727A847862CB00A)
-- Used to request MiniGameMoments Assets.
-- 
-- mgmFilename's:
-- Poker
-- PokerArthur
-- PokerArthurCamp
-- PokerJohn
-- PokerJohnCamp
-- min build: 1207
---@param mgmFilename string
---@return boolean
function _LoadMgmAssets(mgmFilename) end

-- _PAUSE_SCRIPT_THREADS  (0x37C1257849DEF24A)
-- Pauses all script threads except the one that called it.
-- min build: 1207
---@param toggle boolean
function _PauseScriptThreads(toggle) end

-- _RELEASE_ANIM_SCENE_PLAY_LIST  (0xAE6ADA8FE7E84ACC)
-- min build: 1207
---@param animScene number
---@param playlistName string
---@return boolean
function _ReleaseAnimScenePlayList(animScene, playlistName) end

-- _REQUEST_PHOTO_MODE_DEFREEZE  (0x41AFA5F228B0B6B0)
-- min build: 1207
function _RequestPhotoModeDefreeze() end

-- _REQUEST_PHOTO_MODE_FREEZE  (0x7C709C01D43D94CD)
-- min build: 1207
function _RequestPhotoModeFreeze() end

-- _SET_BREAKOUT_ARCHETYPE  (0x99B2A2E3655DEAF1)
-- min build: 1207
---@param ped number
---@param archetype string
function _SetBreakoutArchetype(ped, archetype) end

-- _SET_MGM_EVENT  (0x07706C4CC9C6CC9E)
-- min build: 1207
---@param mgmEventHandle number
---@param p1 string
---@param seatId any
---@param p3 number
---@param p4 number
function _SetMgmEvent(mgmEventHandle, p1, seatId, p3, p4) end

-- ABORT_ANIM_SCENE  (0x718CF1328D20C2B3)
-- min build: 1207
---@param animScene number
---@param p1 boolean
function AbortAnimScene(animScene, p1) end

-- ATTACH_ANIM_SCENE_TO_ENTITY  (0xDC418495DBA327A1)
-- min build: 1207
---@param animScene number
---@param entity number
---@param p2 number
function AttachAnimSceneToEntity(animScene, entity, p2) end

-- ATTACH_ANIM_SCENE_TO_ENTITY_PRESERVING_LOCATION  (0x1C0B105C3F30B88D)
-- min build: 1207
---@param animScene number
---@param entity number
---@param p2 number
function AttachAnimSceneToEntityPreservingLocation(animScene, entity, p2) end

-- BLOCK_ANIM_SCENE_FADING_NEXT_FRAME  (0x1B70811D3BF75DB9)
-- min build: 1207
---@param p0 boolean
---@param p1 boolean
function BlockAnimSceneFadingNextFrame(p0, p1) end

-- CHECK_OWNERSHIP_OF_ANIM_SCENE  (0x661B8683611B9B97)
-- min build: 1207
---@param animScene number
---@return boolean
function CheckOwnershipOfAnimScene(animScene) end

-- COULD_ANIM_SCENE_ENTITY_REACH_EXIT_NEXT_FRAME  (0x73616E64696C616E)
-- min build: 1207
---@param animScene number
---@param entityName string
---@param p2 any
---@param p3 any
---@return boolean
function CouldAnimSceneEntityReachExitNextFrame(animScene, entityName, p2, p3) end

-- DETACH_ANIM_SCENE  (0x6843A1AA3A336DFF)
-- min build: 1207
---@param animScene number
function DetachAnimScene(animScene) end

-- DETACH_ANIM_SCENE_PRESERVING_LOCATION  (0xA2507C4948C83D2E)
-- min build: 1207
---@param animScene number
function DetachAnimScenePreservingLocation(animScene) end

-- DOES_ANIM_SCENE_EXIST  (0x25557E324489393C)
-- min build: 1207
---@param animScene number
---@return boolean
function DoesAnimSceneExist(animScene) end

-- FADE_ANIM_SCENE_AUDIO_IN  (0xA41351EA2A18A0AD)
-- min build: 1207
---@param animScene number
---@param p1 number
function FadeAnimSceneAudioIn(animScene, p1) end

-- FADE_ANIM_SCENE_AUDIO_OUT  (0x323E3AD772BA5D57)
-- min build: 1207
---@param animScene number
---@param p1 number
function FadeAnimSceneAudioOut(animScene, p1) end

-- GET_ANIM_SCENE_BOOL  (0x07A6F6447ECA9B64)
-- min build: 1207
---@param animScene number
---@param name string
---@return boolean
function GetAnimSceneBool(animScene, name) end

-- GET_ANIM_SCENE_CURRENT_ACTIVE_CAMERA_COUNT  (0x4822A65D5AF64E69)
-- min build: 1207
---@param animScene number
---@return number
function GetAnimSceneCurrentActiveCameraCount(animScene) end

-- GET_ANIM_SCENE_ENTITY_LOCATION_DATA  (0x8398438D8F14F56D)
-- min build: 1207
---@param animScene number
---@param entityName string
---@param p3 boolean
---@param playbackListName string
---@param p5 number
---@return boolean
---@return vector3
function GetAnimSceneEntityLocationData(animScene, entityName, p3, playbackListName, p5) end

-- GET_ANIM_SCENE_FLOAT  (0xCC24CB07F60B496E)
-- min build: 1207
---@param animScene number
---@param name string
---@return number
function GetAnimSceneFloat(animScene, name) end

-- GET_ANIM_SCENE_INT  (0x2B7277484CC095FD)
-- min build: 1207
---@param animScene number
---@param name string
---@return number
function GetAnimSceneInt(animScene, name) end

-- GET_ANIM_SCENE_ORIGIN  (0xADF1D53F3B1FE0A7)
-- min build: 1207
---@param animScene number
---@param order number
---@return vector3
---@return vector3
function GetAnimSceneOrigin(animScene, order) end

-- GET_ANIM_SCENE_PHASE  (0x3FBC3F51BF12DFBF)
-- min build: 1207
---@param animScene number
---@return number
function GetAnimScenePhase(animScene) end

-- HAS_ANIM_SCENE_EXITED  (0xF94692EB9DC15D74)
-- min build: 1207
---@param animScene number
---@param p1 boolean
---@return boolean
function HasAnimSceneExited(animScene, p1) end

-- HAS_ENTITY_EXITED_ANIM_SCENE  (0xB89FCFF19DAFFF28)
-- min build: 1207
---@param animScene number
---@param entityName string
---@return boolean
function HasEntityExitedAnimScene(animScene, entityName) end

-- IS_ANIM_SCENE_EXITING_THIS_FRAME  (0xCDC5512A407CF08D)
-- min build: 1207
---@param animScene number
---@return boolean
function IsAnimSceneExitingThisFrame(animScene) end

-- IS_ANIM_SCENE_FINISHED  (0xD8254CB2C586412B)
-- min build: 1207
---@param animScene number
---@param p1 boolean
---@return boolean
function IsAnimSceneFinished(animScene, p1) end

-- IS_ANIM_SCENE_IN_SECTION  (0x8D81E7824B7753F7)
-- min build: 1207
---@param animScene number
---@param sectionName string
---@param p2 boolean
---@return boolean
function IsAnimSceneInSection(animScene, sectionName, p2) end

-- IS_ANIM_SCENE_LOADED  (0x477122B8D05E7968)
-- min build: 1207
---@param animScene number
---@param p1 boolean
---@param p2 boolean
---@return boolean
function IsAnimSceneLoaded(animScene, p1, p2) end

-- IS_ANIM_SCENE_METADATA_LOADED  (0x95531A4A20CCE7BC)
-- min build: 1207
---@param animScene number
---@param p1 boolean
---@return boolean
function IsAnimSceneMetadataLoaded(animScene, p1) end

-- IS_ANIM_SCENE_RUNNING  (0xCBFC7725DE6CE2E0)
-- min build: 1207
---@param animScene number
---@param p1 boolean
---@return boolean
function IsAnimSceneRunning(animScene, p1) end

-- IS_ENTITY_EXITING_ANIM_SCENE_THIS_FRAME  (0x005E6F28DD7ED58D)
-- min build: 1207
---@param animScene number
---@param entityName string
---@return boolean
function IsEntityExitingAnimSceneThisFrame(animScene, entityName) end

-- IS_ENTITY_PLAYING_ANIM_SCENE  (0x3AB6C7B0BB0DF4B1)
-- min build: 1207
---@param entity number
---@param animScene number
---@return boolean
function IsEntityPlayingAnimScene(entity, animScene) end

-- LOAD_ANIM_SCENE  (0xAF068580194D9DC7)
-- min build: 1207
---@param animScene number
function LoadAnimScene(animScene) end

-- REMOVE_ANIM_SCENE_ENTITY  (0x2BF96692C67F3E53)
-- min build: 1207
---@param animScene number
---@param entityName string
---@param entity number
function RemoveAnimSceneEntity(animScene, entityName, entity) end

-- REQUEST_ANIM_SCENE_PLAY_LIST  (0xDF7B5144E25CD3FE)
-- min build: 1207
---@param animScene number
---@param playlistName string
---@return boolean
function RequestAnimScenePlayList(animScene, playlistName) end

-- RESET_ANIM_SCENE  (0x8FDF221F13537936)
-- min build: 1207
---@param animScene number
---@param playbackListName string
function ResetAnimScene(animScene, playbackListName) end

-- RESUME_ANIM_SCENE_FROM_LAST_CHECKPOINT  (0x8E1BA705F63C1925)
-- min build: 1207
---@param animScene number
function ResumeAnimSceneFromLastCheckpoint(animScene) end

-- SET_ANIM_SCENE_BOOL  (0x519E96C2C68B404B)
-- min build: 1207
---@param animScene number
---@param name string
---@param value boolean
---@param p3 boolean
function SetAnimSceneBool(animScene, name, value, p3) end

-- SET_ANIM_SCENE_ENTITY  (0x8B720AD451CA2AB3)
-- min build: 1207
---@param animScene number
---@param entityName string
---@param entity number
---@param flags number
function SetAnimSceneEntity(animScene, entityName, entity, flags) end

-- SET_ANIM_SCENE_FLOAT  (0x6BC5104E68CBEFE8)
-- min build: 1207
---@param animScene number
---@param name string
---@param value number
---@param p3 boolean
---@param p4 boolean
function SetAnimSceneFloat(animScene, name, value, p3, p4) end

-- SET_ANIM_SCENE_INT  (0x3A379D2166CF5B92)
-- min build: 1207
---@param animScene number
---@param name string
---@param value number
---@param p3 boolean
function SetAnimSceneInt(animScene, name, value, p3) end

-- SET_ANIM_SCENE_ORIGIN  (0x020894BF17A02EF2)
-- min build: 1207
---@param animScene number
---@param posX number
---@param posY number
---@param posZ number
---@param rotX number
---@param rotY number
---@param rotZ number
---@param order number
function SetAnimSceneOrigin(animScene, posX, posY, posZ, rotX, rotY, rotZ, order) end

-- SET_ANIM_SCENE_PAUSED  (0xD6824B7D24DC0CE0)
-- min build: 1207
---@param animScene number
---@param toggle boolean
function SetAnimScenePaused(animScene, toggle) end

-- SET_ANIM_SCENE_PLAY_LIST  (0x15598CFB25F3DC7E)
-- min build: 1207
---@param animScene number
---@param playlistName string
---@param p2 boolean
function SetAnimScenePlayList(animScene, playlistName, p2) end

-- SET_ANIM_SCENE_PLAYBACK_LIST  (0xAB5E7CAB074D6B84)
-- min build: 1207
---@param animScene number
---@param playbackListName string
function SetAnimScenePlaybackList(animScene, playbackListName) end

-- SET_ANIM_SCENE_RATE  (0x75820B801CFF262A)
-- min build: 1207
---@param animScene number
---@param rate number
function SetAnimSceneRate(animScene, rate) end

-- START_ANIM_SCENE  (0xF4D94AF761768700)
-- min build: 1207
---@param animScene number
function StartAnimScene(animScene) end

-- TAKE_OWNERSHIP_OF_ANIM_SCENE  (0xF7A4C571E572D237)
-- min build: 1207
---@param animScene number
function TakeOwnershipOfAnimScene(animScene) end

-- TRIGGER_ANIM_SCENE_SKIP  (0x4B85B3CF9197AEDF)
-- min build: 1207
---@param animScene number
function TriggerAnimSceneSkip(animScene) end

-- WAS_ANIM_SCENE_SKIPPED  (0xEF324E9550A394D5)
-- min build: 1207
---@param animScene number
---@return boolean
function WasAnimSceneSkipped(animScene) end
