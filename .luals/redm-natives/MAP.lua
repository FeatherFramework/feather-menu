---@meta

-- RDR3 namespace: MAP -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- _0xD3F58E9316B7FC2A  (0xD3F58E9316B7FC2A)
-- min build: 1207
---@param p0 any
function N_0xD3F58E9316B7FC2A(p0) end

-- _ABANDON_BLIP  (0xDEEDE7C41742E011)
-- Not sure what exactly this does, but it calls rage::fwuiBlip::ClearScriptIdentity() internally
-- min build: 1207
---@param blip number
function _AbandonBlip(blip) end

-- _ADD_PROP_TO_MINIMAP  (0x1392105DA88BBFFB)
-- list of minimap props: https://github.com/femga/rdr3_discoveries/tree/master/graphics/minimap/minimapObjects
-- min build: 1207
---@param minimapProp number
---@param x number
---@param y number
---@param rotation number
---@param p4 number
function _AddPropToMinimap(minimapProp, x, y, rotation, p4) end

-- _BLIP_ADD_FOR_AREA  (0xEC174ADBCB611ECC)
-- min build: 1207
---@param blipHash number
---@param x number
---@param y number
---@param z number
---@param scaleX number
---@param scaleY number
---@param scaleZ number
---@param p7 number
---@return number
function _BlipAddForArea(blipHash, x, y, z, scaleX, scaleY, scaleZ, p7) end

-- _BLIP_ADD_FOR_STYLE  (0x3E593DF9C2962EC6)
-- min build: 1207
---@param styleHash number
---@return number
function _BlipAddForStyle(styleHash) end

-- _BLIP_ADD_FOR_VOLUME  (0xA6EF0C54A3443E70)
-- min build: 1207
---@param blipHash number
---@param volume number
---@return number
function _BlipAddForVolume(blipHash, volume) end

-- _BLIP_ADD_STYLE  (0xBD62D98799A3DAF0)
-- min build: 1207
---@param blip number
---@param styleHash number
---@return boolean
function _BlipAddStyle(blip, styleHash) end

-- _BLIP_SET_STYLE  (0xEDD964B7984AC291)
-- https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/blip_styles
-- Removes any existing modifiers and sets the style.
-- min build: 1207
---@param blip number
---@param styleHash number
---@return boolean
function _BlipSetStyle(blip, styleHash) end

-- _CLEAR_BLIP  (0x01B928CA2E198B01)
-- Clears blip data, must be called before REMOVE_BLIP.
-- Blips seem to be handled via databinding internally, this function should then allow you to clear blip container and therefore free up memory.
-- min build: 1207
---@param blip number
---@return boolean
function _ClearBlip(blip) end

-- _CLEAR_BLIP_ICON_FROM_LOCKON_ENTITY_PROMPT  (0x44813684F72B563C)
-- Removes the blip icon from the entity lockon prompt
-- min build: 1207
---@param entity number
---@param blip number
function _ClearBlipIconFromLockonEntityPrompt(entity, blip) end

-- _CLEAR_PAUSEMAP_COORDS  (0x7C9F4CDF402CA82A)
-- Clears the previously set coordinates for the pause map view, removing any specified focal point and radius that were set using `_SET_PAUSEMAP_COORDS_WITH_RADIUS` (0xE0884C184728C75B). This function resets the map view, allowing it to open with the default coordinates and view instead of a specific target area.
-- Clears any previously set coordinates for the pause map view, restoring the default view when the map is opened.
-- 
-- Video: https://imgur.com/gallery/0x7c9f4cdf402ca82a-mZE3Nwj
-- min build: 1311
function _ClearPausemapCoords() end

-- _DOES_ENTITY_HAVE_BLIP  (0x9FA00E2FC134A9D0)
-- min build: 1207
---@param entity number
---@return boolean
function _DoesEntityHaveBlip(entity) end

-- _FIND_CLOSEST_GPS_POSITION  (0x3FDA2B79AEEE351C)
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@return boolean
---@return vector3
function _FindClosestGpsPosition(x, y, z) end

-- _GET_WAYPOINT_COORDS  (0x29B30D07C3F7873B)
-- Note: Z coordinate will always be zero
-- min build: 1207
---@return vector3
function _GetWaypointCoords() end

