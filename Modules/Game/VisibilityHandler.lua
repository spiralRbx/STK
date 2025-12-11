-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- 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

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:06:56
-- Luau version 6, Types version 3
-- Time taken: 0.005982 seconds

local module_upvr = {}
local Load = require(game.ReplicatedStorage.Load)
local var2_result1_upvr = Load("Network")
function module_upvr.SetVisibility(arg1, arg2) -- Line 17
	--[[ Upvalues[1]:
		[1]: var2_result1_upvr (readonly)
	]]
	local var4
	if not var4 then
		var4 = arg1.CharacterAdded:Wait()
	end
	if arg2 then
		var4:SetPrimaryPartCFrame(var2_result1_upvr:InvokeServer("GetPlayerCFrame", arg1))
		var4.Parent = workspace
	else
		var4.Parent = game.ServerStorage
	end
end
local Load_result1_upvr = Load("Enums")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local var2_result1_upvr_2 = Load("Constants")
function module_upvr.RefreshVisibility(arg1) -- Line 27
	--[[ Upvalues[4]:
		[1]: Load_result1_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: var2_result1_upvr_2 (readonly)
	]]
	local Visibility = arg1:GetAttribute("Visibility")
	if Visibility == Load_result1_upvr.PlayerVisibility.Visible then
		module_upvr.SetVisibility(arg1, true)
	else
		local var9 = Load_result1_upvr
		if Visibility == var9.PlayerVisibility.VisibleToTeam then
			if LocalPlayer_upvr:GetAttribute("TeamID") ~= arg1:GetAttribute("TeamID") then
				var9 = false
			else
				var9 = true
			end
			module_upvr.SetVisibility(arg1, var9)
			return
		end
		var9 = Load_result1_upvr
		if Visibility == var9.PlayerVisibility.HiddenFromKiller then
			if LocalPlayer_upvr:GetAttribute("TeamID") == var2_result1_upvr_2.TEAMS.Killer.name then
				var9 = false
			else
				var9 = true
			end
			module_upvr.SetVisibility(arg1, var9)
			return
		end
		if Visibility == Load_result1_upvr.PlayerVisibility.HiddenFromSurvivorAndKiller then
			local var10 = false
			if LocalPlayer_upvr:GetAttribute("TeamID") ~= var2_result1_upvr_2.TEAMS.Killer.name then
				if LocalPlayer_upvr:GetAttribute("TeamID") == var2_result1_upvr_2.TEAMS.Survivor.name then
					var10 = false
				else
					var10 = true
				end
			end
			module_upvr.SetVisibility(arg1, var10)
			return
		end
		if Visibility == Load_result1_upvr.PlayerVisibility.Invisible then
			module_upvr.SetVisibility(arg1, false)
		end
	end
end
return module_upvr