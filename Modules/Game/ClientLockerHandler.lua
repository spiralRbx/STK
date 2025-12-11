-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMRDEhpZGluZ1BsYXllcgxHZXRBdHRyaWJ1dGULUHJpbWFyeVBhcnQABE5hbWUKQ2FuQ29sbGlkZRlHZXRBdHRyaWJ1dGVDaGFuZ2VkU2lnbmFsB0Nvbm5lY3QKaW5pdExvY2tlcgRnYW1lEUNvbGxlY3Rpb25TZXJ2aWNlCkdldFNlcnZpY2UHUGxheWVycwtMb2NhbFBsYXllcgZMb2NrZXIJR2V0VGFnZ2VkFkdldEluc3RhbmNlQWRkZWRTaWduYWwAAwUAAgAAABn7AAAAbwIAALwAABIBAAAAnwADAvsCAABNAQKbAgAAAA4BDwD7AgAATQECmwIAAACpAgAA8AAIAAMAAAD7BAEATQMEugQAAACaAAIAAwAAAKkCAAGpAgEAMAIB0wUAAACCAAEABgMBAwIDAwMEAwUDBgAmAAEYAAAAAAABAAAAAQAAAAAAAAAAAAAAAAAAAicAAAAABgEBAAAAIG8DAAC8AQASAQAAAJ8BAwJNAgCbAgAAAA4CDgBNAgCbAgAAAKkDAADwAQgAAwAAAPsFAABNBAW6BAAAAJoBAgAEAAAAqQMAAakDAQAwAwLTBQAAAG8EAAC8AgAWBgAAAJ8CAwLZBAAAEgAAABICAAC8AgLHBwAAAJ8CAwGCAAEACAMBAwIDAwMEAwUDBgMHAwgBAB4JARgAAAAAAQAAAQAAAAAAAAAAAAAAAAAEAAAAAAAAAAAABiAAAAAACwAAAQAAJKMAAAD/AAAAAAAAAKQBAQAAAABAbwMCALwBARYDAAAAnwEDAqQEAQAAAABATQMEUAQAAABNAgMxBQAAAMADBgASAAIAbwYHALwEAQUIAAAAnwQDBGQEAwBSCQMAUgoIAJ8JAgFuBPz/AgAAAG8GBwC8BAFeCQAAAJ8EAwJSBgMAvAQExwoAAACfBAMBggACAAsDCgQAAABAAwsDDAMNAw4GAQMPAxADEQMIAQEBAAEYABQAAwAAAAAAAwAAAAAAAwASAAAAAAEAAP8ABQAAAAAAAAACAQAAAAAC56KF1Wvph9BSla9TK/2pQZe6kqHVZu/U

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:06:54
-- Luau version 6, Types version 3
-- Time taken: 0.003672 seconds

local CollectionService = game:GetService("CollectionService")
local LocalPlayer_upvr = game.Players.LocalPlayer
local function initLocker(arg1) -- Line 30
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	local HidingPlayer = arg1:GetAttribute("HidingPlayer")
	if arg1.PrimaryPart then
		local var8 = false
		if HidingPlayer ~= "" then
			if HidingPlayer == LocalPlayer_upvr.Name then
				var8 = false
			else
				var8 = true
			end
		end
		arg1.PrimaryPart.CanCollide = var8
	end
	arg1:GetAttributeChangedSignal("HidingPlayer"):Connect(function() -- Line 38
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: LocalPlayer_upvr (copied, readonly)
		]]
		local HidingPlayer_2 = arg1:GetAttribute("HidingPlayer")
		if arg1.PrimaryPart then
			local var11 = false
			if HidingPlayer_2 ~= "" then
				if HidingPlayer_2 == LocalPlayer_upvr.Name then
					var11 = false
				else
					var11 = true
				end
			end
			arg1.PrimaryPart.CanCollide = var11
		end
	end)
end
for _, v in CollectionService:GetTagged("Locker") do
	initLocker(v)
end
CollectionService:GetInstanceAddedSignal("Locker"):Connect(initLocker)
return {}