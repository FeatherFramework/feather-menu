--- API Outbound Events
OutBoundEvents = {
    menuclosed = function(data)
        TriggerEvent("FeatherMenu:closed", data)
    end,
    menuopened = function(data)
        TriggerEvent("FeatherMenu:opened", data)
    end,
    pagerouteto = function(data)
        TriggerEvent("FeatherMenu:Page:RoutedTo", data)
    end
}