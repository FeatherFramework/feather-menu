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
    "ui/dist/index.html"
}

files {
    "ui/dist/index.html",
    "ui/dist/js/*.*",
    "ui/dist/css/*.*",
    "ui/dist/fonts/*.*",
    "ui/dist/img/*.*"
}

export "initiate"

version '1.2.3'
-- vorp_checker 'yes'
-- vorp_name '^4Resource version Check^3'
-- vorp_github 'https://github.com/VORPCORE/vorp_ui'
