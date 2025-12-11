-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMUCFRBR19OQU1FBkhhc1RhZwVFeGl0cwNuZXcLb25FeGl0QWRkZWQHRGVzdHJveQ1vbkV4aXRSZW1vdmVkBGdhbWUHUGxheWVycwpHZXRTZXJ2aWNlEVJlcGxpY2F0ZWRTdG9yYWdlEUNvbGxlY3Rpb25TZXJ2aWNlB3JlcXVpcmUETG9hZAdFeGl0VkZYFkdldEluc3RhbmNlQWRkZWRTaWduYWwYR2V0SW5zdGFuY2VSZW1vdmVkU2lnbmFsBXBhaXJzCUdldFRhZ2dlZAdDb25uZWN0AAMGAQMAAAAT+wEAAFIDAAD7BQEATQQFtAAAAAC8AQHeAQAAAJ8BBAIOAQkA+wICAE0BAjwCAAAA+wMBAE0CA+8DAAAAUgMAAJ8CAgJqAgEAggABAAQDAQMCAwMDBAAUBQEYAAAAAAAAAAAAAQAAAAAAAAAAAhUAAAAABAEBAAAAEvsDAABNAgM8AAAAAIcBAgAOAQwA+wMAAE0CAzwAAAAAhwECALwBAVABAAAAnwECAfsCAABNAQI8AAAAAMYCAABqAgEAggABAAIDAwMGABoHARgAAAAAAAEAAAAAAAABAAAAAAIbAAAAAA8AAAEAAE+jAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEBAAAAAEBvAwQAvAEBFgMAAACfAQMCpAIBAAAAAEBvBAUAvAICFgMAAACfAgMCpAMHAAAAYEBNBAF+CAAAAJ8DAgJSBAMAbwUJAJ8EAgL/BQEAAAAAAP8GAAAAAAAAMAYFPAoAAABNCAS0CwAAALwGAl4MAAAAnwYDAk0JBLQLAAAAvAcC3A0AAACfBwMCwAgOABIAAgASAAQAEgAFABgIABQPAAAAwAgQABIABQAYCAB7EQAAAKQIEwAAACBBTQsEtAsAAAC8CQIFFAAAAJ8JAwCfCAAEFwgEADUNABQPAAAAUg4MAJ8NAgFuCPv/AgAAADUKABQPAAAAvAgGxxUAAACfCAMBNQoAexEAAAC8CAfHFQAAAJ8IAwGCBQIAFgMIBAAAAEADCQMKAwsDDAMNBAAAYEADDgMPAwMDAQMQAxEGAAMFBgEDBwMSBAAAIEEDEwMUAgABAQABGAABAAAAAAABAAAAAAABAAAAAAADAAAAAAMAAAQAAQAAAAIAAAAAAQAAAAACAAAAAAAGAAAABwAAAAAAAAAAAQAAAP8ABAAAAAABAAAAAAIBAAAAAAKNvRVa3AJQTkTXsUKzV2rD/aUCLr95f1s=

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:02
-- Luau version 6, Types version 3
-- Time taken: 0.003551 seconds

local CollectionService_upvr = game:GetService("CollectionService")
local var4_upvr = require(game:GetService("ReplicatedStorage").Load)("ExitVFX")
local module_upvr = {
	Exits = {};
}
function onExitAdded(arg1) -- Line 20
	--[[ Upvalues[3]:
		[1]: CollectionService_upvr (readonly)
		[2]: var4_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	if CollectionService_upvr:HasTag(arg1, var4_upvr.TAG_NAME) then
		module_upvr.Exits[arg1] = var4_upvr.new(arg1)
	end
end
function onExitRemoved(arg1) -- Line 26
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr.Exits[arg1] then
		module_upvr.Exits[arg1]:Destroy()
		module_upvr.Exits[arg1] = nil
	end
end
for _, v in pairs(CollectionService_upvr:GetTagged(var4_upvr.TAG_NAME)) do
	onExitAdded(v)
end
CollectionService_upvr:GetInstanceAddedSignal(var4_upvr.TAG_NAME):Connect(onExitAdded)
CollectionService_upvr:GetInstanceRemovedSignal(var4_upvr.TAG_NAME):Connect(onExitRemoved)
return module_upvr