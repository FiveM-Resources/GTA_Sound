-- Resource Metadata
fx_version 'adamant'
game 'gta5'

author 'SuperCoolNinja'
description 'Experimented html stuff a complete list of gta v sound.'
version '1.0.0'

client_scripts {
    "client/client_sounds.lua",
    "client/main.lua"
}

server_script "server/server_sounds.lua"

ui_page "html/index.html"
files {
    "html/index.html",
    "html/script.js",
    "html/style.css",
    "html/sounds/*.ogg" --> all sounds need to be on .ogg
}