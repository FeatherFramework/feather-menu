local function TableToString(o)
    if type(o) == 'table' then
        local s = '{ '
        for k, v in pairs(o) do
            if type(k) ~= 'number' then k = '"' .. k .. '"' end
            s = s .. '[' .. k .. '] = ' .. TableToString(v) .. ','
        end
        return s .. '} '
    else
        return tostring(o)
    end
end

RegisterCommand('TestMenu', function()
    local MyMenu = FeatherMenu:RegisterMenu('feather:character:menu', {
        top = '40%',
        left = '20%',
        ['720width'] = '500px',
        ['1080width'] = '600px',
        ['2kwidth'] = '700px',
        ['4kwidth'] = '900px',
        style = {
            -- ['height'] = '500px'
            -- ['border'] = '5px solid white',
            -- ['background-image'] = 'none',
            -- ['background-color'] = '#515A5A'
        },
        contentslot = {
            style = {
                ['height'] = '300px',
                ['min-height'] = '300px'
            }
        },
        draggable = true
    })

    local MyFirstPage = MyMenu:RegisterPage('first:page')
    local MySecondPage = MyMenu:RegisterPage('second:page')
    local MyThirdPage = MyMenu:RegisterPage('third:page')

    ------ FIRST PAGE CONTENT  ------
    MyFirstPage:RegisterElement('header', {
        value = 'My First Menu',
        slot = "header",
        style = {}
    })

    MyFirstPage:RegisterElement('subheader', {
        value = "First Page",
        slot = "header",
        style = {}
    })

    MyFirstPage:RegisterElement('line', {
        slot = "header",
    })


    local inputValue = ''
    MyFirstPage:RegisterElement('input', {
        label = "My First Input",
        placeholder = "Type something!",
        style = {
            -- ['background-image'] = 'none',
            -- ['background-color'] = '#E8E8E8',
            -- ['color'] = 'black',
            -- ['border-radius'] = '6px'
        }
    }, function(data)
        print("Input Triggered: ", data.value)
        inputValue = data.value
    end)

    MyFirstPage:RegisterElement('button', {
        label = "Update",
        style = {
            -- ['background-image'] = 'none',
            -- ['background-color'] = '#E8E8E8',
            -- ['color'] = 'black',
            -- ['border-radius'] = '6px'
        }
    }, function()
        TextDisplay:update({
            value = inputValue,
            style = {}
        })
    end)

    MyFirstPage:RegisterElement('arrows', {
        label = "Hair Color",
        start = 2,
        options = {
            {
                display = "Black",
                extra = "data"
            },
            "Brown",
            "Blonde",
            "Red",
            "Silver",
            "White"
        }
    }, function(data)
        print(TableToString(data.value))
    end)


    MyFirstPage:RegisterElement('slider', {
        label = "Eye Color",
        start = 1,
        min = 0,
        max = 100,
        steps = 1
    }, function(data)
        print(TableToString(data.value))
    end)

    MyFirstPage:RegisterElement("toggle", {
        label = "Glasses",
        start = true
    }, function(data)
        print(data.value)
    end)

    MyFirstPage:RegisterElement("html", {
        value = {
            [[
                <img width="100px" height="100px" style="margin: 0 auto;" src="https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?cs=srgb&dl=pexels-pixabay-45201.jpg&fm=jpg" />
                <div style="color:red;">
                    HELLO!!
                </div>
            ]]
        }
    })


    MyFirstPage:RegisterElement('bottomline')

    TextDisplay = MyFirstPage:RegisterElement('textdisplay', {
        value = "Some Text",
        style = {}
    })

    MyFirstPage:RegisterElement('line', {
        slot = "footer",
    })

    MyFirstPage:RegisterElement('pagearrows', {
        slot = "footer",
        total = 3,
        current = 1,
        style = {}
    }, function(data)
        if data.value == 'forward' then
            MySecondPage:RouteTo()
        else
            print('BACK')
        end
    end)


    ------ SECOND PAGE CONTENT  ------
    MySecondPage:RegisterElement('header', {
        value = 'My First Menu',
        slot = "header",
        style = {}
    })

    MySecondPage:RegisterElement('subheader', {
        value = "Second Page",
        slot = "header",
        style = {}
    })

    MySecondPage:RegisterElement('line', {
        slot = "header",
    })

    MySecondPage:RegisterElement('header', {
        value = 'Awesome Stuff!',
        draggable = false,
        style = {}
    })


    MySecondPage:RegisterElement('line', {
        slot = "footer",
    })

    MySecondPage:RegisterElement('pagearrows', {
        slot = "footer",
        total = 3,
        current = 2,
        style = {}
    }, function(data)
        if data.value == 'forward' then
            MyThirdPage:RouteTo()
        else
            MyFirstPage:RouteTo()
        end
    end)

    ------ THIRD PAGE CONTENT  ------
    MyThirdPage:RegisterElement('header', {
        value = 'My First Menu',
        slot = "header",
        style = {}
    })

    MyThirdPage:RegisterElement('subheader', {
        value = "Third Page",
        slot = "header",
        style = {}
    })

    MyThirdPage:RegisterElement('line', {
        slot = "header"
    })

    MyThirdPage:RegisterElement('line', {
        slot = "footer"
    })

    MyThirdPage:RegisterElement('pagearrows', {
        slot = "footer",
        total = 3,
        current = 3,
        style = {}
    }, function(data)
        if data.value == 'forward' then
            print('FORWARD')
        else
            MySecondPage:RouteTo()
        end
    end)

    MyMenu:Open({
        -- cursorFocus = false,
        -- menuFocus = false,
        startupPage = MyFirstPage
    }) 
end)
