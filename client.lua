webview = nil

function OnKeyPress(key)
	if key == "F1" then
		if webview == nil then
        	ShowPanel()
		else 
			HidePanel()
		end
	end
end
AddEvent("OnKeyPress", OnKeyPress)

function ShowPanel()
	webview = CreateWebUI(0, 0, 0, 100)
	LoadWebFile(webview, "http://asset/"..GetPackageName().."/html/index.html")
	SetWebAlignment(webview, 0.0, 0.0)
	SetWebAnchors(webview, 0.0, 0.0, 1.0, 1.0)
	SetWebVisibility(webview, WEB_VISIBLE)
	ShowMouseCursor(true)
	SetInputMode(INPUT_UI)
end

function HidePanel()
	DestroyWebUI(webview)
	webview = nil
	ShowMouseCursor(false)
	SetInputMode(INPUT_GAME)
end
AddEvent("panel:HidePanel", HidePanel)

function Submit(params)
	CallRemoteEvent('panel:Submit', params);
	CallEvent("panel:HidePanel")
end
AddEvent("panel:Submit", Submit)
