-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMPDHNldG1ldGF0YWJsZQtQbGF5ZXJDYWxscwtNYXhOdW1DYWxscwtDYWxsVGltZW91dBZUaHJvdHRsZVBlbmFsdHlTZWNvbmRzEFBlbmFsaXplZFBsYXllcnMDbmV3BlBhcmVudAR0aWNrBXRhYmxlBnJlbW92ZQZpbnNlcnQFZGVsYXkJQ2FsbENoZWNrB19faW5kZXgABAYCAQAAABn/AgQAAAAAAPsFAACePQIEBQAAAFIEAgCkAwEAAAAAQJ8DAwH/AwAAAAAAADADApcCAAAAMAACrwMAAAAwAQJbBAAAAMYDAAAwAwIUBQAAAP8DAAAAAAAAMAMC0QYAAACCAgIABwMBBAAAAEADAgMDAwQDBQMGAAkHARgAAAEAAAAAAAABAAAAAQABAAEAAAEAAAACDAAAAAADAAIAAAAH+wEAAE0AAdEAAAAA+wEBAMYCAABqAgABggABAAEDBgAuAAEYAAAAAAAAAS8AAAAABwIAAAAAUw4BBwBNAgEkAAAAAA4CBABNAwDRAQAAAIcCAwEOAgIAqQIAAIICAgBNAgCXAgAAAE0EAJcCAAAAhwMEASsDAgD/AwAAAAAAAGoDAgFNBACXAgAAAIcDBAEcAgMAjAMAAGADFQACAAAApAMEAAAAMECfAwECTQYAlwIAAACHBQYBEwQFACYCAwRNAwBbBQAAAGADCQACAAAApAIIAAAcYIBNBACXAgAAAIcDBAGMBAEAnwIDAUgA5f9NBACXAgAAAIcDBAEcAgMATQMArwkAAABgAg0AAwAAAE0EAJcCAAAAhwMEAaQEBAAAADBAnwQBAEw0AAKkAgsAAChggJ8CAAGpAgEAggICAE0CABQMAAAADgIMAE0CANEBAAAAqQMBAGoDAgGkAg4AAADQQE0DABQMAAAA2QQAABIAAAASAAEAnwIDAakCAACCAgIADwMIAwYDAgMJBAAAMEADBAMKAwsEABxggAMDAwwEAChggAMFAw0EAADQQAEBGw4BGAAAAAAAAAAAAAADAAAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAP8EAAAAAAAAAAEAAAAAAAAAAAABAAMAAAEAAAABAAAAAAAAAAQAHQAAAAACAAABAgANowAAAP8AAwAAAAAAMAAAbgAAAADAAQEAEgAAADABAO8CAAAAwAEDADABADMEAAAAggACAAUDDwYAAwcGAgMOAgACAQABGAAAAAQABAAAABIAAB0BAAAAAAPOmIVejHnn1lKaskhRfIDrvoCSKvxc718=

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:38
-- Luau version 6, Types version 3
-- Time taken: 0.003464 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1, arg2) -- Line 9
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_2_upvr)
	module.PlayerCalls = {}
	module.MaxNumCalls = arg1
	module.CallTimeout = arg2
	module.ThrottlePenaltySeconds = nil
	module.PenalizedPlayers = {}
	return module
end
function module_2_upvr.CallCheck(arg1, arg2) -- Line 27
	if not arg2 or not arg2.Parent or arg1.PenalizedPlayers[arg2] then
		return false
	end
	local var3 = arg1.PlayerCalls[arg2]
	if not var3 then
		var3 = {}
	end
	arg1.PlayerCalls[arg2] = var3
	while 0 < #arg1.PlayerCalls[arg2] and arg1.CallTimeout < tick() - arg1.PlayerCalls[arg2][1] do
		table.remove(arg1.PlayerCalls[arg2], 1)
	end
	if #arg1.PlayerCalls[arg2] < arg1.MaxNumCalls then
		table.insert(arg1.PlayerCalls[arg2], tick())
		return true
	end
	if arg1.ThrottlePenaltySeconds then
		arg1.PenalizedPlayers[arg2] = true
		delay(arg1.ThrottlePenaltySeconds, function() -- Line 46
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1.PenalizedPlayers[arg2] = nil
		end)
	end
	return false
end
return module_2_upvr