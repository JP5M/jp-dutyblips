local blipHandles = {}

local function createBlip(data, isAvailable)
    local key = data.id or string.format("%s_%.2f_%.2f", data.job, data.coords.x, data.coords.y)

    if blipHandles[key] then
        RemoveBlip(blipHandles[key])
    end

    local blip = AddBlipForCoord(data.coords.x, data.coords.y, data.coords.z)
    SetBlipSprite(blip, data.appearance.sprite)
    SetBlipDisplay(blip, data.appearance.display)
    SetBlipScale(blip, data.appearance.scale)
    SetBlipAsShortRange(blip, true)

    local color = isAvailable and data.appearance.colorAvailable or data.appearance.colorUnavailable
    SetBlipColour(blip, color)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(data.label)
    EndTextCommandSetBlipName(blip)

    blipHandles[key] = blip
end


local function updateBlips()
    for _, blipData in ipairs(Config.Blips) do
        local dutyCount = lib.callback.await('jp-dutyblips:server:getOnlineJobMembers', false, blipData.job)
        local isAvailable = dutyCount >= blipData.requiredCount
        createBlip(blipData, isAvailable)
    end
end

CreateThread(function()
    while true do
        updateBlips()
        Wait(Config.refreshRate)
    end
end)
