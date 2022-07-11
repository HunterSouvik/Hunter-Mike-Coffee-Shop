# hunter-mikecoffee
mikel Machine Job for mikel machine map for QBCore.

# Preview
https://youtu.be/NdiDU2Ftb6w

# Add to qb-core/shared/items.lua
```
	-- hunter-mike
	["mikel-cafe"] = {["name"] = "mikel-cafe", 	    ["label"] = "Coffee", 	["weight"] = 1000, 		["type"] = "item", 			["image"] = "cafe.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["mikel-latte"] = {["name"] = "mikel-latte", 	    ["label"] = "Latte", 	["weight"] = 1000, 		["type"] = "item", 			["image"] = "latte.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["mikel-cappuccino"] = {["name"] = "mikel-cappuccino", 	    ["label"] = "Cappuccino", 	["weight"] = 1000, 		["type"] = "item", 			["image"] = "latte.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["mikel-mocha"] = {["name"] = "mikel-mocha", 	    ["label"] = "Mocha", 	["weight"] = 1000, 		["type"] = "item", 			["image"] = "cafe.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["croasant-chocolate"] = {["name"] = "croasant-chocolate", 	    ["label"] = "Cholate Croisant", 	["weight"] = 1000, 		["type"] = "item", 			["image"] = "croasant.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["croasant-ovo"] = {["name"] = "croasant-ovo", 	    ["label"] = "Egg Croisant", 	["weight"] = 1000, 		["type"] = "item", 			["image"] = "croasant.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["muffin-chocolate"]     = {["name"] = "muffin-chocolate", 				    ["label"] = "Chocolate Muffin", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "mufchocolate.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["cupcake-baunilha"]     = {["name"] = "cupcake-baunilha", 				    ["label"] = "Vanilla Cupcake", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "cuplimao.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["cupcake-morango"]     = {["name"] = "cupcake-morango", 				    ["label"] = "Straberry Cupcake", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "cupmorango.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["panqueca-nutela"]     = {["name"] = "panqueca-nutela", 				    ["label"] = "Nutela Pancake", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "panutela.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["panqueca-mel"]     = {["name"] = "panqueca-mel", 				    ["label"] = "Honey Pancake", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "panutela.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["mikel-cha"]     = {["name"] = "mikel-cha", 				    ["label"] = "Tea", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "tea.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["mikel-cola"]     = {["name"] = "mikel-cola", 				    ["label"] = "Coke", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "cola.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["mikel-agua"]     = {["name"] = "mikel-agua", 				    ["label"] = "Water", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "water_bottle.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["mikel-sprunk"]     = {["name"] = "mikel-sprunk", 				    ["label"] = "Sprunk", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "sprunk.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["ice-tea-limao"]     = {["name"] = "ice-tea-limao", 				    ["label"] = "Lemon Ice Tea", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "icetea.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["ice-tea-pessego"]     = {["name"] = "ice-tea-pessego", 				    ["label"] = "Peach Ice Tea", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "icetea.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
```

# Add to qb-core/shared/jobs.lua
```
    ['mikel'] = {
		label = 'mikel Machine',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Novice',
                payment = 150
            },
			['1'] = {
                name = 'Employee',
                payment = 275
            },
			['2'] = {
                name = 'Experienced',
                payment = 350
            },
			['3'] = {
                name = 'Advanced',
                payment = 450
            },
			['4'] = {
                name = 'Boss',
				isboss = true,
                payment = 600
            },
        },
	},
```

# Drag and drop images from mt-mikelmachine/images to qb-inventory/html/images
images folder
# Dependicies
- qb-target - https://github.com/qbcore-framework/qb-target
- qb-menu - https://github.com/qbcore-framework/qb-menu
- qb-input - https://github.com/qbcore-framework/qb-input
- dpemotes - https://github.com/qbcore-framework/dpemotes
- qb-core - https://github.com/qbcore-framework/qb-core
- qb-inventory - https://github.com/qbcore-framework/qb-inventory
- qb-phone - https://github.com/qbcore-framework/qb-phone

# mikel coffeshop map link
BlazeZ Map
https://mega.nz/file/xmJTiY6L#Xy02zkKFEhJ31AALMMxFQiu6HvJGFA_ZqW6JG2tSF7Y
