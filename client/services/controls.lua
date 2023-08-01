local paused = false
local pagescache = {}


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if FeatherMenu.ActiveUI > 0 then
            DisableAllControlActions(0);


            if (IsControlJustReleased(0, 0x43DBF61F)  or  IsDisabledControlJustReleased(0, 0x43DBF61F)) then
                SendNUIMessage({action = 'controlPressed', control = 'ENTER'})
            end

            if (IsControlJustReleased(0, 0x308588E6)  or  IsDisabledControlJustReleased(0, 0x308588E6)) then
                SendNUIMessage({action  = 'controlPressed', control = 'BACKSPACE'})
            end

            if (IsControlJustReleased(0, 0x911CB09E)  or  IsDisabledControlJustReleased(0, 0x911CB09E)) then
                SendNUIMessage({action  = 'controlPressed', control = 'UP'})
            end

            if (IsControlJustReleased(0, 0x4403F97F)  or  IsDisabledControlJustReleased(0, 0x4403F97F)) then
                SendNUIMessage({action  = 'controlPressed', control = 'DOWN'})
            end

            if (IsControlJustReleased(0, 0xAD7FCC5B)  or  IsDisabledControlJustReleased(0, 0xAD7FCC5B)) then
                SendNUIMessage({action  = 'controlPressed', control = 'LEFT'})
            end

            if (IsControlJustReleased(0, 0x65F9EC5B)  or  IsDisabledControlJustReleased(0, 0x65F9EC5B)) then
                SendNUIMessage({action  = 'controlPressed', control = 'RIGHT'})
            end

            if IsPauseMenuActive() and not paused then
                paused = true
                pagescache = FeatherMenu.GetAllPages()
                FeatherMenu.CloseAll()
            end
        elseif paused and not IsPauseMenuActive() then
            paused = false
            Citizen.Wait(1000)
            for k, v in pairs(pagescache) do
                FeatherMenu.ReRegister(v)
            end
            pagescache = {}
        end
    end
end)