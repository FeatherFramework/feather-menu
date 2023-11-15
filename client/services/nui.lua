--- Plays sound for client
RegisterNUICallback('playsound', function(data, cb)
    PlaySound(data.action, data.soundset)
    cb('ok')
end)
