game 'rdr3'
fx_version 'adamant'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'
author "VORP @Bytesizd"


client_scripts {
    'client/services/*.lua',
    'client/main.lua'
}

ui_page {
    "ui/shim.html"
}

files {
    "ui/shim.html",
    "ui/dist/js/*.*",
    "ui/dist/css/*.*"
}

export "initiate"

version '0.0.1'
-- vorp_checker 'yes'
-- vorp_name '^4Resource version Check^3'
-- vorp_github 'https://github.com/VORPCORE/vorp_ui'
