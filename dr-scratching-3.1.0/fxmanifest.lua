fx_version 'cerulean'
game 'gta5'

description 'Start scratching! Odds Are Meant To Be Beaten'
author 'Dream Resources' -- https://forum.cfx.re/u/xDreamLand/summary
version '3.1.0'
repository 'https://github.com/xDreamLand/dr-scratching'

lua54 'yes'

client_scripts {
  'client/c_nui.lua',
}

ui_page "html/index.html"

files {
    'html/index.html',
    'html/js/*.js',
    'html/css/*.css',
    'html/img/*.png',
    'html/img/*.jpg'
}
