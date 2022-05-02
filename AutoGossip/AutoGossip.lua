local singleLineStrings = [[
I would like to check my deposit box.
Show me my bank
I need a ride.
I want to travel fast
Show me where I can fly.
Train me!
Train me.
Please teach me.
I would like to train.
I would like training.
Let me browse your goods.
I wish to browse your wares.
I want to browse your goods.
]]


GossipFrame:HookScript("OnShow",function()
	local noMod = not IsModifierKeyDown()
	if (noMod) then
		local optionNum = GetNumGossipOptions()
		if (optionNum == 1) then
			local gossipText = GetGossipOptions()
			-- automate zone gossip like in the original addon
			-- local zoneText = GetMinimapZoneText()
			if strfind(singleLineStrings, gossipText) then
				SelectGossipOption(1)
			end
		end
	end
end)
