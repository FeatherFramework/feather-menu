---@meta

-- CFX (RedM/FiveM) Lua scripting-runtime globals -- not RDR3 game natives
-- (those are in redm-natives.lua alongside this file), but the scheduler/
-- event/resource primitives every CFX resource is built on. Verified
-- against citizenfx/fivem (data/shared/citizen/scripting/lua/scheduler.lua
-- and friends) during the Feather Framework security audit, not guessed.
--
-- This file only declares signatures for LuaLS's benefit -- it has no
-- runtime effect and is never loaded by the game.

---@param cb fun()
function CreateThread(cb) end

---@param ms number
function Wait(ms) end

---@param eventName string
---@param cb function
function RegisterNetEvent(eventName, cb) end

---@param eventName string
---@param cb function
function RegisterServerEvent(eventName, cb) end

---@param eventName string
---@param cb function
---@return function handler
function AddEventHandler(eventName, cb) end

---@param eventName string
---@param handler function
function RemoveEventHandler(eventName, handler) end

---@param eventName string
---@param ... any
function TriggerEvent(eventName, ...) end

---@param eventName string
---@param ... any
function TriggerServerEvent(eventName, ...) end

---@param eventName string
---@param target number
---@param ... any
function TriggerClientEvent(eventName, target, ...) end

function CancelEvent() end

---@param commandName string
---@param cb fun(source: number, args: string[], rawCommand: string)
---@param restricted? boolean
function RegisterCommand(commandName, cb, restricted) end

---@param resourceName string
---@return table
function exports(resourceName) end

---@return number
function GetGameTimer() end

---@return number
function GetNetworkTimer() end

---@return string
function GetCurrentResourceName() end

---@return string|nil
function GetInvokingResource() end

---@param resourceName string
---@return string
function GetResourceState(resourceName) end

---@return boolean
function IsDuplicityVersion() end

---@param url string
---@param cb fun(statusCode: number, resultData: string, resultHeaders: table)
---@param method? string
---@param data? string
---@param headers? table
function PerformHttpRequest(url, cb, method, data, headers) end

---@param model string
---@return number
function GetHashKey(model) end

---@param s string
---@return number
function joaat(s) end

---@return number
function PlayerPedId() end

---@param player number|string
---@return number
function GetPlayerPed(player) end

---@return number
function PlayerId() end

---@return table
function GetPlayers() end

---@param netId number
---@return number
function NetworkGetEntityFromNetworkId(netId) end

---@param entity number
---@return number
function NetworkGetNetworkIdFromEntity(entity) end

---@param entity number
---@return number
function ObjToNet(entity) end

---@param netId number
---@return number
function NetToObj(netId) end

---@param name string
---@return userdata
function Player(name) end

---@param entity number
---@return userdata
function Entity(entity) end

Citizen = {}

---@param hash number
---@param ... any
---@return any
function Citizen.InvokeNative(hash, ...) end

---@param cb fun()
function Citizen.CreateThread(cb) end

---@param cb fun()
function Citizen.CreateThreadNow(cb) end

---@param ms number
function Citizen.Wait(ms) end

---@param msg string
function Citizen.Trace(msg) end

json = {}

---@param value any
---@return string
function json.encode(value) end

---@param str string
---@return any
function json.decode(str) end

---@type number Set by the scheduler for the duration of a networked event
---handler; do not read after a yield (see the audit's §1.1 runtime note --
---capture it into a local on the handler's first line instead).
source = nil

---@class vector3
---@field x number
---@field y number
---@field z number

---@param x number
---@param y number
---@param z number
---@return vector3
function vector3(x, y, z) end
