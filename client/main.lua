RegisterCommand("sound", function(source)
    SetNuiFocus(true, true)
    TriggerServerEvent("GTA_Audio:PlayOnSource", 'blop', 0.1) --> play sound.
    SendNUIMessage({
        type = "enableui",
        activate = true
    })
end, false)

--> CallBack Main from NUI : used to add the sound.
RegisterNUICallback("main", function(data)
    -->"blop" = the file .ogg used to play the sound.
    -->"0.3" = the limit volume of the sound.
    print("AudioName : "..data.audioName)
    print("AudioRef : "..data.audioRef .. "\n" .. "\n")
    PlaySoundFrontend(1, data.audioName, data.audioRef)
end)


--> CallBack Exit from NUI : used to exit the nui without error.
RegisterNUICallback("exit", function()
    SetNuiFocus(false, false)
    SendNUIMessage({
        type = "enableui",
        activate = false
    })
    TriggerServerEvent("GTA_Audio:PlayOnSource", 'blop', 0.1) --> play sound.
end)