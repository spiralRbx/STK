-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMWCVdvcmtzcGFjZQxXYWl0Rm9yQ2hpbGQEdGFzawR3YWl0BXByaW50DURlc2NlbmRhbnRzOiAOR2V0RGVzY2VuZGFudHMNQ2xpZW50IGxvYWRlZBlDbGllbnRNYXBSZXBsaWNhdGlvbkV2ZW50CkZpcmVTZXJ2ZXIWWWllbGRGb3JNYXBSZXBsaWNhdGlvbgRnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlCkdldFNlcnZpY2UHUGxheWVycwpSdW5TZXJ2aWNlB3JlcXVpcmUETG9hZAlDb25zdGFudHMESWRsZQdOZXR3b3JrCkJpbmRFdmVudHMAAgkCAQAAACmMAgAApAMBAAAAAEBSBQAAvAMD0wIAAACfAwMCpAQFAAAQMIBvBQYAnwQCAkMCAgSkBAgAAABwQG8FCQC8BwNHCgAAAJ8HAgIcBgcAUgcBAJ8EBAG8BQNHCgAAAJ8FAgIcBAUA1AEFAAQAAACMBA8AtwQCAAIAAABIAOj/pAQIAAAAcEBvBQsAnwQCAfsEAABvBgwAvAQEaw0AAACfBAMBggABAA4DAQQAAABAAwIDAwMEBAAQMIACAAAAAAAA4D8DBQQAAHBAAwYDBwMIAwkDCgARCwEYAAEAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAACAAAAAAISAAAAAAwAAAECADSjAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEBAAAAAEBvAwQAvAEBFgMAAACfAQMCpAIBAAAAAEBvBAUAvAICFgMAAACfAgMCpAMHAAAAYECkBgEAAAAAQE0FBj8CAAAATQQFfggAAACfAwICUgQDAG8FCQCfBAICUgUDAG8GCgCfBQICUgYDAG8HCwCfBgIC/wcBAAAAAADACAwAEgAGADAIB3gNAAAA4goPAE0LB3gNAAAAMAsK6Q4AAAC8CAbvEAAAAJ8IAwGCBwIAEQMMBAAAAEADDQMOAw8DEAMRBAAAYEADEgMTAxQDFQYAAwsDCQUBDgMWAQABAAEYAAEAAAAAAAEAAAAAAAEAAAAAAAMAAAAAAAAAAAEAAAEAAAEAAAQAAwAAAAwBAAAA/wAABAEAAAAAAWEYidpvX6Vv1XX6HdPLzUQRAJ6uU9zj2w==

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:06:52
-- Luau version 6, Types version 3
-- Time taken: 0.002129 seconds

local var1_result1_upvr = require(game.ReplicatedStorage.Load)("Network")
local module = {
	YieldForMapReplication = function(arg1, arg2) -- Line 17, Named "YieldForMapReplication"
		--[[ Upvalues[1]:
			[1]: var1_result1_upvr (readonly)
		]]
		local SOME = Workspace:WaitForChild(arg1)
		repeat
			print("Descendants: ", #SOME:GetDescendants(), arg2)
		until arg2 <= #SOME:GetDescendants() and 15 < 0 + task.wait(0.5)
		print("Client loaded")
		var1_result1_upvr:FireServer("ClientMapReplicationEvent")
	end;
}
var1_result1_upvr:BindEvents({
	ClientMapReplicationEvent = module.YieldForMapReplication;
})
return module