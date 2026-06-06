CreateThread(function()
    Wait(5000) -- Give database resource time to initialize

    exports.oxmysql:update(
        'UPDATE player_vehicles SET state = 0 WHERE state = 1 AND isTowedOut = 0',
        {},
        function(affectedRows)
            print(('[Ash-vehicle-reset] Reset %s vehicles to stored state.'):format(affectedRows))
        end
    )
end)