fx_version 'cerulean'

game 'gta5'

author 'HuNtEr Souvik#9285'

description 'Hunter-MikelCoffe'

version '0.1'

client_scripts{
    'client.lua',
    'targets.lua',
    '@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/EntityZone.lua',
	'@PolyZone/CircleZone.lua',
	'@PolyZone/ComboZone.lua'
}

shared_scripts{
    'config.lua',
}

server_scripts{
    '@oxmysql/lib/MySQL.lua',
    'server.lua',
}