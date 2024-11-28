FeatherMenu = {
    RegisteredMenus = {},
    RegisteredAlerts = {},
    MenuCount = 0,
    ActiveMenu = nil,
    ActiveOptions = {}
}

LastID = 0

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

RegisterNUICallback('onKeyClicked', function(data, cb)
    if FeatherMenu.RegisteredMenus[data.menuID] then
        FeatherMenu.RegisteredMenus[data.menuID].config.keyclicks[data.key]()
    end

    cb('ok')
end)

RegisterNUICallback('onAlertAction', function(data, cb)
    if FeatherMenu.RegisteredAlerts[data.id] then
        FeatherMenu.RegisteredAlerts[data.id](data)

        if data.type == 'closed' then
            FeatherMenu.RegisteredAlerts[data.id] = nil
        end
    end

    cb('ok')
end)

function FeatherMenu:RegisterMenu(menuID, config, callbacks)
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

        if callbacks ~= nil and callbacks.opened then
            callbacks.opened(event)
        end

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
        if FeatherMenu.activeMenu and FeatherMenu.activeMenu.menuID == menuID then
            local event = {
                action = 'closemenu',
                menuid = menuID
            }

            SendNUIMessage(event)
            OutBoundEvents.menuclosed(event)

            if callbacks ~= nil and callbacks.closed then
                callbacks.closed(event)
            end

            -- This helps to maintain the proper nui focus/count
            FeatherMenu.activeMenu = nil
            FeatherMenu.RegisteredMenus[menuID].active = false
            SetNuiFocus(false, false)

            if (options ~= nil and options.sound ~= nil) then
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

                if callbacks ~= nil and callbacks.topage then
                    callbacks.topage(event)
                end
            end
        end

        function pageClass:RegisterElement(elemType, elemData, callback)
            local elemClass = {}

            local index = pageClass.ElementCount

            local elemID = nil
            if elemData ~= nil and elemData.id ~= nil then
                elemID = elemData.id
            else
                elemID = elemType .. pageClass.ElementCount
            end

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
                pageClass.RegisteredElements[elemID].data = TableMerge(pageClass.RegisteredElements[elemID].data,
                    newElemData)

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

                return elemClass
            end

            function elemClass:callback(changeData)
                if changeData.data.persist == nil or changeData.data.persist == true then
                    local persistData = changeData.value
                    if changeData.persistindex ~= nil then
                        persistData = changeData.persistindex
                    end

                    elemClass:update({
                        value = persistData
                    })
                end

                if callback ~= nil then
                    callback(changeData, elemClass)
                end
            end

            function elemClass:unRegister()
                pageClass.RegisteredElements[elemID] = nil
            end

            function elemClass:UnRegister()
                pageClass.RegisteredElements[elemID] = nil
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

function FeatherMenu:Notify(config, callback)
    local event = {
        action = 'queueNoty',
        config = config
    }

    if callback then
        local id = LastID + 1
        LastID = id

        FeatherMenu.RegisteredAlerts[id] = callback
        event = {
            id = id,
            action = 'queueNoty',
            config = config
        }
    end

    SendNUIMessage(event)
end

exports('initiate', function()
    return FeatherMenu
end)
