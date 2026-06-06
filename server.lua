CreateThread(function()
    Wait(5000) -- Give database resource time to initialize

    exports.oxmysql:update(
        'UPDATE player_vehicles SET state = 0 WHERE state = 1',
        {},
        function(affectedRows)
            print(('[Ash-vehicle-reset] Reset %s vehicle states.'):format(affectedRows))
        end
    )
end)