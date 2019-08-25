ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)
        
    RegisterCommand('killengine', function(source, args, rawCommand)
        ESX.TriggerServerCallback('esx_engine:killEngine', function(inventory)
            local ped = PlayerPedId()
            local vehicle = GetVehiclePedIsIn(ped, false)
            local engineStatus = GetIsVehicleEngineRunning(vehicle)
            local item = inventory.items
            if item.count >= 1 then
                exports['progressBars']:startUI(15000, "A cortar os fios do carro...")
                Citizen.Wait(15000)
                SetVehicleEngineOn(vehicle, false, true, true)
                SetVehicleEngineHealth(vehicle, 0)
            end
        end)
    end)