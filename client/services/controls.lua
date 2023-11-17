local paused = false
local pagescache = {}
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if FeatherMenu.activeMenu ~= nil then

            -- TODO: Potentially remove this code as its not needed since this is handled in nui, this locks movement, so its no different than keeping menu focus
            -- if FeatherMenu.activeMenu.allowKeys == true then
            --     DisableAllControlActions(0);
            --     if (IsControlJustReleased(0, 0x43DBF61F) or IsDisabledControlJustReleased(0, 0x43DBF61F)) then
            --         SendNUIMessage({ action = 'controlPressed', control = 'ENTER' })
            --     end

            --     if (IsControlJustReleased(0, 0x308588E6) or IsDisabledControlJustReleased(0, 0x308588E6)) then
            --         SendNUIMessage({ action = 'controlPressed', control = 'BACKSPACE' })
            --     end

            --     if (IsControlJustReleased(0, 0x911CB09E) or IsDisabledControlJustReleased(0, 0x911CB09E)) then
            --         print("UP")
            --         SendNUIMessage({ action = 'controlPressed', control = 'UP' })
            --     end

            --     if (IsControlJustReleased(0, 0x4403F97F) or IsDisabledControlJustReleased(0, 0x4403F97F)) then
            --         SendNUIMessage({ action = 'controlPressed', control = 'DOWN' })
            --     end

            --     if (IsControlJustReleased(0, 0xAD7FCC5B) or IsDisabledControlJustReleased(0, 0xAD7FCC5B)) then
            --         SendNUIMessage({ action = 'controlPressed', control = 'LEFT' })
            --     end

            --     if (IsControlJustReleased(0, 0x65F9EC5B) or IsDisabledControlJustReleased(0, 0x65F9EC5B)) then
            --         SendNUIMessage({ action = 'controlPressed', control = 'RIGHT' })
            --     end
            -- end

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
