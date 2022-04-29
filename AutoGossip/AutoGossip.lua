GossipFrame:HookScript("OnShow",function()
	local noMod = not IsModifierKeyDown()
	if (noMod) then
		local optionNum = GetNumGossipOptions()
		if (optionNum == 1) then
			local gossipText = GetGossipOptions()
			-- automate zone gossip like in the original addon
			-- local zoneText = GetMinimapZoneText()
			if (strfind(gossipText,"I would like to check my deposit box.")
			or strfind(gossipText,"Show me my bank")
			or strfind(gossipText,"I need a ride.")
			or strfind(gossipText,"I want to travel fast")
			or strfind(gossipText,"Show me where I can fly.")
			or strfind(gossipText,"Train me!")
			or strfind(gossipText,"Train me.")
			or strfind(gossipText,"Please teach me.")
			or strfind(gossipText,"I would like to train.")
			or strfind(gossipText,"I would like training.")
			or strfind(gossipText,"Let me browse your goods.")
			or strfind(gossipText,"I wish to browse your wares.")
			or strfind(gossipText,"I want to browse your goods.")) then
				SelectGossipOption(1)
			end
		end
	end
end)