-- _GET_WAYPOINT_POSITION  (0xF08E42BFA46BDFF8)
-- Unlike `GET_WAYPOINT_COORDS` (0x29B30D07C3F7873B), which returns a single value, this native returns the x and y coordinates of the waypoint separately as float pointers.
-- Image: https://i.imgur.com/tu1jnY7.png
-- min build: 1207
---@return boolean
---@return number
---@return number
function _GetWaypointPosition() end

-- _HIDE_ACTIVE_POINTS_OF_INTEREST  (0xA1B4052C2A3DCC1E)
-- min build: 1207
function _HideActivePointsOfInterest() end

-- _IS_BLIP_ATTACHED_TO_ANY_ENTITY  (0xE9F676788F8D5E1E)
-- min build: 1207
---@param blip number
---@return boolean
function _IsBlipAttachedToAnyEntity(blip) end

-- _IS_DISPLAY_BLIP_ICON_ON_LOCKON_ENTITY_PROMPT  (0x3CB8859F04763C78)
-- Returns true if the entity lockon prompt contains an blip icon.
-- min build: 1207
---@param entity number
---@param blip number
---@return boolean
function _IsDisplayBlipIconOnLockonEntityPrompt(entity, blip) end

-- _IS_PATH_FOR_GPS_ON_ROAD  (0xF47A1EB2A538A3A3)
-- Checks if the GPS route to the waypoint is navigable along a road.
-- If a route exists but there is no valid road path, this function returns false.
-- min build: 1207
---@return boolean
function _IsPathForGpsOnRoad() end

-- _MAP_DISABLE_REGION_BLIP  (0x6786D7AFAC3162B3)
-- min build: 1207
---@param regionHash number
function _MapDisableRegionBlip(regionHash) end

-- _MAP_DISCOVER_REGION  (0xD8C7162AB2E2AF45)
-- min build: 1207
---@param discoveryHash number
function _MapDiscoverRegion(discoveryHash) end

-- _MAP_DISCOVERY_SET_ENABLED  (0xDA98246C7A3C2189)
-- min build: 1207
---@param discoveryHash number
function _MapDiscoverySetEnabled(discoveryHash) end

-- _MAP_ENABLE_REGION_BLIP  (0x563FCB6620523917)
-- regionHash: https://github.com/femga/rdr3_discoveries/tree/master/graphics/minimap/wanted_regions
-- min build: 1207
---@param regionHash number
---@param styleHash number
function _MapEnableRegionBlip(regionHash, styleHash) end

-- _MAP_IS_DISCOVERY_ACTIVE  (0x3F81EA4275D39D6F)
-- min build: 1207
---@param discoveryHash number
---@return boolean
function _MapIsDiscoveryActive(discoveryHash) end

-- _MAP_IS_REGION_HIGHLIGHTED_WITH_STYLE  (0xE38450DBCBC70E3D)
-- min build: 1207
---@param regionHash number
---@param styleHash number
---@return boolean
function _MapIsRegionHighlightedWithStyle(regionHash, styleHash) end

-- _REMOVE_PROP_FROM_MINIMAP  (0xE057FEA9A22EB3EE)
-- min build: 1207
---@param minimapProp number
function _RemovePropFromMinimap(minimapProp) end

-- _REVEAL_MINIMAP_FOW  (0xF8096DF9B87246E3)
-- min build: 1207
---@param hash number
function _RevealMinimapFow(hash) end

-- _SET_BLIP_FROZEN  (0x250C75EB1728CC0D)
-- Removes blip from any entity and makes it static on the map, try it on GET_MAIN_PLAYER_BLIP_ID for a demonstration.
-- min build: 1207
---@param blip number
function _SetBlipFrozen(blip) end

-- _SET_BLIP_NAME  (0x9CB1A1623062F402)
-- min build: 1207
---@param blip number
---@param name string
function _SetBlipName(blip, name) end

-- _SET_DISPLAY_BLIP_ICON_FOR_ENTITY_PROMPT_REMOVED  (0xBB68D4D3CA3DE402)
-- Removes the icon from the lockon prompt. Never executed in R* Scripts due to hardcoded 0.
-- min build: 1207
---@param entity number
---@param p1 number
function _SetDisplayBlipIconForEntityPromptRemoved(entity, p1) end

-- _SET_DISPLAY_BLIP_ICON_FOR_ENTITY_PROMPT_WITH_LOCKON  (0x7563CBCA99253D1A)
-- Sets the blip icon to lockon entity prompt.
-- min build: 1207
---@param entity number
---@param blipIcon number
function _SetDisplayBlipIconForEntityPromptWithLockon(entity, blipIcon) end

