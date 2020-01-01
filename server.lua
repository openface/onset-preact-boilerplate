function PanelSubmit(player, params)
    print('submitted: '..params)
end
AddRemoteEvent("panel:Submit", PanelSubmit)
