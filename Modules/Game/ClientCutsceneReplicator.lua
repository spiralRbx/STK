-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMUEUN1dHNjZW5lQ29tcGxldGVkDFNldEF0dHJpYnV0ZQR0YXNrBHdhaXQMR2V0QXR0cmlidXRlHkNsaWVudEN1dHNjZW5lUmVwbGljYXRpb25FdmVudApGaXJlU2VydmVyEFlpZWxkRm9yQ3V0c2NlbmUEZ2FtZRFSZXBsaWNhdGVkU3RvcmFnZQpHZXRTZXJ2aWNlB1BsYXllcnMKUnVuU2VydmljZQdyZXF1aXJlBExvYWQJQ29uc3RhbnRzBElkbGUHTmV0d29yawtMb2NhbFBsYXllcgpCaW5kRXZlbnRzAAIEAAIAAAAb+wAAAG8CAACpAwAAvAAALgEAAACfAAQBjAAAAKQBBAAADCCAnwEBAkMAAAH7AQAAbwMAALwBARIFAAAAnwEDAisBBACMAQ8AtwECAAAAAABIAPL/+wEBAG8DBgC8AQFrBwAAAJ8BAwGCAAEACAMBAwIDAwMEBAAMIIADBQMGAwcAEggBGAAAAAAAAAIBAAAAAAAAAAAAAAAAAAQAAAAAAhQAAAAADQAAAQIAN6MAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwKkAQEAAAAAQG8DBAC8AQEWAwAAAJ8BAwKkAgEAAAAAQG8EBQC8AgIWAwAAAJ8CAwKkAwcAAABgQKQGAQAAAABATQUGPwIAAABNBAV+CAAAAJ8DAgJSBAMAbwUJAJ8EAgJSBQMAbwYKAJ8FAgJSBgMAbwcLAJ8GAgJNBwExDAAAAP8IAQAAAAAAwAkNABIABwASAAYAMAkIww4AAADiCxAATQwIww4AAAAwDAuqDwAAALwJBu8RAAAAnwkDAYIIAgASAwkEAAAAQAMKAwsDDAMNAw4EAABgQAMPAxADEQMSAxMGAAMIAwYFAQ8DFAEAAQABGAABAAAAAAABAAAAAAABAAAAAAADAAAAAAAAAAABAAABAAABAAADAAIAAwAAAAAOAQAAAP8AAAQBAAAAAAGyIzNmjWKzHKO33MV3JvlDwjskEoDnWWc=

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:06:59
-- Luau version 6, Types version 3
-- Time taken: 0.001761 seconds

local var1_result1_upvr = require(game.ReplicatedStorage.Load)("Network")
local module = {}
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
function module.YieldForCutscene() -- Line 18
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var1_result1_upvr (readonly)
	]]
	LocalPlayer_upvr:SetAttribute("CutsceneCompleted", false)
	repeat
	until LocalPlayer_upvr:GetAttribute("CutsceneCompleted") and 15 < 0 + task.wait()
	var1_result1_upvr:FireServer("ClientCutsceneReplicationEvent")
end
var1_result1_upvr:BindEvents({
	ClientCutsceneReplicationEvent = module.YieldForCutscene;
})
return module