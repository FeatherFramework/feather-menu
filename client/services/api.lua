--? ----- This service handles the exposing of API's -------

-- Export based api initiator
exports('getUI', function()
    return VorpMenu
end)

-- Event based api initiator
AddEventHandler('getUI', function(cb)
    cb(VorpMenu)
end)

--- API Outbound Events
OutBoundEvents = {
    menuclosed = function(data)
        TriggerEvent("VorpMenu:closed", data)
    end,
    menuopened = function(data)
        TriggerEvent("VorpMenu:opened", data)
    end
}