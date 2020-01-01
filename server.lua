function RedeemPoints(player, params)
    print('submitted: '..params)
end
AddRemoteEvent("atm:Redeem", RedeemPoints)

function OnPlayerChat(player, message)
    local fullchatmessage = GetPlayerName(player)..' ('..player..'): '..message
    AddPlayerChatAll(fullchatmessage)
end
AddEvent("OnPlayerChat", OnPlayerChat)