-- _SET_DISPLAY_BLIP_ICON_FOR_ENTITY_PROMPT_WITHOUT_LOCKON  (0x1726963E6049DB53)
-- Activates a blip icon prompt for a specific entity, allowing it to be displayed without requiring a lock-on. This function enables the blip to appear associated with the given entity, making it visible without the need to focus or target the entity directly.
-- Video: https://imgur.com/gallery/0x1726963e6049db53-vuuCwqe
-- min build: 1207
---@param entity number
function _SetDisplayBlipIconForEntityPromptWithoutLockon(entity) end

-- _SET_DISPLAY_BLIP_ICON_TO_LOCKON_ENTITY_PROMPT  (0x97F6F158CC5B5CA2)
-- Adds entity blip icon to the entity lockon prompt, if invalid param it will remove the icon if it had any.
-- min build: 1207
---@param entity number
---@param blip number
function _SetDisplayBlipIconToLockonEntityPrompt(entity, blip) end

-- _SET_FOW_UPDATE_PLAYER_OVERRIDE  (0x63E7279D04160477)
-- Used for GUARMA MODE; Enabled: toggle = false, 0; Disabled: toggle = true, 0
-- Hash p1 seems to be unused, always 0
-- min build: 1207
---@param toggle boolean
---@param p1 number
function _SetFowUpdatePlayerOverride(toggle, p1) end

-- _SET_MINIMAP_FOW_OVERRIDE_REVEAL_SCALE  (0xE5A7F70B7C0F3271)
-- min build: 1207
---@param scale number
---@param p1 number
function _SetMinimapFowOverrideRevealScale(scale, p1) end

-- _SET_MINIMAP_FOW_SHOULD_UPDATE  (0x632AA10BF7EA53D3)
-- min build: 1207
---@param toggle boolean
---@param p1 number
function _SetMinimapFowShouldUpdate(toggle, p1) end

-- _SET_MINIMAP_ZONE  (0xA657EC9DBC6CC900)
-- hash can be the hash of "guarma" or "world".
-- min build: 1207
---@param zone number
function _SetMinimapZone(zone) end

-- _SET_PAUSEMAP_COORDS_WITH_RADIUS  (0xE0884C184728C75B)
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@param radius number
function _SetPausemapCoordsWithRadius(x, y, z, radius) end

