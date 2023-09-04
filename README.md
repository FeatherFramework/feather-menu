# Feather Menu

## Features

1. Menus/Pages
2. SubMenu
3. Elements
   - header
   - subheader
   - line
   - bottomline
   - button
   - input
   - slider
   - custom html
   - and much more!

## Screenshots

TBD

## Installation

1. Download the latest release `feather-menu.zip` at [/releases/latest](https://github.com/FeatherFramework/feather-menu/releases/latest)
2. Extract and place `feather-menu` into your `resources` folder
3. Add `ensure feather-menu` to your `server.cfg` file
4. Restart your server (unless you have nightly restarts)

## How-to-configure

All configurations available in `/config.lua`

## Disclaimers and Credits

- This is a was originally based on MenuAPI

## API Docs

### Initiate API
```lua
FeatherMenu =  exports['feather-menu'].getUI()

-- OR

TriggetEvent("getUI", function(menu)
    FeatherMenu = menu
end)

```

### Menu Config

```lua
-- This is the config for the menu
local MenuConfig = {
        top = '40%',
        left = '20%',
        width = '510px',
        draggable = true,
        -- This is how you can add a custom style/image etc
        -- style = [[
        --     background-image: url("http://clipart-library.com/images/BTar778ec.png");
        --     background-repeat: no-repeat;
        --     background-position: center;
        --     background-size: 101% 101%;
        -- ]]
}
```

### Register Menu
Register and open a UI page/menu
---@param `type` string the type of menu (currently only default)
---@param `namespace` string  This is the menu ui group, group of pages have same namespace
---@param `name` string This is the name of the specific page
---@param `data` table a table consisting of the config and menu elements.
---@param `onsubmit` any Callback for page submits, returns table of changes, and table of menu/page
---@param `oncancel` any Callback for page cancels, returns table of changes, and table of menu/page
---@param `onchange` any Callback for page changes, returns table of changes, and table of menu/page
---@param `close` any Callback for page closes
---@returns table {} page table object

> FeatherMenu.Register(type, namespace, name)

```lua
Page =  FeatherMenu.Register('default', 'mymenu', 'homepage', {
    elements = {
        { type = "header",    label = "Home Page" },
        { type = "subheader", label = "This is a demo homepage" },
        { type = "line" },
    },
    config = MenuConfig,
}, nil, nil, function(data, menu) end)
```
### Show Menu
Sends Open/Show event to NUI
---@param `namespace` string -- The group (menu) identified
---@param `name` string -- The page identifier
---@param `type` string
---@param `data` table

> FeatherMenu.Show(namespace, name, type, data)

```lua
FeatherMenu.Show("mymenu", "homepage", "default")
```

### Hide Menu
Sends Hide event to NUI
---@param `namespace` string
---@param `name` string
---@param `type` string

> FeatherMenu.Hide(namespace, name, type)

```lua
FeatherMenu.Hide("mymenu", "homepage", "default")
```

### Hide Menu
Sends Hide event to NUI
---@param `namespace` string
---@param `name` string
---@param `type` string

> FeatherMenu.Hide(namespace, name, type)

```lua
FeatherMenu.Hide("mymenu", "homepage", "default")
```

### Close Page
> Page:close()

### Update Page
Update page elements
---@param `query` any --Elements to query
---@param `newData` any -- Elements to update

> Page:update(query, newData)

### Set Page Title
Set the title of the page
---@param `val` string
> Page:setTitle(val)

### Set Page Element
Override data of a given element
---@param `i` any The index of the element
---@param `key` any The key of the table item you want to change
---@param `val` any What you want to change the value for the key above
> Page:setElement(i, key, val)

### Set Page Sub Element (paginated elements)
Override data of a given sub-element
---@param `parentindex` any The index of the root element
---@param `parentkey` any The key of the table item you want to change in the root elementn
---@param `subindex` any The index of the sub element
---@param `subkey` any The key of the table item you want to change in the sub elementn
---@param `val` any What you want to change the value for the keys above
> Page:setSubElement(parentindex, parentkey, subindex, subkey, val)


### Remove Page Element
Remove an element from query
---@param `query` any
> Page:removeElement(query)

### Remove Page
Remove page from the table registry. This can be used to optimize script if desired but means you will need to re-register
> Page:unregister()

### Set Page
Sets the page that is visible in the menu
> FeatherMenu.SetPage(type, namespace, name)

### Close all menus/pages
> FeatherMenu.CloseAll()

### Get page
Get an opened menu
---@param `type` string
---@param `namespace` string
---@param `name` string
---@return table
> FeatherMenu.GetPage(type, namespace, name)

### Get All Pages
Get all opened menus
> FeatherMenu.GetAllPages()

### Check if page is registered
Check if a menu is currently open
---@param `type` any
---@param `namespace` any
---@param `name` any
---@return boolean
> FeatherMenu.IsRegistered(type, namespace, name)

### Re-register a page
Open a previous menu
---@param `prior` table a page table to re-open
> FeatherMenu.ReRegister(prior)

### Elements

#### Header
```lua
Page =  FeatherMenu.Register('default', 'mymenu', 'homepage', {
    elements = {
        { type = "header",    label = "Home Page" }
    },
    config = MenuConfig,
}, nil, nil, function(data, menu) end)
```

#### Subheader
```lua
Page =  FeatherMenu.Register('default', 'mymenu', 'homepage', {
    elements = {
        { type = "subheader", label = "This is a demo homepage" }
    },
    config = MenuConfig,
}, nil, nil, function(data, menu) end)
```

#### Line
```lua
Page =  FeatherMenu.Register('default', 'mymenu', 'homepage', {
    elements = {
        { type = "line" }
    },
    config = MenuConfig,
}, nil, nil, function(data, menu) end)
```

#### Bottom Line
```lua
Page =  FeatherMenu.Register('default', 'mymenu', 'homepage', {
    elements = {
        { type = "bottomline" }
    },
    config = MenuConfig,
}, nil, nil, function(data, menu) end)
```

#### Arrow Select
```lua
Page =  FeatherMenu.Register('default', 'mymenu', 'homepage', {
    elements = {
        { type = "arrowselect", label = "Hair Color of this Lady", id = "hairselect", start = 2, options = {
            "Black",
            "Brown",
            "Blonde",
            "Red",
            "Silver",
            "White"
        } },
        { type = "textdisplay", text = "" }
    },
    config = MenuConfig,
}, nil, nil, function(data, menu) 
    if (data.action == 'arrowselect' and data.element.id == 'hairselect') then
        MyMenu:setElement(2, 'text', data.value)
    end
end)
```

#### Toggle
```lua

Page =  FeatherMenu.Register('default', 'mymenu', 'homepage', {
    elements = {
        { type = "toggle", label = "Glasses", start = true, id = "glasses" },
        { type = "textdisplay", text = "" }
    },
    config = MenuConfig,
}, nil, nil, function(data, menu) 
    if (data.action == 'toggle' and data.element.id == 'glasses') then
        MyMenu:setElement(2, 'text', data.value)
    end
end)
```

#### Slider
```lua
Page =  FeatherMenu.Register('default', 'mymenu', 'homepage', {
    elements = {
        { type = "slider", label = "Face", start = 1, min = 0, max = 100, steps = 1,  id = "faces" },
        { type = "textdisplay", text = "" }
    },
    config = MenuConfig,
}, nil, nil, function(data, menu) 
    if (data.action == 'slider' and data.element.id == 'faces') then
        MyMenu:setElement(2, 'text', data.value)
    end
end)
```

#### Input
```lua
```lua
Page =  FeatherMenu.Register('default', 'mymenu', 'homepage', {
    elements = {
        { type = "input", label = "Name", placeholder = "First Name",  id = "name" },
        { type = "textdisplay", text = "" }
    },
    config = MenuConfig,
}, nil, nil, function(data, menu) 
    if (data.action == 'input' and data.element.id == 'name') then
        MyMenu:setElement(2, 'text', data.value)
    end
end)
```

#### Text Display
```lua
Page =  FeatherMenu.Register('default', 'mymenu', 'homepage', {
    elements = {
        { type = "textdisplay", text = "Display Stuff" }
    },
    config = MenuConfig,
}, nil, nil, function(data, menu) end)
```

#### Custom HTML
```lua
Page =  FeatherMenu.Register('default', 'mymenu', 'homepage', {
    elements = {
        {
            type = "html",
            html = {
                [[

                <img width="100px" height="100px" src="https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?cs=srgb&dl=pexels-pixabay-45201.jpg&fm=jpg" />
                <div style="color:red;">
                    HELLO!!
                </div>
            ]]
            }
        }
    },
    config = MenuConfig,
}, nil, nil, function(data, menu) end)
```

#### Pagination
```lua
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

Page =  FeatherMenu.Register('default', 'mymenu', 'homepage', {
    elements = {
        { type = "header",    label = "Home Page" },
        { type = "subheader", label = "This is a demo homepage" },
        { type = "line" },
        { type = "paginated", elements = paginatedelements, mode = 'scroll', maxheight = '300px' }
    },
    config = MenuConfig,
}, nil, nil, function(data, menu) end)
```

#### Button
```lua
Page =  FeatherMenu.Register('default', 'mymenu', 'homepage', {
    elements = {
        { type = "button", label = "Click Me", value = "imclicked", desc = "You clicked me!" },
        { type = "textdisplay", text = "" }
    },
    config = MenuConfig,
}, nil, nil, function(data, menu)
    if (data.action == 'buttonclick' and data.element.value == 'imclicked' ) then
        MyMenu:setElement(2, 'text', data.value)
    end
end)
```


# Tasks for post phase 2

- [ ] Add prototype fake "DUI"
