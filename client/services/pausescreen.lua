local paused = false
local pagescache = {}
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if FeatherMenu.activeMenu ~= nil then
            if IsPauseMenuActive() and not paused then
                paused = true
                pagescache = FeatherMenu.activeMenu
                FeatherMenu.activeMenu.class:Close()
            end
        elseif paused and not IsPauseMenuActive() then
            paused = false
            Citizen.Wait(1000)
            pagescache.class:Open(FeatherMenu.ActiveOptions)
            pagescache.class.activePage.class:RouteTo()
            pagescache = {}
        end
    end
end)