-- _SET_RADAR_CONFIG_TYPE  (0x9C113883487FD53C)
-- https://github.com/femga/rdr3_discoveries/blob/master/graphics/minimap/radar/radar_configs.lua
-- configHash: -1943724816, 347777538, -117986897, -789269373, -547506804, -1986542417, 2080113112
-- p1: usually 898171178 or 0 in R* scripts (doesn't seems to have any effect)
-- min build: 1207
---@param configHash number
---@param p1 number
function _SetRadarConfigType(configHash, p1) end

-- _SHOW_ACTIVE_POINTS_OF_INTEREST  (0x3FBB838AEA30C1D8)
-- min build: 1207
function _ShowActivePointsOfInterest() end

-- _START_GPS_CUSTOM_ROUTE_FROM_WAYPOINT_RECORDING_ROUTE  (0x6B44F13D888F770D)
-- min build: 1207
---@param waypointRecording string
---@param point number
---@param numPoints number
---@param colorNameHash number
---@param p4 boolean
---@param p5 boolean
function _StartGpsCustomRouteFromWaypointRecordingRoute(waypointRecording, point, numPoints, colorNameHash, p4, p5) end

-- _TRIGGER_SONAR_BLIP_ON_ENTITY  (0x0C7A2289A5C4D7C9)
-- min build: 1207
---@param typeHash number
---@param entity number
function _TriggerSonarBlipOnEntity(typeHash, entity) end

-- ADD_POINT_TO_GPS_MULTI_ROUTE  (0x64C59DD6834FA942)
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@param p3 boolean
function AddPointToGpsMultiRoute(x, y, z, p3) end

-- ALLOW_SONAR_BLIPS  (0x6E6E64788C07D2E0)
-- min build: 1207
---@param toggle boolean
function AllowSonarBlips(toggle) end

-- BLIP_ADD_FOR_COORDS  (0x554D9D53F696D002)
-- https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/textures/blips
-- https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/textures/blips_mp
-- min build: 1207
---@param blipHash number
---@param x number
---@param y number
---@param z number
---@return number
function BlipAddForCoords(blipHash, x, y, z) end

-- BLIP_ADD_FOR_ENTITY  (0x23F74C2FDA6E7C61)
-- min build: 1207
---@param blipHash number
---@param entity number
---@return number
function BlipAddForEntity(blipHash, entity) end

-- BLIP_ADD_FOR_PICKUP_PLACEMENT  (0xA486008892065FB9)
-- min build: 1207
---@param blipHash number
---@param pickup number
---@return number
function BlipAddForPickupPlacement(blipHash, pickup) end

-- BLIP_ADD_FOR_RADIUS  (0x45F13B7E0A15C880)
-- min build: 1207
---@param blipHash number
---@param x number
---@param y number
---@param z number
---@param radius number
---@return number
function BlipAddForRadius(blipHash, x, y, z, radius) end

-- BLIP_ADD_MODIFIER  (0x662D364ABF16DE2F)
-- https://alloc8or.re/rdr3/doc/enums/eBlipModifier.txt
-- https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/blip_modifiers
-- 
-- Old name: _BLIP_SET_MODIFIER
-- min build: 1207
---@param blip number
---@param modifierHash number
---@return boolean
function BlipAddModifier(blip, modifierHash) end

-- BLIP_REMOVE_MODIFIER  (0xB059D7BD3D78C16F)
-- If modifierHash is 0, ALL modifiers will be removed.
-- min build: 1207
---@param blip number
---@param modifierHash number
---@return boolean
function BlipRemoveModifier(blip, modifierHash) end

-- CLEAR_GPS_CUSTOM_ROUTE  (0x1EAA5674B4D181C5)
-- min build: 1207
function ClearGpsCustomRoute() end

-- CLEAR_GPS_FLAGS  (0x4D3771237C79FF41)
-- Clears the GPS flags.
-- min build: 1207
function ClearGpsFlags() end

-- CLEAR_GPS_MULTI_ROUTE  (0x9E0AB9AAEE87CE28)
-- Does the same as SET_GPS_MULTI_ROUTE_RENDER(false);
-- min build: 1207
function ClearGpsMultiRoute() end

-- CLEAR_GPS_PLAYER_WAYPOINT  (0x08FDC6F796E350D1)
-- min build: 1207
function ClearGpsPlayerWaypoint() end

-- DISPLAY_RADAR  (0x1B3DA717B9AFF828)
-- If Minimap / Radar should be displayed.
-- min build: 1207
---@param toggle boolean
function DisplayRadar(toggle) end

-- DOES_BLIP_EXIST  (0xCD82FA174080B3B1)
-- min build: 1207
---@param blip number
---@return boolean
function DoesBlipExist(blip) end

-- FORCE_SONAR_BLIPS_THIS_FRAME  (0xEE1C7BA69BB74B08)
-- Doesn't actually return anything.
-- min build: 1207
---@return any
function ForceSonarBlipsThisFrame() end

-- GET_BLIP_COORDS  (0x201C319797BDA603)
-- min build: 1207
---@param blip number
---@return vector3
function GetBlipCoords(blip) end

-- GET_BLIP_FROM_ENTITY  (0x6D2C41A8BD6D6FD0)
-- Returns the Blip handle of given Entity.
-- min build: 1207
---@param entity number
---@return number
function GetBlipFromEntity(entity) end

-- GET_MAIN_PLAYER_BLIP_ID  (0x5CD2889B2B381D45)
-- min build: 1207
---@return number
function GetMainPlayerBlipId() end

-- IS_BLIP_ON_MINIMAP  (0x46534526B9CD2D17)
-- min build: 1207
---@param blip number
---@return boolean
function IsBlipOnMinimap(blip) end

-- IS_WAYPOINT_ACTIVE  (0x202B1BBFC6AB5EE4)
-- min build: 1207
---@return boolean
function IsWaypointActive() end

-- LOCK_MINIMAP_ANGLE  (0x0BFD145EF819FB3A)
-- Locks the minimap to the specified angle in integer degrees.
-- 
-- angle: The angle in whole degrees. If less than 0 or greater than 360, unlocks the angle.
-- min build: 1207
---@param angle number
function LockMinimapAngle(angle) end

-- REMOVE_BLIP  (0xF2C3C9DA47AAA54A)
-- min build: 1207
---@return number
function RemoveBlip() end

-- RESET_MINIMAP_FOW  (0xEB3CB3386C775D72)
-- min build: 1207
---@param hash number
function ResetMinimapFow(hash) end

-- SET_BLIP_COORDS  (0x4FF674F5E23D49CE)
-- min build: 1207
---@param blip number
---@param posX number
---@param posY number
---@param posZ number
function SetBlipCoords(blip, posX, posY, posZ) end

-- SET_BLIP_FLASH_TIMER  (0x02FF4CF43B7209D1)
-- min build: 1207
---@param blip number
---@param blipType number
---@param blipHash number
function SetBlipFlashTimer(blip, blipType, blipHash) end

-- SET_BLIP_FLASHES  (0x0DF2B55F717DDB10)
-- min build: 1207
---@param blip number
---@return boolean
---@return number
---@return number
function SetBlipFlashes(blip) end

-- SET_BLIP_NAME_FROM_TEXT_FILE  (0x0A062D6D7C0B2C2C)
-- min build: 1207
---@param blip number
---@param textLabel string
function SetBlipNameFromTextFile(blip, textLabel) end

-- SET_BLIP_NAME_TO_PLAYER_NAME  (0x093DD5A31BC2B459)
-- min build: 1207
---@param blip number
---@param player number
function SetBlipNameToPlayerName(blip, player) end

-- SET_BLIP_ROTATION  (0x6049966A94FBE706)
-- min build: 1207
---@param blip number
---@param rotation number
function SetBlipRotation(blip, rotation) end

-- SET_BLIP_SCALE  (0xD38744167B2FA257)
-- min build: 1207
---@param blip number
---@param scale number
function SetBlipScale(blip, scale) end

-- SET_BLIP_SPRITE  (0x74F74D3207ED525C)
-- min build: 1207
---@param blip number
---@param hash number
---@param p2 boolean
function SetBlipSprite(blip, hash, p2) end

-- SET_GPS_CUSTOM_ROUTE_RENDER  (0xF6CEF599FC470B33)
-- min build: 1207
---@param p0 boolean
---@param p1 number
---@param p2 number
function SetGpsCustomRouteRender(p0, p1, p2) end

-- SET_GPS_FLAGS  (0x5DE61C90DDECFA2D)
-- https://alloc8or.re/rdr3/doc/enums/rage__eGpsFlags.txt
-- min build: 1207
---@param p0 number
---@param p1 number
function SetGpsFlags(p0, p1) end

-- SET_GPS_MULTI_ROUTE_RENDER  (0x4426D65E029A4DC0)
-- min build: 1207
---@param toggle boolean
function SetGpsMultiRouteRender(toggle) end

-- SET_MINIMAP_FOW_REVEAL_COORDINATE  (0x73348402566ECB6E)
-- Up to eight coordinates may be revealed per frame
-- min build: 1207
---@param x number
---@param y number
---@param z number
---@param p3 number
function SetMinimapFowRevealCoordinate(x, y, z, p3) end

-- SET_MINIMAP_FOW_REVEAL_VOLUME  (0x63CBBD6CA6F321F9)
-- min build: 1207
---@param volume number
---@param p1 number
function SetMinimapFowRevealVolume(volume, p1) end

-- SET_MINIMAP_HIDE_FOW  (0x4B8F743A4A6D2FF8)
-- Reveals the entire minimap (FOW = Fog of War)
-- min build: 1207
---@param toggle boolean
function SetMinimapHideFow(toggle) end

-- SET_RADAR_AS_EXTERIOR_THIS_FRAME  (0xA8EBBAE986FB5457)
-- min build: 1207
function SetRadarAsExteriorThisFrame() end

-- SET_RADAR_ZOOM  (0xCAF6489DA2C8DD9E)
-- min build: 1207
---@param zoomLevel number
function SetRadarZoom(zoomLevel) end

-- SET_WAYPOINT_OFF  (0xFA8C41E8020D3439)
-- min build: 1207
function SetWaypointOff() end

-- START_GPS_MULTI_ROUTE  (0x3D3D15AF7BCAAF83)
-- min build: 1207
---@param colorNameHash number
---@param onFoot boolean
---@param inVehicle boolean
function StartGpsMultiRoute(colorNameHash, onFoot, inVehicle) end

-- TRIGGER_SONAR_BLIP  (0x72DD432F3CDFC0EE)
-- min build: 1207
---@param typeHash number
---@param x number
---@param y number
---@param z number
function TriggerSonarBlip(typeHash, x, y, z) end

-- UNLOCK_MINIMAP_ANGLE  (0x5373DE8E179BC2A0)
-- min build: 1207
function UnlockMinimapAngle() end
