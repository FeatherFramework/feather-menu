game 'rdr3'
fx_version 'adamant'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'

author "Feather @ Bytesizd"
description 'A RedM Standalone UI system'

client_scripts {
    'client/helpers/*.lua',
    'client/services/*.lua',
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}

ui_page {
    "ui/shim.html"
}

files {
    "ui/shim.html",
    "ui/js/*.*",
    "ui/css/*.*",
    "ui/fonts/*.*",
    "ui/img/*.*"
}

version '1.3.3'
