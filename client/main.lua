VorpMenu = {
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
function VorpMenu.Show(namespace, name, type, data)
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
    if VorpMenu.ActiveNameSpaces[namespace] == false then
        VorpMenu.ActiveUI = VorpMenu.ActiveUI + 1
    end
    VorpMenu.ActiveNameSpaces[namespace] = true

end

--- Sends Hide event to NUI
---@param namespace string
---@param name string
---@param type string
function VorpMenu.Hide(namespace, name, type)
    SendNUIMessage({
        action = 'close',
        type = type,
        namespace = namespace,
        name = name
    })

    -- This helps to maintain the proper nui focus/count
    if VorpMenu.ActiveNameSpaces[namespace] == true then
        VorpMenu.ActiveUI = VorpMenu.ActiveUI - 1
    end

    VorpMenu.ActiveNameSpaces[namespace] = false

    if VorpMenu.ActiveUI <= 0 then
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
function VorpMenu.Register(type, namespace, name, data, submit, cancel, change, close) --TODO: Add the option to register without showing
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

    if VorpMenu.ActiveNameSpaces[namespace] == nil then
        VorpMenu.ActiveNameSpaces[namespace] = false
    end

    --? ----- Register Page Functions below ------
    --- Close the page
    function page:close()
        VorpMenu.Hide(namespace, name, type)

        -- if VorpMenu.RegisteredPages[self.key] then
        --     VorpMenu.RegisteredPages[self.key] = nil
        --     VorpMenu.Count = VorpMenu.Count - 1
        -- end

        -- Allows for a custom close hook callback
        if close then
            close()
        end
    end

    --- Remove page from the table registry. This can be used to optimize script if desired
    --? but means you will need to re-register
    function page:unregister()
        if VorpMenu.RegisteredPages[self.key] then
            VorpMenu.RegisteredPages[self.key] = nil
            VorpMenu.Count = VorpMenu.Count - 1
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
        VorpMenu.Show(self.namespace, self.name, self.type, self.data)
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
        VorpMenu.Show(self.namespace, self.name, self.type, self.data)
    end

    --- Override data of a given sub-element
    ---@param parentindex any The index of the root element
    ---@param parentkey any The key of the table item you want to change in the root elementn
    ---@param subindex any The index of the sub element
    ---@param subkey any The key of the table item you want to change in the sub elementn
    ---@param val any What you want to change the value for the keys above
    function page:setSubElement(parentindex, parentkey, subindex, subkey, val)
        self.data.elements[parentindex][parentkey][subindex][subkey] = val
        VorpMenu.Show(self.namespace, self.name, self.type, self.data)
    end

    --- Override all page elements
    ---@param newElements any
    function page:setElements(newElements)
        self.data.elements = newElements
        VorpMenu.Show(self.namespace, self.name, self.type, self.data)
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

        VorpMenu.Show(self.namespace, self.name, self.type, self.data)
    end

    -- Register the opened window
    VorpMenu.RegisteredPages[page.key] = page
    VorpMenu.Count = VorpMenu.Count + 1

    if page.data.displayfirst then
        -- Open the UI interface for this instance
        VorpMenu.Show(namespace, name, type, data)
    end

    PlaySound("SELECT", "RDRO_Character_Creator_Sounds")
    return page
end

function VorpMenu.SetPage(type, namespace, name)
    local page = VorpMenu.GetPage(type, namespace, name)
    
    -- Open the UI interface for this instance
    VorpMenu.Show(page.namespace, page.name, page.type, page.data)
end


--- Alias for VorpMenu.Register to support prior menuapi usage
function VorpMenu.Open(type, namespace, name, data, submit, cancel, change, close)
    VorpMenu.Register(type, namespace, name, data, submit, cancel, change, close)
end

--- Close page/menu Lazy Way
---@param type string
---@param namespace string
---@param name string
function VorpMenu.Close(type, namespace, name)
    local key = GetKey(type, namespace, name)

    if VorpMenu.RegisteredPages[key] then
        VorpMenu.RegisteredPages[key]:close()
    end
end

--- Close all pages/menus
function VorpMenu.CloseAll()
    for key, value in pairs(VorpMenu.RegisteredPages) do
        VorpMenu.RegisteredPages[key]:close()
    end
end

--- Get an opened menu
---@param type string
---@param namespace string
---@param name string
---@return table
function VorpMenu.GetPage(type, namespace, name)
    local key = GetKey(type, namespace, name)
    return VorpMenu.RegisteredPages[key]
end

--- Get all opened menus
function VorpMenu.GetAllPages()
    return VorpMenu.RegisteredPages
end

--- Check if a menu is currently open
---@param type any
---@param namespace any
---@param name any
---@return boolean
function VorpMenu.IsRegistered(type, namespace, name)
    local key = GetKey(type, namespace, name)
    return VorpMenu.RegisteredPages[key] ~= nil
end

---Open a previous menu
---@param prior table a page table to re-open
function VorpMenu.ReRegister(prior)
    VorpMenu.Open(prior.type, prior.namespace, prior.name, prior.data, prior.submit, prior.cancel, prior.change,
    prior.close)
end
