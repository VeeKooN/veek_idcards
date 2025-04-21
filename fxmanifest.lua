fx_version "cerulean"

game "gta5"
author "CheckLaConfig.lua"
lua54 'yes'

version '1.0'

client_scripts {
  'client.lua',
  'debug.lua',
}

shared_scripts {
  '@ox_lib/init.lua',
  '@es_extended/imports.lua',
}

dependencies {
  'jsfour-idcard',
  'es_extended',
  'ox_lib',
}