FeatherMenu = {
    RegisteredPages = {}, -- A table of all actively visible pages/menus
    ActiveNameSpaces = {}, -- TRacks the active visibility state of a given namespace
    Count = 0,         -- Active Count of registered pages (helps reduce load on processes that desire site of RegisteredPages table)
    ActiveUI = 0
}

---Sends Open/Show event to NUI
---@param namespace string -- The group (menu) identified
---@param name string -- The page identifier
---@param type string
---@param data table
function FeatherMenu.Show(namespace, name, type, data)
    local event = {
        action = 'open',
        namespace = namespace,
        type = type,
        name = name,
        data = data
    }
    OutBoundEvents.menuopened(event)
    SendNUIMessage(event)
    SetNuiFocus(true, true)


    -- This helps to maintain the proper nui focus/count
    if FeatherMenu.ActiveNameSpaces[namespace] == false then
        FeatherMenu.ActiveUI = FeatherMenu.ActiveUI + 1
    end
    FeatherMenu.ActiveNameSpaces[namespace] = true

end

--- Sends Hide event to NUI
---@param namespace string
---@param name string
---@param type string
function FeatherMenu.Hide(namespace, name, type)
    SendNUIMessage({
        action = 'close',
        type = type,
        namespace = namespace,
        name = name
    })

    -- This helps to maintain the proper nui focus/count
    if FeatherMenu.ActiveNameSpaces[namespace] == true then
        FeatherMenu.ActiveUI = FeatherMenu.ActiveUI - 1
    end

    FeatherMenu.ActiveNameSpaces[namespace] = false

    if FeatherMenu.ActiveUI <= 0 then
        SetNuiFocus(false, false)
    end
end

---Register and open a UI page/menu
---@param type string the type of menu (currently only default)
---@param namespace string  This is the menu ui group, group of pages have same namespace
---@param name string This is the name of the specific page
---@param data table TBD
---@param submit any Callback for page submits, returns table of changes, and table of menu/page
---@param cancel any Callback for page cancels, returns table of changes, and table of menu/page
---@param change any Callback for page changes, returns table of changes, and table of menu/page
---@param close any Callback for page closes
---@return table {} page table object
function FeatherMenu.Register(type, namespace, name, data, submit, cancel, change, close) --TODO: Add the option to register without showing
    local ky =  GetKey(type, namespace, name)
    local page = {
        key = ky, --Combination key of the type namespace and name to quickly identify a unique page/menu
        type = type,
        namespace = namespace,
        name = name,     -- This is the name of the specific page
        data = data,
        submit = submit, --Callback for page submits, returns table of changes, and table of menu/page
        cancel = cancel, --Callback for page cancels, returns table of changes, and table of menu/page
        change = change, --Callback for page changes, returns table of changes, and table of menu/page,
        active = false
    }

    if FeatherMenu.ActiveNameSpaces[namespace] == nil then
        FeatherMenu.ActiveNameSpaces[namespace] = false
    end

    --? ----- Register Page Functions below ------
    --- Close the page
    function page:close()
        FeatherMenu.Hide(namespace, name, type)

        -- if FeatherMenu.RegisteredPages[self.key] then
        --     FeatherMenu.RegisteredPages[self.key] = nil
        --     FeatherMenu.Count = FeatherMenu.Count - 1
        -- end

        -- Allows for a custom close hook callback
        if close then
            close()
        end
    end

    --- Remove page from the table registry. This can be used to optimize script if desired
    --? but means you will need to re-register
    function page:unregister()
        if FeatherMenu.RegisteredPages[self.key] then
            FeatherMenu.RegisteredPages[self.key] = nil
            FeatherMenu.Count = FeatherMenu.Count - 1
        end
    end

    -- TODO: Make this better
    --- Update page elements
    ---@param query any --Elements to query
    ---@param newData any -- Elements to update
    function page:update(query, newData)
        for i = 1, #self.data.elements, 1 do
            local match = true

            for k, v in pairs(query) do
                if self.data.elements[i][k] ~= v then
                    match = false
                end
            end

            if match then
                for k, v in pairs(newData) do
                    self.data.elements[i][k] = v
                end
            end
        end
    end

    --! This is potentially useless and might be removed
    --- Refresh the page (Re-opens the page)
    function page:refresh()
        FeatherMenu.Show(self.namespace, self.name, self.type, self.data)
    end

    --- Set the title of the page
    ---@param val string
    function page:setTitle(val)
        self.data.title = val
    end

    --- Override data of a given element
    ---@param i any The index of the element
    ---@param key any The key of the table item you want to change
    ---@param val any What you want to change the value for the key above
    function page:setElement(i, key, val)
        self.data.elements[i][key] = val
        FeatherMenu.Show(self.namespace, self.name, self.type, self.data)
    end

    --- Override data of a given sub-element
    ---@param parentindex any The index of the root element
    ---@param parentkey any The key of the table item you want to change in the root elementn
    ---@param subindex any The index of the sub element
    ---@param subkey any The key of the table item you want to change in the sub elementn
    ---@param val any What you want to change the value for the keys above
    function page:setSubElement(parentindex, parentkey, subindex, subkey, val)
        self.data.elements[parentindex][parentkey][subindex][subkey] = val
        FeatherMenu.Show(self.namespace, self.name, self.type, self.data)
    end

    --- Override all page elements
    ---@param newElements any
    function page:setElements(newElements)
        self.data.elements = newElements
        FeatherMenu.Show(self.namespace, self.name, self.type, self.data)
    end

    ---Remove an element from query
    ---@param query any
    function page:removeElement(query)
        for i = 1, #self.data.elements, 1 do
            for k, v in pairs(query) do
                if self.data.elements[i] then
                    if self.data.elements[i][k] == v then
                        self.data.elements[i] = nil
                        break
                    end
                end
            end
        end

        FeatherMenu.Show(self.namespace, self.name, self.type, self.data)
    end

    -- Register the opened window
    FeatherMenu.RegisteredPages[page.key] = page
    FeatherMenu.Count = FeatherMenu.Count + 1

    if page.data.displayfirst then
        -- Open the UI interface for this instance
        FeatherMenu.Show(namespace, name, type, data)
    end

    PlaySound("SELECT", "RDRO_Character_Creator_Sounds")
    return page
