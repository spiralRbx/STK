-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMiCkdhbWVwYXNzSWQERW51bQhJbmZvVHlwZQhHYW1lUGFzcw5HZXRQcm9kdWN0SW5mbwVwYWlycwVwY2FsbAxQcmljZUluUm9idXgKUm9idXhQcmljZQdJbWFnZUlkEEljb25JbWFnZUFzc2V0SWQEZ2FtZRJNYXJrZXRwbGFjZVNlcnZpY2UKR2V0U2VydmljZQdyZXF1aXJlEVJlcGxpY2F0ZWRTdG9yYWdlBExvYWQJQ29uc3RhbnRzCXdvcmtzcGFjZQlTYWxlRXZlbnQMR2V0QXR0cmlidXRlBE5hbWUIR2VtUHJpY2UQQ2FuTXVsdGlQdXJjaGFzZQ1MZWdlbmRhcnkgVklQA1ZJUAtUcmFkaW5nIFZJUApUcmFkaW5nVklQFFN1cnZpdm9yIERvdWJsZS1KdW1wCkRvdWJsZUp1bXAQM1ggS2lsbGVyIENoYW5jZRVJbmNyZWFzZWRLaWxsZXJDaGFuY2UEdGFzawVzcGF3bgADBAACAAAACvsAAAD7AwEATQID6gAAAACkAwQAAwgQwLwAAHUFAAAAnwAEAIIAAAAGAwEDAgMDAwQEAwgQwAMFAC4AARgAAAAAAAAAAAAALwAAAAAIAAIAAAAgpAABAAAAAED7AQAAnwACBBcAGACkBQMAAAAgQNkGAAASAgEAEgAEAJ8FAgMOBREADgYQAE0HBhsEAAAAMAcE5gUAAABNBwSWBgAAAEcHBQAAAAAATQcElgYAAAANBwUABwAAgE0HBuIIAAAAMAcElgYAAABuAOf/AgAAAIIAAQAJAwYEAAAAQAMHBAAAIEADCAMJAwoCAAAAAAAAAAADCwEALAABGAAAAAAAAQAAAAAAAwABAAAAAQAAAAAAAAABAAAA+QALLQAAAAAIAAABAgB6owAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBBQAAAEBApAQBAAAAAEBNAwQ/BgAAAE0CA34HAAAAnwECAlICAQBvAwgAnwICAqQDCgAAAJBAbwULALwDAxIMAAAAnwMDAqkEAAD/BQMAAAAAAOIGEwBvBxQAMAcGug0AAACMB48BMAcG5g4AAACMB3IBMAcGSQ8AAABvBxUAMAcG6hAAAABvBxYAMAcGlhEAAACpBwAAMAcG0BIAAAAwBgXJFwAAAOIGEwBvBxgAMAcGug0AAACMB48BMAcG5g4AAACMB3IBMAcGSQ8AAABvBxkAMAcG6hAAAABvBxoAMAcGlhEAAACpBwAAMAcG0BIAAAAwBgU8GwAAAOIGEwBvBxwAMAcGug0AAACMB/MBMAcG5g4AAACMB8wBMAcGSQ8AAABvBx0AMAcG6hAAAABvBx4AMAcGlhEAAACpBwAAMAcG0BIAAAAwBgX+HwAAAOIGEwBvByAAMAcGug0AAACMBx8DMAcG5g4AAACMB+4CMAcGSQ8AAABvByEAMAcG6hAAAABvByIAMAcGlhEAAACpBwAAMAcG0BIAAAAwBgW2IwAAACoECAAAAACApAYmAACUQILABycAEgAFABIAAACfBgIBqQQBAIIFAgAoAwwEAAAAQAMNAw4DDwQAAEBAAxADEQMSAxMEAACQQAMUAxUDFgMJAxcDAQMKAxgFBg0ODxAREgMZAgAAAMDZiV5BAgAAkPQphPdBAxoDGwIAAADg8/nIQQIAADBO1eAQQgMcAx0CAAAAAD8BX0ECAADQGiqE90EDHgMfAgAAAIB6xl5BAgAAOAg64RBCAyADIQMiBACUQIIGAQEBAQABGAAAAAAAAAACAAAAAAAAAAABAAABAAAAAAABAgABAQAAAQAAAQAAAQAAAQAAAQAA+gAIAQAAAQAAAQAAAQAAAQAAAQAA+gAIAQAAAQAAAQAAAQAAAQAAAQAA+gAIAQAAAQAAAQAAAQAAAQAAAQAA+gAKAAEAAAAAAA0DAQAAAAACbMc0QOGqLWe7UwC9CDZ2rBzfIzReA15B

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:05:52
-- Luau version 6, Types version 3
-- Time taken: 0.002832 seconds

local module_upvr = {
	VIP = {
		Name = "Legendary VIP";
		RobuxPrice = 399;
		GemPrice = 370;
		GamepassId = 8005479;
		ImageId = 6312599369;
		CanMultiPurchase = false;
	};
	TradingVIP = {
		Name = "Trading VIP";
		RobuxPrice = 399;
		GemPrice = 370;
		GamepassId = 838068160;
		ImageId = 18122888076;
		CanMultiPurchase = false;
	};
	DoubleJump = {
		Name = "Survivor Double-Jump";
		RobuxPrice = 499;
		GemPrice = 460;
		GamepassId = 8127740;
		ImageId = 6312599981;
		CanMultiPurchase = false;
	};
	IncreasedKillerChance = {
		Name = "3X Killer Chance";
		RobuxPrice = 799;
		GemPrice = 750;
		GamepassId = 8067562;
		ImageId = 18124538382;
		CanMultiPurchase = false;
	};
}
if false == false then
	local MarketplaceService_upvr = game:GetService("MarketplaceService")
	task.spawn(function() -- Line 44
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: MarketplaceService_upvr (readonly)
		]]
		for _, v_upvr in pairs(module_upvr) do
			local pcall_result1, pcall_result2 = pcall(function() -- Line 46
				--[[ Upvalues[2]:
					[1]: MarketplaceService_upvr (copied, readonly)
					[2]: v_upvr (readonly)
				]]
				return MarketplaceService_upvr:GetProductInfo(v_upvr.GamepassId, Enum.InfoType.GamePass)
			end)
			local function INLINED() -- Internal function, doesn't exist in bytecode
				v_upvr.RobuxPrice = pcall_result2.PriceInRobux
				return v_upvr.ImageId == nil
			end
			if pcall_result1 and pcall_result2 and (INLINED() or v_upvr.ImageId == 0) then
				v_upvr.ImageId = pcall_result2.IconImageAssetId
			end
		end
	end)
end
return module_upvr