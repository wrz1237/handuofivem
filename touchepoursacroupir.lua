crouch = false
RegisterCommand("crouch", function()
    if not crouch then
        RequestAntiSet("mouve_ped_crouched")
        RequestAntiSet("MOUVE_M@TOUCH_GUUY@")

        while(HasAnimSetLoaded("mouve_ped_crouched")) and (not HasAnimSetLoaded)
        Citizen.Wait(100)
    end
    ResetPedMouvementClipset(playerPedId())
    SetPedMouvementClipset(playerPedId(), "mouve_ped_crouched", 0.55)

    crouch = true
    else 
        ResetPedMouvementClipset(playerPedId())
        crouche = false
    end
end)

RegisterKeyMapping("crouch", "S'accroupir", "keyboard", "LMENU") -- BIND ON ALT
