--? ----- Nui Callbacks below ------
RegisterNUICallback('onsubmit', function(data, cb)
    PlaySound("SELECT", "RDRO_Character_Creator_Sounds")
    local menu = FeatherMenu.GetPage(data.type, data.namespace, data.name)

    if menu.submit ~= nil then
        -- Callback with changed data and current menu that was submitted
        menu.submit(data, menu)
    end

    cb('ok')
end)

-- TODO: Make this dynamic so any string song can be played
--- Plays sound for client
RegisterNUICallback('playsound', function(data, cb)
    PlaySound(data.action, data.soundset)
    cb('ok')
end)

--- Enacts a registered cancel button
RegisterNUICallback('oncancel', function(data, cb)
    PlaySound("SELECT", "RDRO_Character_Creator_Sounds")

    local menu = FeatherMenu.GetPage(data.type, data.namespace, data.name)

    if menu.cancel ~= nil then
        -- Callback with cancel data and current menu that was submitted
        menu.cancel(data, menu)
    end

    cb('ok')
end)


RegisterNUICallback('onchange', function(data, cb)
    local menu = FeatherMenu.GetPage(data.type, data.namespace, data.name)

    -- for i=1, #data.elements, 1 do
    --     menu.setElement(i, 'value', data.elements[i].value)

    --     if data.elements[i].selected then
    --         menu.setElement(i, 'selected', true)
    --     else
    --         menu.setElement(i, 'selected', false)
    --     end
    -- end

    if menu.change ~= nil then
        menu.change(data, menu)
    end

    cb('ok')
end)


RegisterNUICallback('onclose', function(data, cb)
    local menu = FeatherMenu.GetPage(data.type, data.namespace, data.name)

    menu.close()

    OutBoundEvents.menuclosed(data)
    cb('ok')
end)
