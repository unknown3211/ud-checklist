local isUIOpen = false

function openTestUI()
    SetNuiFocus(true, true)
    SendNUIMessage({action = 'openUI'})
    isUIOpen = true
end

function closeTestUI()
    SetNuiFocus(false, false)
    SendNUIMessage({action = 'closeUI'})
    isUIOpen = false
end

RegisterCommand("openchecklist", function()
    TriggerEvent('ud-checklist:openchecklistui')
end)
   
RegisterNetEvent('ud-checklist:openchecklistui', function()
    if not isUIOpen then
        openTestUI()
    else
        closeTestUI()
    end
end, false)

RegisterNUICallback('exit', function(data, cb)
    closeTestUI()
    cb('ok')
end)