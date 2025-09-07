lib.callback.register('jp-dutyblips:server:getOnlineJobMembers', function(source, job)
    local dutyCount = exports.qbx_core:GetDutyCountJob(job)
    return dutyCount
end)