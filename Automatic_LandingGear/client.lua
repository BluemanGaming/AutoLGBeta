


Citizen.CreateThread(function()
	while true do
		local playerped = GetPlayerPed(-1)
			if IsPedInAnyVehicle(playerped , false) then
                local veh = GetVehiclePedIsUsing(playerped)
                if GetEntityHeightAboveGround(GetVehiclePedIsUsing(PlayerPedId()))>10.0 then
                    GetLandingGearState(aircraft, 2)
                    ControlLandingGear(aircraft, 1)
                    TriggerEvent('chatMessage', "Plane", { 255, 26, 71 }, " Landing Gear Deployed")
                elseif GetEntityHeightAboveGround(GetVehiclePedIsUsing(PlayerPedId()))<10.0 then
                    GetLandingGearState(aircraft, 1)
                    ControlLandingGear(aircraft, 2)
                    TriggerEvent('chatMessage', "Plane", { 255, 26, 71 }, " Landing Gear Retracted")
                end
                Citizen.Wait(0)
            end
        end
    end
end)
        









-- // 0xCFC8BE9A5E1FE575 0x24F873FB
-- // ControlLandingGear
-- void CONTROL_LANDING_GEAR(Vehicle vehicle, int state);
-- Works for vehicles with a retractable landing gear  
-- landing gear states:  
-- 0: Deployed  
-- 1: Closing  
-- 2: Opening  
-- 3: Retracted 
