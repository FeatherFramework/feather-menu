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







--? Demo Code Below, also gode for devmode (mockdata)
RegisterNUICallback('triggerdummy', function(data, cb)
    cb('ok')
    local ClothElem = nil
    local firstpage = nil
    local MenuOneConfig = {
        top = '40%',
        left = '20%',
        width = '510px',
        draggable = true,
        -- style = [[
        --     background-image: url("http://clipart-library.com/images/BTar778ec.png");
        --     background-repeat: no-repeat;
        --     background-position: center;
        --     background-size: 101% 101%;
        -- ]]
    }

    -- local clothingelements = {
    --     { type = "header",      label = "Clothing Options" },
    --     { type = "subheader",   label = "Choose some cloths" },
    --     { type = "line" },
    --     { type = "button",      label = "Hats",              value = "ss", desc = "Awesome hats for your head" },
    --     { type = "button",      label = "Shirts",            value = "os", desc = "Some cool shirts for you " },
    --     { type = "bottomline" },
    --     { type = "textdisplay", text = "" }
    -- }

    -- ClothElem = FeatherMenu.Register('default', 'firstmenu', 'clothingpage', {
    --     elements = clothingelements,
    --     config = MenuOneConfig,
    -- }, nil, nil, function(data, menu)
    --     if (data.action == 'buttonclick') then
    --         ClothElem:setElement(7, 'text', data.element.desc)
    --     end
    -- end)



    -- TODO: ADD SUPPORT FOR setElement for paginated/sub elements
    local paginatedelements = {
        { type = "button", label = "The Way",           value = "AM", desc = "This is the way" },
        { type = "button", label = "Walk styles",       value = "WS", desc = "Walk Man" },
        { type = "button", label = "Stuff",             value = "CL", desc = "Some Clothing Options" },
        { type = "button", label = "Walk styles",       value = "WS", desc = "Walk Man" },
        { type = "button", label = "Stuff",             value = "CL", desc = "Some Clothing Options" },
        { type = "button", label = "Walk styles",       value = "WS", desc = "Walk Man" },
        { type = "button", label = "Stuff",             value = "CL", desc = "Some Clothing Options" },
        { type = "button", label = "Walk styles",       value = "WS", desc = "Walk Man" },
        { type = "button", label = "Stuff",             value = "CL", desc = "Some Clothing Options" },
        { type = "button", label = "Walk styles",       value = "WS", desc = "Walk Man" },
        { type = "button", label = "Stuff",             value = "CL", desc = "Some Clothing Options" },
        { type = "button", label = "Walk styles",       value = "WS", desc = "Walk Man" },
        { type = "button", label = "Stuff",             value = "CL", desc = "Some Clothing Options" },
    }

    local elements = {
        { type = "header",    label = "Clothing Menu" },
        { type = "subheader", label = "Some Options" },
        { type = "line" },
        -- { type = "arrowselect", label = "Hair Color of this Lady", id = "hairselect", start = 2, options = {
        --     "Black",
        --     "Brown",
        --     "Blonde",
        --     "Red",
        --     "Silver",
        --     "White"
        -- } },
        -- { type = "line" },
        -- { type = "toggle", label = "Glasses", start = true, id = "glasses" },
        -- { type = "slider", label = "Face", start = 1, min = 0, max = 100, steps = 1,  id = "faces" },
        -- { type = "input", label = "Name", placeholder = "First Name",  id = "name" },
        -- { type = "bottomline" },
        -- { type = "textdisplay", text = "Display Stuff" },
        -- { type = "textdisplay", text = "Display Stuff" },
        -- { type = "textdisplay", text = "Display Stuff" },
        -- { type = "textdisplay", text = "Display Stuff" }
        -- {
        --     type = "html",
        --     html = {
        --         [[

        --         <img width="100px" height="100px" src="https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?cs=srgb&dl=pexels-pixabay-45201.jpg&fm=jpg" />
        --         <div style="color:red;">
        --             HELLO!!
        --         </div>
        --     ]]
        --     }
        -- }
        { type = "paginated", elements = paginatedelements, perpage = 5, mode = 'paged', maxheight = '500px' },
        -- { type = "paginated", elements = paginatedelements, mode = 'scroll', maxheight = '300px' },
    }
    firstpage = FeatherMenu.Register('default', 'firstmenu', 'firstpage', {
        elements = elements,
        config = MenuOneConfig,
        displayfirst = true --Display first must be declared at least once or no Menu will show
    }, nil, nil, function(data, menu)
        -- if (data.action == 'buttonclick' and data.element.value == 'CL') then
        --     print("CL")
        --     FeatherMenu.SetPage(data.type, data.namespace, 'clothingpage')
        -- elseif (data.action == 'arrowselect' and data.element.id == 'hairselect') then
        --     firstpage:setElement(10, 'text', data.value)
        -- elseif (data.action == 'toggle' and data.element.id == 'glasses') then
        --     firstpage:setElement(11, 'text', data.value)
        -- elseif (data.action == 'slider' and data.element.id == 'faces') then
        --     firstpage:setElement(12, 'text', data.value)
        -- elseif (data.action == 'input' and data.element.id == 'name') then
        --     firstpage:setElement(13, 'text', data.value)
        -- end

        -- if (data.action == 'buttonclick' and data.element.value == 'AM' ) then
        --     firstpage:setSubElement(4, 'elements', 4, 'text', "The way!")
        -- end
    end)

end)
