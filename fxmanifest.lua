fx_version "cerulean"
game "gta5"
description "ESX Shops"
version "1.2.0"

client_scripts {
	"@es_extended/locale.lua",
	"locales/*.lua",
	"config.lua",
	"client/functions.lua",
	"client/events.lua",
	"client/main.lua",

	"blips/config.lua",
	"blips/functions/az3t3kfr_client.lua",
	"blips/source/az3t3kfr_client.lua"
}


server_scripts {
	"@es_extended/locale.lua",
	"@mysql-async/lib/MySQL.lua",
	"locales/*.lua",
	"config.lua",
	"server/main.lua",
}

dependency "es_extended"
