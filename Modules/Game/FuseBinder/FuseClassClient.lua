-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMgCl9vblRvdWNoZWQMc2V0bWV0YXRhYmxlBU1vZGVsClN1YndheUZ1c2UORmluZEZpcnN0Q2hpbGQIQ29sbGlkZXILQ29ubmVjdGlvbnMHVG91Y2hlZAdDb25uZWN0CUZ1c2VUb3VjaANuZXcGUGFyZW50FkdldFBsYXllckZyb21DaGFyYWN0ZXIRQXR0ZW1wdEZ1c2VQaWNrdXAKRmlyZVNlcnZlcgdEZXN0cm95BXBhaXJzCkRpc2Nvbm5lY3QEZ2FtZQdQbGF5ZXJzCkdldFNlcnZpY2URUmVwbGljYXRlZFN0b3JhZ2URQ29sbGVjdGlvblNlcnZpY2UKUnVuU2VydmljZQxUd2VlblNlcnZpY2UHcmVxdWlyZQRMb2FkB05ldHdvcmsLTG9jYWxQbGF5ZXIHX19pbmRleARGdXNlCFRBR19OQU1FAAUEAQEAAAAG+wEAAFIDAAC8AQEOAAAAAJ8BAwGCAAEAAQMBAB8AARgAAAAAAAEgAAAAAAYBAQAAACb/AQMAAAAAAPsEAACePQEEBAAAAFIDAQCkAgEAAAAAQJ8CAwEwAAE7AgAAAE0CATsCAAAAbwQDAKkFAQC8AgIDBAAAAJ8CBAIwAgGFBQAAAP8CAAAAAAAAMAIB8QYAAABNAgHxBgAAAE0EAYUFAAAATQMELAcAAADZBQAAEgABALwDA8cIAAAAnwMDAjADAq8JAAAAggECAAoDAgQAAABAAwMDBAMFAwYDBwMIAwkDCgEAFQsBGAAAAQAAAAAAAAIAAgAAAAAAAAAAAgAAAAIAAAAAAAAAAAAAAAAEFgAAAAAGAgIAAAAc+wIAAE0EASQAAAAAvAICiQEAAACfAgMCKwIIAPsCAABNBQEkAAAAAE0EBSQAAAAAvAICiQEAAACfAgMCKwIBAIIAAQD7AwEAbwUCALwDA2sDAAAAnwMDAU0DADsEAAAAvAMDUAUAAACfAwIBggABAAYDDAMNAw4DDwMDAxAAJgEBGAAAAAAAAAAAAAAAAAAAAAEBAgAAAAABAAAAAAEnAAAAAAgBAAAAABCkAQEAAAAAQE0CAPECAAAAnwECBBcBBAC8BgUaAwAAAJ8GAgHGBQAAbgH7/wIAAADGAQAAMAEAOwQAAACCAAEABQMRBAAAAEADBwMSAwMALxABGAAAAAAAAAEAAAH+AAUAAAEwAAAAAAoAAAECAD2jAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEBAAAAAEBvAwQAvAEBFgMAAACfAQMCpAIBAAAAAEBvBAUAvAICFgMAAACfAgMCpAMBAAAAAEBvBQYAvAMDFgMAAACfAwMCpAQBAAAAAEBvBgcAvAQEFgMAAACfBAMCpAUJAAAAgEBNBgF+CgAAAJ8FAgJSBgUAbwcLAJ8GAgJNBwAxDAAAAP8IBAAAAAAAMAgIbg0AAABvCQ4AMAkItA8AAADACRAAEgAIADAJCO8RAAAAwAkSABIAAAASAAYAMAkIDhMAAADACRQAMAkIUBUAAACCCAIAFgMTBAAAAEADFAMVAxYDFwMYAxkDGgQAAIBAAxsDHAMdAx4DHwMgBgEDCwYCAwEGAwMQAwECAwEAARgAAQAAAAAAAQAAAAAAAQAAAAAAAQAAAAAAAQAAAAAAAwAAAAACAAADAAIAAgABAAACAAAAEQAAAAAJAAAJAQAAAAAEPHGWpEsKK4cPnMIzWNTBkExpgdAOtfyl

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:15
-- Luau version 6, Types version 3
-- Time taken: 0.004057 seconds

local Players_upvr = game:GetService("Players")
local module_upvr_2 = {}
module_upvr_2.__index = module_upvr_2
module_upvr_2.TAG_NAME = "Fuse"
function module_upvr_2.new(arg1) -- Line 21
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local module_upvr = {}
	setmetatable(module_upvr, module_upvr_2)
	module_upvr.Model = arg1
	module_upvr.Collider = module_upvr.Model:FindFirstChild("SubwayFuse", true)
	module_upvr.Connections = {}
	module_upvr.Connections.FuseTouch = module_upvr.Collider.Touched:Connect(function(arg1_2) -- Line 31
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr:_onTouched(arg1_2)
	end)
	return module_upvr
end
local var5_upvr = require(game:GetService("ReplicatedStorage").Load)("Network")
function module_upvr_2._onTouched(arg1, arg2) -- Line 38
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: var5_upvr (readonly)
	]]
	local any_GetPlayerFromCharacter_result1 = Players_upvr:GetPlayerFromCharacter(arg2.Parent)
	if not any_GetPlayerFromCharacter_result1 then
		any_GetPlayerFromCharacter_result1 = Players_upvr:GetPlayerFromCharacter(arg2.Parent.Parent)
	end
	if not any_GetPlayerFromCharacter_result1 then
	else
		var5_upvr:FireServer("AttemptFusePickup")
		arg1.Model:Destroy()
	end
end
function module_upvr_2.Destroy(arg1) -- Line 47
	for _, v in pairs(arg1.Connections) do
		v:Disconnect()
		v = nil
	end
	arg1.Model = nil
end
return module_upvr_2