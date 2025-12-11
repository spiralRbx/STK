-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- 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

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:04
-- Luau version 6, Types version 3
-- Time taken: 0.004762 seconds

local Load = require(game:GetService("ReplicatedStorage").Load)
local var7_result1_upvr = Load("Network")
local module = {}
local DailyLogin_upvr = Load("GuiHandler").GetScreenGui("Priority"):WaitForChild("DailyLogin")
local any_InvokeServer_result1 = var7_result1_upvr:InvokeServer("GetDailyRewardInfo")
if not any_InvokeServer_result1 then
	return module
end
local _1 = any_InvokeServer_result1[1]
local _2 = any_InvokeServer_result1[2]
local _3 = any_InvokeServer_result1[3]
local _4_upvr = any_InvokeServer_result1[4]
local GuiService_upvr = game:GetService("GuiService")
function Claim(arg1) -- Line 37
	--[[ Upvalues[4]:
		[1]: DailyLogin_upvr (readonly)
		[2]: _4_upvr (readonly)
		[3]: var7_result1_upvr (readonly)
		[4]: GuiService_upvr (readonly)
	]]
	DailyLogin_upvr.Container.Rewards["Day"..(_4_upvr + 1)].Claimed.Visible = true
	var7_result1_upvr:FireServer("ClaimDailyReward")
	task.wait(2.5)
	DailyLogin_upvr.Visible = false
	GuiService_upvr.SelectedObject = nil
end
if not _1 and not Load("Debug").Enabled then
	print(_1, _2, _3, _4_upvr)
	DailyLogin_upvr.Title.Text = "Daily Login Streak: ".._2
	for i, v in ipairs(_3) do
		DailyLogin_upvr.Container.Rewards["Day"..i].Reward.RewardAmount.Text = v
	end
	for i_2 = 1, _4_upvr do
		v = DailyLogin_upvr.Container.Rewards["Day"..i_2]
		i = v.Claimed
		v = true
		i.Visible = v
	end
	task.wait(1.5)
	DailyLogin_upvr.Visible = true
	if game:GetService("UserInputService").GamepadEnabled then
		DailyLogin_upvr.Container.Claim.Visible = false
		task.wait(1)
		Claim(_4_upvr)
	end
end
Load("ButtonHandler").Wrap(DailyLogin_upvr.Container.Claim.Mover, Claim)
return module