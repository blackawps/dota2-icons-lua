#Dota2 Mana and Spell Icons
Lua port of https://github.com/rossengeorgiev/dota2mod_manacost

This script will automatically parse all spell icons and item icons. It will use the data found in the vpk to overlay manacost and damage type onto the image.

## To-do list

- [ ] Convert imlib2 to ffi and drop dependancy
- [ ] Convert struct to ffi and drop dependancy

## Install instructions

* [Download latest VPK here](https://github.com/blackawps/dota2-icons-lua/releases)
* Create directory `SteamApps/common/dota 2 beta/game/dota_mods`
 * Add the downloaded `pak01_dir.vpk` to your newly created folder
* Edit `SteamApps/common/dota 2 beta/game/dota/gameinfo.gi` 
 * Add the line highlighted in the image below
 * ![gameinfo.gi](http://i.imgur.com/diz1qHA.png)
* Launch Dota2 and enjoy!
![dota2](http://i.imgur.com/lie7g0i.png)

## Build Requirements
* http://luajit.org/download.html
* https://github.com/asb/lua-imlib2
* https://github.com/kieselsteini/lua-struct
* https://github.com/keplerproject/luafilesystem

### Build instructions
* Edit [render.lua](https://github.com/blackawps/dota2-icons-lua/blob/master/render.lua) and modify any of the paths to suit your needs
 * You should only need to modify `vpk_dir` and `vpk_output`
* run `luajit render.lua` from the repository directory

## Credits
* CapsAdmin - For his VDF parser
* rossengeorgiev - VPK class and original icon rendering and inspiration
