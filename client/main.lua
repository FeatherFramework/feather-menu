FeatherMenu = {
    RegisteredMenus = {},
    MenuCount = 0,
    ActiveMenu = nil,
    ActiveOptions = {}
}

RegisterNUICallback('playsound', function(data, cb)
    PlaySound(data.action, data.soundset)
    cb('ok')
end)


RegisterNUICallback('onClose', function(data, cb)
    if FeatherMenu.RegisteredMenus[data.menuid] then
        FeatherMenu.RegisteredMenus[data.menuid].class:Close()
    end

    cb('ok')
end)

RegisterNUICallback('onCallback', function(data, cb)
    if FeatherMenu.RegisteredMenus[data.menuID] then
        FeatherMenu.RegisteredMenus[data.menuID].class.RegisteredPages[data.pageID].class.RegistedElementsClasses
            [data.id]:callback(data)
    end

    cb('ok')
end)

function FeatherMenu:RegisterMenu(menuID, config)
    -------- Menu Class and logic --------
    local menuClass = {
        RegisteredPages = {},
        PageCount = 0,
        activePage = nil
    }

    -------- Global Menu registration and counters --------
    FeatherMenu.RegisteredMenus[menuID] = {
        menuID = menuID,
        config = config,
        active = false,
        class = menuClass,
        allowKeys = true
    }

    FeatherMenu.MenuCount = FeatherMenu.MenuCount + 1

    --Unregister a menu
    function menuClass:UnRegister()
        FeatherMenu.RegisteredMenus[menuID] = nil
        FeatherMenu.MenuCount = FeatherMenu.MenuCount - 1
    end

    -- Open the menu
    function menuClass:Open(options)
        local event = {
            action = 'openmenu',
            menuid = menuID,
            config = config,
        }

        if options == nill then
            options = {}
        end

        if options.menuFocus == nil then
            options.menuFocus = true
        end

        if options.cursorFocus == nil then
            options.cursorFocus = true
        end

        if options.overrideMenu == nil then
            options.overrideMenu = true
        end

        if options.allowKeys == nil then
            options.allowKeys = true
        end

        FeatherMenu.ActiveOptions = options


        if options.overrideMenu == true and FeatherMenu.activeMenu ~= nil and FeatherMenu.activeMenu.menuID ~= menuID then
            --Close any active menus
            FeatherMenu.activeMenu.class:Close()
        elseif options.overrideMenu == false and FeatherMenu.activeMenu ~= nil then
            print("Menu [" .. FeatherMenu.activeMenu.menuID .. "] is already open!")
            return
        end

        SendNUIMessage(event)
        OutBoundEvents.menuopened(event)

        SetNuiFocus(options.menuFocus, options.cursorFocus)

        -- This helps to maintain the proper nui focus/count
        FeatherMenu.RegisteredMenus[menuID].active = true
        FeatherMenu.RegisteredMenus[menuID].allowKeys = options.allowKeys
        FeatherMenu.activeMenu = FeatherMenu.RegisteredMenus[menuID]

        if options.startupPage ~= nil then
            options.startupPage:RouteTo()
        end

        if (options.sound ~= nil) then
            PlaySound(options.sound.action, options.sound.soundset)
        end
    end

    -- close the menu
    function menuClass:Close(options)
        if FeatherMenu.activeMenu.menuID == menuID then
            local event = {
                action = 'closemenu',
                menuid = menuID
            }

            SendNUIMessage(event)
            OutBoundEvents.menuclosed(event)

            -- This helps to maintain the proper nui focus/count
            FeatherMenu.activeMenu = nil
            FeatherMenu.RegisteredMenus[menuID].active = false
            SetNuiFocus(false, false)

            if (options.sound ~= nil) then
                PlaySound(options.sound.action, options.sound.soundset)
            end
        end
    end

    -- Register a page to the menu
    function menuClass:RegisterPage(pageID)
        -------- Page Class and logic --------
        local pageClass = {
            RegisteredElements = {},
            RegistedElementsClasses = {},
            ElementCount = 0
        }

        -------- Menu class registration and counters --------
        menuClass.RegisteredPages[pageID] = {
            pageID = pageID,
            active = false,
            class = pageClass
        }

        menuClass.PageCount = menuClass.PageCount + 1

        function pageClass:getElementClass(eid)
            return pageClass.RegisteredElements(eid):getElementClass()
        end

        function pageClass:UnRegister()
            menuClass.RegisteredPages[pageID] = nil
            menuClass.PageCount = menuClass.PageCount - 1
        end

        function pageClass:RouteTo()
            if FeatherMenu.activeMenu.menuID == menuID then
                if menuClass.activePage ~= nil then
                    menuClass.RegisteredPages[menuClass.activePage.pageID].active = false
                end

                menuClass.RegisteredPages[pageID].active = true
                menuClass.activePage = menuClass.RegisteredPages[pageID]

                local event = {
                    action = 'topage',
                    menuid = menuID,
                    pageid = pageID,
                    elements = pageClass.RegisteredElements
                }

                SendNUIMessage(event)
                OutBoundEvents.pagerouteto(event)
            end
        end

        function pageClass:RegisterElement(elemType, elemData, callback)
            local elemClass = {}

            local index = pageClass.ElementCount
            local elemID = elemType .. pageClass.ElementCount

            pageClass.RegisteredElements[elemID] = {
                id = elemID,
                index = index,
                type = elemType,
                data = elemData,
                pageID = pageID,
                menuID = menuID,
                hasCallback = callback ~= nil
            }

            pageClass.ElementCount = pageClass.ElementCount + 1

            function elemClass:update(newElemData)
                --TODO: Make an object compariscon and oly change what has actually changed (Currently things like css will get overridden)
                pageClass.RegisteredElements[elemID].data = newElemData

                if FeatherMenu.activeMenu.menuID == menuID and menuClass.RegisteredPages[pageID].active == true then
                    local event = {
                        action = 'updateelement',
                        menuid = menuID,
                        pageid = pageID,
                        elemid = elemID,
                        element = pageClass.RegisteredElements[elemID]
                    }

                    SendNUIMessage(event)
                end
            end

            function elemClass:callback(changeData)
                if callback ~= nil then
                    callback(changeData)
                end
            end

            pageClass.RegistedElementsClasses[elemID] = elemClass
            return elemClass
        end

        menuClass.RegisteredPages[pageID].class = pageClass
        return pageClass
    end

    FeatherMenu.RegisteredMenus[menuID].class = menuClass
    return menuClass
end

exports('initiate', function()
    return FeatherMenu
end)