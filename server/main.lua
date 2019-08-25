ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('pliers', function(source)
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local hasitem = xPlayer.getInventoryItem('pliers').count

    if hasitem >= 1 then

	xPlayer.removeInventoryItem('pliers', 1)

	TriggerClientEvent('esx_engine:killEngineWP', _source)
    TriggerClientEvent('esx:showNotification', _source, _U('used_pliers'))
    end
end)
