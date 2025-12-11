-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- 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

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:05:37
-- Luau version 6, Types version 3
-- Time taken: 0.006911 seconds

script.Disabled = true
local Load = require(game.ReplicatedStorage.Load)
local var1_result1_upvr = Load("Promise")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local function _() -- Line 15, Named "WaitForServerReady"
	--[[ Upvalues[2]:
		[1]: var1_result1_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	return var1_result1_upvr.new(function(arg1) -- Line 16
		--[[ Upvalues[1]:
			[1]: LocalPlayer_upvr (copied, readonly)
		]]
		if LocalPlayer_upvr:GetAttribute("DoneLoading") then
			arg1()
		else
			local var6_upvw
			var6_upvw = LocalPlayer_upvr:GetAttributeChangedSignal("DoneLoading"):Connect(function() -- Line 21
				--[[ Upvalues[3]:
					[1]: LocalPlayer_upvr (copied, readonly)
					[2]: var6_upvw (read and write)
					[3]: arg1 (readonly)
				]]
				if LocalPlayer_upvr:GetAttribute("DoneLoading") then
					var6_upvw:Disconnect()
					arg1()
				end
			end)
		end
	end)
end
setmetatable(_G, {
	__index = function() -- Line 32, Named "__index"
		--[[ Upvalues[1]:
			[1]: LocalPlayer_upvr (readonly)
		]]
		task.delay(math.random(40, 80), function() -- Line 33
			--[[ Upvalues[1]:
				[1]: LocalPlayer_upvr (copied, readonly)
			]]
			LocalPlayer_upvr:Kick()
		end)
	end;
	__newindex = function() -- Line 37, Named "__newindex"
		--[[ Upvalues[1]:
			[1]: LocalPlayer_upvr (readonly)
		]]
		task.delay(math.random(40, 80), function() -- Line 38
			--[[ Upvalues[1]:
				[1]: LocalPlayer_upvr (copied, readonly)
			]]
			LocalPlayer_upvr:Kick()
		end)
	end;
})
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local var1_result1_upvr_2 = Load("Enums")
local var16_upvw
var1_result1_upvr.new(function(arg1) -- Line 16
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	if LocalPlayer_upvr:GetAttribute("DoneLoading") then
		arg1()
	else
		local var12_upvw
		var12_upvw = LocalPlayer_upvr:GetAttributeChangedSignal("DoneLoading"):Connect(function() -- Line 21
			--[[ Upvalues[3]:
				[1]: LocalPlayer_upvr (copied, readonly)
				[2]: var12_upvw (read and write)
				[3]: arg1 (readonly)
			]]
			if LocalPlayer_upvr:GetAttribute("DoneLoading") then
				var12_upvw:Disconnect()
				arg1()
			end
		end)
	end
end):andThen(function() -- Line 44
	--[[ Upvalues[4]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: var1_result1_upvr_2 (readonly)
		[4]: var16_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 13 start (CF ANALYSIS FAILED)
	local CmdrClient = ReplicatedStorage_upvr:WaitForChild("CmdrClient")
	if var1_result1_upvr_2.Rights.Admin <= LocalPlayer_upvr:GetAttribute("Rights") then
		var16_upvw = require(CmdrClient)
		-- KONSTANTWARNING: GOTO [38] #27
	end
	-- KONSTANTERROR: [0] 1. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 10 start (CF ANALYSIS FAILED)
	CmdrClient:Destroy()
	repeat
		task.wait()
	until script.Parent.ClassName == "PlayerScripts"
	script:Destroy()
	-- KONSTANTERROR: [23] 18. Error Block 10 end (CF ANALYSIS FAILED)
end)