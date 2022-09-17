-- Simple Admin Noclip (SAN)
local notDedicated = not game.IsDedicated()
local singleplayer = game.SinglePlayer()
hook.Add("PlayerNoClip", "Simple Admin Noclip", function( ply, enable )
    if (singleplayer) then
        return true
    end

    if (enable) then
        if ply:IsAdmin() and ply:IsFullyAuthenticated() or (notDedicated) and ply:IsListenServerHost() then
            return true
        end

        return
    end

    return true
end)
