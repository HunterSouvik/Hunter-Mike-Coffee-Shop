local QBCore = exports['qb-core']:GetCoreObject()

------------ Drink scenes and things -----------------

QBCore.Functions.CreateUseableItem("mikel-cafe", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:BeberCafe', source)
        Player.Functions.RemoveItem('mikel-cafe', 1)
    end
end)

QBCore.Functions.CreateUseableItem("mikel-latte", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:BeberCafe', source)
        Player.Functions.RemoveItem('mikel-latte', 1)
    end
end)

QBCore.Functions.CreateUseableItem("mikel-cappuccino", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:BeberCafe', source)
        Player.Functions.RemoveItem('mikel-cappuccino', 1)
    end
end)

QBCore.Functions.CreateUseableItem("mikel-mocha", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:BeberCafe', source)
        Player.Functions.RemoveItem('mikel-mocha', 1)
    end
end)

QBCore.Functions.CreateUseableItem("mikel-cha", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:BeberCafe', source)
        Player.Functions.RemoveItem('mikel-cha', 1)
    end
end)

QBCore.Functions.CreateUseableItem("croasant-chocolate", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:ComerBolo', source)
        Player.Functions.RemoveItem('croasant-chocolate', 1)
    end
end)

QBCore.Functions.CreateUseableItem("croasant-ovo", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:ComerBolo', source)
        Player.Functions.RemoveItem('croasant-ovo', 1)
    end
end)

QBCore.Functions.CreateUseableItem("muffin-chocolate", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:ComerBolo', source)
        Player.Functions.RemoveItem('muffin-chocolate', 1)
    end
end)

QBCore.Functions.CreateUseableItem("cupcake-morango", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:ComerBolo', source)
        Player.Functions.RemoveItem('cupcake-morango', 1)
    end
end)

QBCore.Functions.CreateUseableItem("cupcake-baunilha", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:ComerBolo', source)
        Player.Functions.RemoveItem('cupcake-baunilha', 1)
    end
end)

QBCore.Functions.CreateUseableItem("panqueca-nutela", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:ComerPanquecas', source)
        Player.Functions.RemoveItem('panqueca-nutela', 1)
    end
end)

QBCore.Functions.CreateUseableItem("panqueca-mel", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:ComerPanquecas', source)
        Player.Functions.RemoveItem('panqueca-mel', 1)
    end
end)

QBCore.Functions.CreateUseableItem("mikel-cola", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:BeberRefrigerantes', source)
        Player.Functions.RemoveItem('mikel-cola', 1)
    end
end)

QBCore.Functions.CreateUseableItem("mikel-agua", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:BeberRefrigerantes', source)
        Player.Functions.RemoveItem('mikel-agua', 1)
    end
end)

QBCore.Functions.CreateUseableItem("mikel-sprunk", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:BeberRefrigerantes', source)
        Player.Functions.RemoveItem('mikel-sprunk', 1)
    end
end)

QBCore.Functions.CreateUseableItem("ice-tea-pessego", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:BeberRefrigerantes', source)
        Player.Functions.RemoveItem('ice-tea-pessego', 1)
    end
end)

QBCore.Functions.CreateUseableItem("ice-tea-limao", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('hunter-mikel:client:BeberRefrigerantes', source)
        Player.Functions.RemoveItem('ice-tea-limao', 1)
    end
end)

----------------------------------
------- pass invoice ------------

RegisterServerEvent("hunter-mikel:server:FaturarPlayer", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'mikel' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                        MySQL.Async.execute('INSERT INTO phone_invoices (citizenid, amount, society, sender, sendercitizenid) VALUES (@citizenid, @amount, @society, @sender, @sendercitizenid)', {
                            ['@citizenid'] = billed.PlayerData.citizenid,
                            ['@amount'] = amount,
                            ['@society'] = biller.PlayerData.job.name,
                            ['@sender'] = biller.PlayerData.charinfo.firstname,
                            ['@sendercitizenid'] = biller.PlayerData.citizenid
                        })
                        TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must be a number above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You can not bill yourself...', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'The player is not online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'No access', 'error')
        end
end)

---------------------------------------------
---------- Take money -------------------

RegisterNetEvent('hunter-mikel:server:Tirar10dolars', function()
   local src = source
   local Player = QBCore.Functions.GetPlayer(src)
	
   Player.Functions.RemoveMoney('bank', 10)
end)
