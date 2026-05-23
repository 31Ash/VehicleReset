AddEventHandler('onResourceStart', function(resourcename)
    if resourcename == GetCurrentResourceName() then
        wait(5000)
        MySQL.update('UPDATE player_vehicles SET state = 0 WHERE state = 1',{})
        print('[op-garages] Vehicle States reset on startup.')
    end
end)