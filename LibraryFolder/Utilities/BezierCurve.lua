-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- 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

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:21
-- Luau version 6, Types version 3
-- Time taken: 0.005314 seconds

return {
	BezierFactory = function(arg1, arg2, arg3, arg4) -- Line 10, Named "BezierFactory"
		assert(arg1, "[BezierFactory] - Need P1x to construct a Bezier Factory")
		assert(arg2, "[BezierFactory] - Need P1y to construct a Bezier Factory")
		assert(arg3, "[BezierFactory] - Need P2x to construct a Bezier Factory")
		assert(arg4, "[BezierFactory] - Need P2y to construct a Bezier Factory")
		local function _(arg1_2, arg2_2) -- Line 18, Named "A"
			return 1 - 3 * arg2_2 + 3 * arg1_2
		end
		local function _(arg1_3, arg2_3) -- Line 22, Named "B"
			return 3 * arg2_3 - 6 * arg1_3
		end
		local function _(arg1_4) -- Line 26, Named "C"
			return 3 * arg1_4
		end
		local function _(arg1_5, arg2_4, arg3_2) -- Line 31, Named "CalculateBezier"
			return ((((1 - 3 * arg3_2 + 3 * arg2_4) * arg1_5) + (3 * arg3_2 - 6 * arg2_4)) * arg1_5 + 3 * arg2_4) * arg1_5
		end
		local function _(arg1_6, arg2_5, arg3_3) -- Line 36, Named "GetSlope"
			return 3 * (1 - 3 * arg3_3 + 3 * arg2_5) * arg1_6 * arg1_6 + 2 * (3 * arg3_3 - 6 * arg2_5) * arg1_6 + 3 * arg2_5
		end
		local function GetTForX_upvr(arg1_7) -- Line 41, Named "GetTForX"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg3 (readonly)
			]]
			local var4
			for _ = 1, 4 do
				local var5 = var4
				local var6 = arg1
				local var7 = arg3
				local var8 = 3 * (1 - 3 * var7 + 3 * var6) * var5 * var5 + 2 * (3 * var7 - 6 * var6) * var5 + 3 * var6
				if var8 == 0 then
					return var4
				end
				local var9 = var4
				local var10 = arg1
				local var11 = arg3
				var4 -= (((((1 - 3 * var11 + 3 * var10) * var9) + (3 * var11 - 6 * var10)) * var9 + 3 * var10) * var9 - arg1_7) / var8
			end
			return var4
		end
		return function(arg1_8) -- Line 57
			--[[ Upvalues[3]:
				[1]: GetTForX_upvr (readonly)
				[2]: arg2 (readonly)
				[3]: arg4 (readonly)
			]]
			local GetTForX_result1 = GetTForX_upvr(arg1_8)
			local var14 = arg2
			local var15 = arg4
			return ((((1 - 3 * var15 + 3 * var14) * GetTForX_result1) + (3 * var15 - 6 * var14)) * GetTForX_result1 + 3 * var14) * GetTForX_result1
		end
	end;
}