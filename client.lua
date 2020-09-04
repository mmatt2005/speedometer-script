
-- Dont change below unless you know what your doing. 

function text(content)
    SetTextFont(0)
    SetTextScale(0.5, 0.5)
    SetTextColour(255, 255, 255, 255)
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString( " | ".. content.. " ".. "MPH".. " | ")
    DrawText(0.22,0.87)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = PlayerPedId()
        local speed = (GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*2.2369)
        if IsPedInAnyVehicle(ped, true) then
            text(math.floor(speed))
        end
    end
end)
