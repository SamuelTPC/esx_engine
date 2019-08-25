ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)
        
    RegisterNetEvent('esx_engine:killEngineWP')
    AddEventHandler('esx_engine:killEngineWP', function()
        local ped = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(ped, false)
        exports['progressBars']:startUI(15000, "A cortar os fios do carro...")
        Citizen.Wait(15000)
        SetVehicleEngineOn(vehicle, false, true, true)
        SetVehicleEngineHealth(vehicle, 0)
    end)