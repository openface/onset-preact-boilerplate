function PanelSubmit(player, params)
    print('submitted: '..params)
    AddPlayerChat(player, 'Submitted: '..params)
end
AddRemoteEvent("panel:Submit", PanelSubmit)
