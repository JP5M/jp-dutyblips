lib.callback.register('jp-dutyblips:server:getOnlineJobMembers', function(source, job)
    local framework = Config and Config.framework or 'qbx'
    local dutyCount = 0

    if framework == 'qbx' then
        dutyCount = exports.qbx_core:GetDutyCountJob(job)
    elseif framework == 'qbcore' then
        local QBCore = exports['qb-core']:GetCoreObject()
        for _, playerId in ipairs(QBCore.Functions.GetPlayers()) do
            local Player = QBCore.Functions.GetPlayer(playerId)
            if Player then
                local playerJob = Player.PlayerData.job
                if playerJob and playerJob.name == job and playerJob.onduty then
                    dutyCount = dutyCount + 1
                end
            end
        end
    elseif framework == 'esx' then
        if ESX == nil then
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        end
        if ESX and ESX.GetPlayers then
            for _, playerId in ipairs(ESX.GetPlayers()) do
                local xPlayer = ESX.GetPlayerFromId(playerId)
                if xPlayer then
                    local playerJob = xPlayer.getJob and xPlayer.getJob() or xPlayer.job
                    if playerJob then
                        local jobName = playerJob.name or playerJob.id
                        local onDuty = playerJob.onduty or playerJob.onDuty or false
                        if jobName == job and onDuty then
                            dutyCount = dutyCount + 1
                        end
                    end
                end
            end
        end
    end
    return dutyCount
end)