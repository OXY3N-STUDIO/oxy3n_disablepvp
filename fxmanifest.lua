fx_version 'cerulean'
game 'gta5'
lua54 'yes'

version '1.0.0'
description 'OXY3N STUDIO DISABLE PVP'
author 'OXY3N STUDIO'
website 'https://oxy3n-studio.tebex.io'


shared_scripts {
	'shared/main.lua'
}

client_scripts {
	'client/main.lua'
}

ui_page "ui/ui.html"

files {
  'ui/ui.js',
  'ui/ui.css',
  'ui/logo.png',
  'ui/ui.html',
}

escrow_ignore {
  'client/main.lua',

  'shared/main.lua',

  'ui/ui.js',
  'ui/ui.css',
  'ui/ui.html',
  'ui/logo.png',
  'ui/logo.psd',
  
  'readme.md',
}