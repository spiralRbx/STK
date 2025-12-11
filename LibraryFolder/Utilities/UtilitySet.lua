-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- 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

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:43
-- Luau version 6, Types version 3
-- Time taken: 0.007967 seconds

local module = {
	SetDescendantProperties = function(arg1, arg2, arg3, arg4) -- Line 8, Named "SetDescendantProperties"
		for _, v in ipairs(arg2:GetDescendants()) do
			if v:IsA(arg3) then
				for i_2, v_2 in pairs(arg4) do
					if v[i_2] ~= nil then
						v[i_2] = v_2
					end
				end
			end
		end
	end;
	SetParentOfChildren = function(arg1, arg2, arg3) -- Line 22, Named "SetParentOfChildren"
		for _, v_3 in ipairs(arg2:GetChildren()) do
			v_3.Parent = arg3
		end
	end;
	SetScriptsEnabled = function(arg1, arg2) -- Line 29, Named "SetScriptsEnabled"
		for _, v_4 in ipairs(arg2:GetChildren()) do
			if v_4:IsA("Script") then
				local clone = v_4:clone()
				clone.Disabled = false
				clone.Parent = v_4.Parent
				v_4:Destroy()
			else
				arg1:SetScriptsEnabled(v_4)
			end
		end
	end;
}
local tbl_upvr = {}
function module.SetModelVisible(arg1, arg2, arg3) -- Line 44
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	for _, v_5 in ipairs(arg2:GetDescendants()) do
		local var35
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var35 = v_5:IsA("Decal")
			return var35
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var35 = v_5:IsA("Texture")
			return var35
		end
		if var35 or INLINED() or INLINED_2() then
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var35 = tbl_upvr[v_5]
				return var35
			end
			if not arg3 or arg3 and not INLINED_3() then
				var35 = tbl_upvr
				var35[v_5] = v_5.Transparency
			end
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				var35 = tbl_upvr[v_5]
				return var35
			end
			if not arg3 or not INLINED_4() then
				var35 = 1
			end
			v_5.Transparency = var35
		end
	end
end
function module.SetCharacterVisibility(arg1, arg2, arg3) -- Line 56
	for _, v_6 in pairs(arg2:GetDescendants()) do
		if v_6 ~= arg2.PrimaryPart and (v_6:IsA("BasePart") or v_6:IsA("MeshPart") or v_6:IsA("Decal")) then
			v_6.Transparency = arg3
		end
	end
end
function module.SetDescendantNetworkOwner(arg1, arg2, arg3) -- Line 66
	for _, v_7 in ipairs(arg2:GetDescendants()) do
		if v_7:IsA("BasePart") and v_7:CanSetNetworkOwnership() then
			if arg3 == "Auto" then
				v_7:SetNetworkOwnershipAuto()
			else
				v_7:SetNetworkOwner(arg3)
			end
		end
	end
end
return module