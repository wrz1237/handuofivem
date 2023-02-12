seatIndexes = {
    [1] = -1,
    [2] = 0,
    [3] = 1,
    [4] = 2,
}

RegisterCommand("seat", function(source, args, rawCommand)
 if args[1] and seatIndexes[tonumber(args[1])] then
      if IsPedInAnyVehicle(playerPedId(), fals) then
          local vehicle = GetVehiclePedId(playerPedId(), false)
          local seatIndex = seatIndexes[tonumber(args[1])]
          changepedseat(vehicle, seatIndex)
      end
    end    
end)

function changepedseat(vehicle, seatIndex)
     if GetPedInVehicleSeat(vehicle, seatIndex) == 0 then
        TaskWzrpPedIntoVehivle(playerPedId(), vehicle, seatIndex)
     end
    end         