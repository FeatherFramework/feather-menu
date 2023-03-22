--- Play client side audio
---@param action string
---@param soundset string
function PlaySound(action, soundset) 
    PlaySoundFrontend(action, soundset, true, 0)
end

function GetKey(type, namespace, name)
    return type .. namespace .. name
end