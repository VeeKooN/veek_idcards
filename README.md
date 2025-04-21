# veek_idcard

FiveM Resource to link jsfour-idcard / ox_inventory on ESX framework with ox_lib notifications

![](https://img.shields.io/github/downloads/VeeKooN/veek_idcards/total?logo=github)
![](https://img.shields.io/github/downloads/VeeKooN/veek_idcards/latest/total?logo=github)
![](https://img.shields.io/github/contributors/VeeKooN/veek_idcards?logo=github)
![](https://img.shields.io/github/v/release/VeeKooN/veek_idcards?logo=github)

## 📚 Documentation

Debug Command : /checkpermis [type] ``drive`` / ``weapon`` / ``bike`` / ``boat`` ...

## 💾 Download

https://github.com/VeeKooN/veek_idcards/releases/latest/download/veek_idcards.zip

## Dependencies

- [jsfour-idcard](https://github.com/jonassvensson4/jsfour-idcard/)
- [esx](https://github.com/esx-framework/esx_core/)
- [esx_licence](https://github.com/esx-framework/esx_license/)
- [ox_lib](https://github.com/overextended/ox_lib/)
- [ox_inventory](https://github.com/overextended/ox_inventory)

## ✨ Features

- Wallet system with whitelist for cards / money only
- Full system integrated in ox_inventory with item right clicking to watch or show your licence cards

## ⚙️ Installation

- Add this in ox_inventory/data/items.lua to create the items

```lua	
	--- veek_idcards

	['wallet'] = {
		label = 'Portefeuille',
		weight = 10,
		stack = false,
	},

	['card_id'] = {
		label = "Carte d'Identité",
		description = "Mais ... il manque ma photo ?!",
		weight = 10,
		stack = false,
		buttons = {
			{
				label = 'Regarder sa Carte',
				action = function(slot)
					exports.cards:watchidcard()
				end
			},
			{
				label = 'Montrer sa Carte',
				action = function(slot)
					exports.cards:showidcard()
				end
			}
			},
		},

	['card_driver'] = {
		label = "Carte de Permis",
		description = "Permis de Conduire",
		weight = 10,
		stack = false,
		buttons = {
			{
				label = 'Regarder sa Carte',
				action = function(slot)
					exports.cards:watchdrivercard()
				end
			},
			{
				label = 'Montrer sa Carte',
				action = function(slot)
					exports.cards:showdrivercard()
				end
			}
			},
		},
		
	['card_weapon'] = {
		label = "Carte de PPA",
		description = "Permis de Port d'Arme",
		weight = 10,
		stack = false,
		buttons = {
			{
				label = 'Regarder sa Carte',
				action = function(slot)
					exports.cards:watchweaponcard()
				end
			},
			{
				label = 'Montrer sa Carte',
				action = function(slot)
					exports.cards:showweaponcard()
				end
			}
			},
		},```

- Add this in ox_inventory\modules\items\containers.lua

```lua
setContainerProperties('wallet', {
	slots = 4,
	maxWeight = 500,
	whitelist = { 'money','card_id','card_weapon','card_driver' }
})
```

- Drag and drop the .png files privided in the .zip (installation folder) in ox_inventory\web\images to add the items visuals.

### Next Updates
- Full English Version

## Copyright

Do not sell or reupload this resource.

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.
