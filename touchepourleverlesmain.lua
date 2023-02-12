handsup = false
animation = {
    dict = "missminuteam_flig_2",
    anim = "handsup_enter"
}

RegisterCommand("handsup", function()
    if not handsup then
        if not IsPedInAnyVehicle(PlayerPedId(),false) then
            RequestAnimdict(animation.dict)
            while not HasAnimDictLoaded(animation.dict) do
                Citizen.Wait(10) 
            end
            TaskPlayAnim(PlayerPedId(), animation.dict, animation.animation)
            handsup = true
        end   
    else
        ClearPedTasks(PlayerPedId())
        handsup = false 
    end 
end)