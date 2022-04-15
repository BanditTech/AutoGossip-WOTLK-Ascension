GossipFrame:HookScript("OnShow",function()
	local optionNum = GetNumGossipOptions()
	if (optionNum == 1) then
		local gossipText = GetGossipOptions()
		local noMod = not IsModifierKeyDown()
		-- automate zone gossip like in the original addon
		-- local zoneText = GetMinimapZoneText()
		if (strfind(gossipText,"I would like to check my deposit box.")
		or strfind(gossipText,"I need a ride.")
		or strfind(gossipText,"Train me!")
		or strfind(gossipText,"Please teach me.")
		or strfind(gossipText,"I would like to train.")
		or strfind(gossipText,"I would like training.")
		or strfind(gossipText,"I want to browse your goods."))
		and (noMod) then
			SelectGossipOption(1)
		end
	end
end)
