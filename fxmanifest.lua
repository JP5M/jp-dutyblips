fx_version 'cerulean'
game 'gta5'

author 'JP5M Scripts'
description 'On/Off Duty Blips'
version '1.0.0'

shared_scripts {
    'config.lua',
    '@ox_lib/init.lua'
}

server_scripts {
    'server.lua'
}

client_scripts {
    'client.lua'
}

dependencies {
    'ox_lib',
    'qbx_core'
}

lua54 'yes'