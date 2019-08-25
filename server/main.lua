ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('esx_engine:killEngine', function(source, cb)

    local xPlayer = ESX.GetPlayerFromId(source)
    local items   = xPlayer.getInventoryItem('pliers')
    local hasitem = xPlayer.getInventoryItem('pliers').count


    cb({
        items = items
    })

if hasitem >= 1 then
TriggerClientEvent('esx:showNotification', source, _U('used_pliers'))
xPlayer.removeInventoryItem('pliers', 1)
else
TriggerClientEvent('esx:showNotification', source, _U('you_dont_have_pliers'))
end

end)