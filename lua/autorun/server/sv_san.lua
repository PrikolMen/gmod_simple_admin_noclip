-- Simple Admin Noclip (SAN)
local dedicated = game.IsDedicated()
hook.Add("PlayerNoClip", "Simple Admin Noclip", function( ply, enable )
    if (enable) then
        if ply:IsAdmin() and ply:IsFullyAuthenticated() or (dedicated) and ply:IsListenServerHost() then
            return true
        end

        return
    end

    return true
end)