end

function FeatherMenu.SetPage(type, namespace, name)
    local page = FeatherMenu.GetPage(type, namespace, name)
    
    -- Open the UI interface for this instance
    FeatherMenu.Show(page.namespace, page.name, page.type, page.data)
end


--- Alias for FeatherMenu.Register to support prior menuapi usage
function FeatherMenu.Open(type, namespace, name, data, submit, cancel, change, close)
    FeatherMenu.Register(type, namespace, name, data, submit, cancel, change, close)
end

--- Close page/menu Lazy Way
---@param type string
---@param namespace string
---@param name string
function FeatherMenu.Close(type, namespace, name)
    local key = GetKey(type, namespace, name)

    if FeatherMenu.RegisteredPages[key] then
        FeatherMenu.RegisteredPages[key]:close()
    end
end

--- Close all pages/menus
function FeatherMenu.CloseAll()
    for key, value in pairs(FeatherMenu.RegisteredPages) do
        FeatherMenu.RegisteredPages[key]:close()
    end
end

--- Get an opened menu
---@param type string
---@param namespace string
---@param name string
---@return table
function FeatherMenu.GetPage(type, namespace, name)
    local key = GetKey(type, namespace, name)
    return FeatherMenu.RegisteredPages[key]
end

--- Get all opened menus
function FeatherMenu.GetAllPages()
    return FeatherMenu.RegisteredPages
end

--- Check if a menu is currently open
---@param type any
---@param namespace any
---@param name any
---@return boolean
function FeatherMenu.IsRegistered(type, namespace, name)
    local key = GetKey(type, namespace, name)
    return FeatherMenu.RegisteredPages[key] ~= nil
end

---Open a previous menu
---@param prior table a page table to re-open
function FeatherMenu.ReRegister(prior)
    FeatherMenu.Open(prior.type, prior.namespace, prior.name, prior.data, prior.submit, prior.cancel, prior.change,
    prior.close)
end
