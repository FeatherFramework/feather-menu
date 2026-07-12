# Feather Menu

A standalone NUI menu system for RedM (RedM/FiveM, `rdr3`). Menus are defined entirely in Lua and rendered via a Vue 3 frontend.

**Version:** 1.3.4  
**Game:** RedM (`rdr3`)  
**Framework:** Standalone (no framework dependency)  
**API Docs:** [featherframework.net/api/Menu](https://featherframework.net/api/Menu)

## Requirements

- RedM server with `fx_version` `adamant` or newer
- Lua 5.4 (`lua54 'yes'` is set in the manifest)

## Installation

1. Download `feather-menu.zip` from [releases/latest](https://github.com/FeatherFramework/feather-menu/releases/latest)
2. Extract and place the `feather-menu` folder into your server's `resources` directory
3. Add `ensure feather-menu` to your `server.cfg`
4. Restart the server or start the resource with `start feather-menu`

## Available Elements

| Type | Description |
|---|---|
| `header` | Draggable title bar |
| `subheader` | Secondary heading |
| `line` | Horizontal separator |
| `bottomline` | Separator pinned to bottom |
| `button` | Clickable button with optional sound |
| `input` | Text input field |
| `textarea` | Multi-line text input |
| `slider` | Numeric range slider |
| `arrows` | Arrow-based option selector |
| `toggle` | On/off toggle |
| `checkbox` | Checkbox |
| `dropdown` | Dropdown select |
| `gridslider` | 2D grid/radar slider |
| `imagebox` / `imageboxcontainer` | Image display |
| `html` | Raw HTML element |
| `pagearrows` | Page navigation arrows |
| `textdisplay` | Read-only text |

## Usage

```lua
local FeatherMenu = exports['feather-menu']:initiate()

local menu = FeatherMenu:RegisterMenu('my_menu', {
    top = '50%',
    left = '50%',
    draggable = true,
    canclose = true,
}, {})

local page = menu:RegisterPage('main_page')

local button = page:RegisterElement('button', {
    label = 'Click Me',
    slot = 'content'
}, function(data, element)
    print('Button clicked')
end)

menu:Open({ startupPage = page })
```

## Multiple Menus

Multiple menus can be registered and opened simultaneously. By default, opening a menu will close any currently active menu (`overrideMenu = true`). Set `overrideMenu = false` to block opening if another menu is already open.

## Notifications

```lua
FeatherMenu:Notify({
    message = 'Hello',
    type = 'success', -- info | success | warning | error | default
    autoClose = 3000,
    position = 'top-right'
}, function(data)
    -- optional callback on open/close
end)
```

## Screenshots

### Menu
![image](https://github.com/FeatherFramework/feather-menu/assets/10902965/07aa8fd3-a94c-4938-b1c0-1eb5a9a8500d)
![image](https://github.com/FeatherFramework/feather-menu/assets/10902965/0cb5aadf-4423-4332-a528-42d2d25c2a24)
![image](https://github.com/FeatherFramework/feather-menu/assets/10902965/0bf164cb-2fc7-45fb-8b36-25795e4798da)
![image](https://github.com/FeatherFramework/feather-menu/assets/10902965/a6b73f8e-a851-4478-b332-5b20559ac9a5)
![image](https://github.com/FeatherFramework/feather-menu/assets/10902965/2a689fa2-b51d-426a-a754-a8287ed4c755)
![image](https://github.com/user-attachments/assets/78d0da2c-ee24-4c2c-9f6a-b6bfed8a2bbf)

### Notifications
![notifications](https://github.com/user-attachments/assets/aef5b174-9e82-470e-b2a6-2a6b196e9ece)

## Planned

- Keyboard/controller native button prompts
- Color picker element
- Radio button element
