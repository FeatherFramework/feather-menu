--? ----- This service handles the exposing of API's -------

-- Export based api initiator
exports('getUI', function()
    return FeatherMenu
end)

-- Event based api initiator
AddEventHandler('getUI', function(cb)
    cb(FeatherMenu)
end)

--- API Outbound Events
OutBoundEvents = {
    menuclosed = function(data)
        TriggerEvent("FeatherMenu:closed", data)
    end,
    menuopened = function(data)
        TriggerEvent("FeatherMenu:opened", data)
    end
}