-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMUEVJvdWxldHRlQ29tcGxldGVkDFNldEF0dHJpYnV0ZQR0YXNrBHdhaXQMR2V0QXR0cmlidXRlHkNsaWVudFJvdWxldHRlUmVwbGljYXRpb25FdmVudApGaXJlU2VydmVyEFlpZWxkRm9yUm91bGV0dGUEZ2FtZRFSZXBsaWNhdGVkU3RvcmFnZQpHZXRTZXJ2aWNlB1BsYXllcnMKUnVuU2VydmljZQdyZXF1aXJlBExvYWQJQ29uc3RhbnRzBElkbGUHTmV0d29yawtMb2NhbFBsYXllcgpCaW5kRXZlbnRzAAIEAAIAAAAb+wAAAG8CAACpAwAAvAAALgEAAACfAAQBjAAAAKQBBAAADCCAnwEBAkMAAAH7AQAAbwMAALwBARIFAAAAnwEDAisBBACMAQ8AtwECAAAAAABIAPL/+wEBAG8DBgC8AQFrBwAAAJ8BAwGCAAEACAMBAwIDAwMEBAAMIIADBQMGAwcAEggBGAAAAAAAAAIBAAAAAAAAAAAAAAAAAAIAAAAAAhQAAAAADQAAAQIAN6MAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwKkAQEAAAAAQG8DBAC8AQEWAwAAAJ8BAwKkAgEAAAAAQG8EBQC8AgIWAwAAAJ8CAwKkAwcAAABgQKQGAQAAAABATQUGPwIAAABNBAV+CAAAAJ8DAgJSBAMAbwUJAJ8EAgJSBQMAbwYKAJ8FAgJSBgMAbwcLAJ8GAgJNBwExDAAAAP8IAQAAAAAAwAkNABIABwASAAYAMAkIRg4AAADiCxAATQwIRg4AAAAwDAtvDwAAALwJBu8RAAAAnwkDAYIIAgASAwkEAAAAQAMKAwsDDAMNAw4EAABgQAMPAxADEQMSAxMGAAMIAwYFAQ8DFAEAAQABGAABAAAAAAABAAAAAAABAAAAAAADAAAAAAAAAAABAAABAAABAAADAAIAAwAAAAAMAQAAAP8AAAQBAAAAAAFWxLT1u+ogUHy9cHiIojVTJtyjgWQA3vQ=

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:01
-- Luau version 6, Types version 3
-- Time taken: 0.002653 seconds

local var1_result1_upvr = require(game.ReplicatedStorage.Load)("Network")
local module = {}
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
function module.YieldForRoulette() -- Line 18
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var1_result1_upvr (readonly)
	]]
	LocalPlayer_upvr:SetAttribute("RouletteCompleted", false)
	repeat
	until LocalPlayer_upvr:GetAttribute("RouletteCompleted") and 15 < 0 + task.wait()
	var1_result1_upvr:FireServer("ClientRouletteReplicationEvent")
end
var1_result1_upvr:BindEvents({
	ClientRouletteReplicationEvent = module.YieldForRoulette;
})
return module