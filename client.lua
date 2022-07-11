local QBCore = exports['qb-core']:GetCoreObject()

--- Scenes and Things for Job -------------

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			if PlayerData.job.name == "mikel" then
				TriggerServerEvent("QBCore:ToggleDuty")
			end
		end
	end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
    if PlayerData.job.name == 'mikel' then
    	onDuty = duty
    end
end)

RegisterNetEvent("hunter-mikel:client:service", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

----------------------------------------------
------------------ Menus ---------------------

RegisterNetEvent('hunter-mikel:client:Cakes', function()
    exports['qb-menu']:openMenu({
        {
            header = "Cakes mikel Machine",
            isMenuHeader = true,
        },
        {
            header = "❌",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "🥐​ Chocolate Croissant",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarCroasantChocolate",
            }
        },
        {
            header = "🥐 Egg Croissant",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarCroasantOvo",
            }
        },
        {
            header = "🧁​ Chocolate Muffin",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarMuffinChocolate",
            }
        },
        {
            header = "🧁​ Vanilla Cupcake",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarCupcakeBaunilha",
            }
        },
        {
            header = "🧁​ Straberry Cupcake",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarCupcakeMorango",
            }
        },
        {
            header = "🥞​ Nutela Pancake",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarNutelaPancake",
            }
        },
        {
            header = "🥞​ Honey Pancake",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarPanquecaMel",
            }
        },
    })
end)

RegisterNetEvent('hunter-mikel:client:MenuCafes', function()
    exports['qb-menu']:openMenu({
        {
            header = "Coffee Machine",
            isMenuHeader = true,
        },
        {
            header = "❌",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "​☕​ Coffee",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarCafe",
            }
        },
        {
            header = "​☕​ Latte",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarLatte",
            }
        },
        {
            header = "​☕​ Cappuccino",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarCappuccino",
            }
        },
        {
            header = "​☕​ Mocha",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarMocha",
            }
        },
        {
            header = "​🍵​​ Tea",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarCha",
            }
        },
    })
end)

RegisterNetEvent('hunter-mikel:client:MenuBebidas', function()
    exports['qb-menu']:openMenu({
        {
            header = "Coffee Machine",
            isMenuHeader = true,
        },
        {
            header = "❌",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "🥤 Coke",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarCola",
            }
        },
        {
            header = "🥛​ Water",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarAgua",
            }
        },
        {
            header = "🥤 Lemon Ice Tea",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarIceTeaLimao",
            }
        },
        {
            header = "🥤 Peach Ice Tea",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarIceTeaPessego",
            }
        },
        {
            header = "🥤 Sprunk",
            txt = "",
            params = {
                event = "hunter-mikel:client:PegarSprunk",
            }
        },
    })
end)

------------- Get food/drinks ----------

RegisterNetEvent('hunter-mikel:client:PegarCroasantChocolate', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CROISSANT...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "croasant-chocolate", 1)
	TriggerServerEvent('hunter-mikel:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('hunter-mikel:client:PegarCroasantOvo', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CROISSANT...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "croasant-ovo", 1)
    end)
end)

RegisterNetEvent('hunter-mikel:client:PegarMuffinChocolate', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A MUFFIN...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "muffin-chocolate", 1)
	TriggerServerEvent('hunter-mikel:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('hunter-mikel:client:PegarCupcakeBaunilha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "cupcake-baunilha", 1)
	TriggerServerEvent('hunter-mikel:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('hunter-mikel:client:PegarCupcakeMorango', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "cupcake-morango", 1)
	TriggerServerEvent('hunter-mikel:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('hunter-mikel:client:PegarNutelaPancake', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "panqueca-nutela", 1)
	TriggerServerEvent('hunter-mikel:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('hunter-mikel:client:PegarPanquecaMel', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "panqueca-mel", 1)
	TriggerServerEvent('hunter-mikel:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('hunter-mikel:client:PegarCafe', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A COFFEE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "mikel-cafe", 1)
	TriggerServerEvent('hunter-mikel:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('hunter-mikel:client:PegarLatte', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A LATTE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "mikel-latte", 1)
	TriggerServerEvent('hunter-mikel:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('hunter-mikel:client:PegarCappuccino', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CAPPUCCINO...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "mikel-cappuccino", 1)
	TriggerServerEvent('hunter-mikel:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('hunter-mikel:client:PegarMocha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A MOCHA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "mikel-mocha", 1)
	TriggerServerEvent('hunter-mikel:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('hunter-mikel:client:PegarCha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "mikel-cha", 1)
	TriggerServerEvent('hunter-mikel:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('hunter-mikel:client:PegarCola', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING COKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "mikel-cola", 1)
	TriggerServerEvent('hunter-mikel:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('hunter-mikel:client:PegarAgua', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING WATER...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "mikel-agua", 1)
	TriggerServerEvent('hunter-mikel:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('hunter-mikel:client:PegarIceTeaLimao', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A ICE TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "ice-tea-limao", 1)
	TriggerServerEvent('hunter-mikel:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('hunter-mikel:client:PegarIceTeaPessego', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A ICE TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "ice-tea-pessego", 1)
	TriggerServerEvent('hunter-mikel:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('hunter-mikel:client:PegarSprunk', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING SPRUNK...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "mikel-sprunk", 1)
	TriggerServerEvent('hunter-mikel:server:Tirar10dolars')
    end)
end)

----------------------------------------------
----------- Eat scenes and things -------------

RegisterNetEvent('hunter-mikel:client:BeberCafe', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"coffee"})
    QBCore.Functions.Progressbar('beber_cafe', 'DRINKING COFFEE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('hud:server:RelieveStress', math.random(10, 30))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('hunter-mikel:client:ComerBolo', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"donut"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING CAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('hunter-mikel:client:ComerPanquecas', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING PANCAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('hunter-mikel:client:BeberRefrigerantes', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING PANCAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('hud:server:RelieveStress', math.random(10, 30))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

------------------------------------------------
----------- washbasin -------------------------

RegisterNetEvent('hunter-mikel:client:washbasin', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
    QBCore.Functions.Progressbar('name_here', 'WASHING HANDS...', 5000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

------------------------------------------------
------------ Blip no map ----------------------

Citizen.CreateThread(function()
    mikel = Config.MapLoc
    SetBlipSprite (mikel, 78)
    SetBlipDisplay(mikel, 2)
    SetBlipScale  (mikel, 0.5)
    SetBlipAsShortRange(mikel, true)
    SetBlipColour(mikel, 10)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Mikel Coffeeshop ")
    EndTextCommandSetBlipName(mikel)
end) 

-----------------------------------------------
------------- Trays ----------------------

RegisterNetEvent('hunter-mikel:client:tray1', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traymikel1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traymikel1", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('hunter-mikel:client:tray2', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traymikel2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traymikel2", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('hunter-mikel:client:tray3', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traymikel3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traymikel3", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('hunter-mikel:client:tray4', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traymikel4")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traymikel4", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('hunter-mikel:client:tray5', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traymikel5")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traymikel5", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

----------------------------------------------
-------- pass invoices ----------------------

RegisterNetEvent("hunter-mikel:client:invoicePlayer", function()
    local dialog = exports['qb-input']:ShowInput({
        header = "Bill",
        submitText = "Bill Player",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'id',
                text = 'paypal id'
            },
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = '$ amount!'
            }
        }
    })
    if dialog then
        if not dialog.id or not dialog.amount then return end
        TriggerServerEvent("hunter-mikel:server:invoicePlayer", dialog.id, dialog.amount)
    end
end)
