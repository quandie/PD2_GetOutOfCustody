local function releaseMe(localplayer)
    IngameWaitingForRespawnState.request_player_spawn(localplayer)
    managers.chat:send_message(ChatManager.GAME, player_unit, "Get out of Custody: host released himself from custody")
end

if Utils:IsInHeist() then
    local localplayer = managers.player:local_player()
    if not alive(localplayer) then
        releaseMe(localplayer)
     end
end
