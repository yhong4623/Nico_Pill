ESX = nil


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterUsableItem('Pill_1', function(source)   --- SQL items 需新增 Pill_1
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('Pill_1', 1)
	TriggerClientEvent('Nico_Pill:Pill_1', source)
end)

ESX.RegisterUsableItem('Pill_2', function(source)   --- SQL items 需新增 Pill_2
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('Pill_2', 1)
	TriggerClientEvent('Nico_Pill:Pill_2', source)
end)

ESX.RegisterUsableItem('Pill_3', function(source)   --- SQL items 需新增 Pill_3
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('Pill_3', 1)
	TriggerClientEvent('Nico_Pill:Pill_3', source)
end)

ESX.RegisterUsableItem('Pill_4', function(source)   --- SQL items 需新增 Pill_4
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('Pill_4', 1)
	TriggerClientEvent('Nico_Pill:Pill_4', source)
end)