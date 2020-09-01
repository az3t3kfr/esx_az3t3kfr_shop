resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Shops'

version '1.1.0'

client_scripts {
	'@es_extended/locale.lua',
	'locales/de.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/es.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'config.lua',
	'client/main.lua',
}

client_scripts {
	'blips/config.lua',
	'blips/functions/az3t3kfr_client.lua',
	'blips/source/az3t3kfr_client.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'@mysql-async/lib/MySQL.lua',
	'locales/de.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/es.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'config.lua',
	'server/main.lua',
		'config.lua'

}

dependency 'es_extended'
