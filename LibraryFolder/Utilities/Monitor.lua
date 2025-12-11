-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMSBXRhYmxlBmluc2VydAVXYXRjaAR3YWl0BmlwYWlycwVwYWlycwVwcmludAVzcGF3bgVTdGFydAdyZXF1aXJlBGdhbWURUmVwbGljYXRlZFN0b3JhZ2UHTGlicmFyeQxXYWl0Rm9yQ2hpbGQHVXRpbGl0eQRMb2FkD0h1bWFub2lkTWFuYWdlcgdNb25pdG9yAAQIAwEAAAAN+wQAAP8FAAACAAAAUgYBAFIHAgDFBQYDAQAAAJ40BAMFAAAApAMCAAAEAICfAwMBggABAAMDAQMCBAAEAIAADAMBGAAAAAAAAAAAAAAAAAENAAAAAAsAAQAAABukAAEAAAAAQIwBBQCfAAIBpAADAAAAIED7AQAAnwACBFEADgCMBQAApAYFAAAAQEATBwQBnwYCBBcGAQCVBQUGbgb+/wIAAACkBggAAABwQBMHBABSCAUAnwYDAW4A8f8CAACASADm/4IAAQAJAwQEAAAAQAMFBAAAIEADBgQAAEBAAgAAAAAAAPA/AwcEAABwQAARAAEYAQAAAAEAAAAAAQEAAAAAAf8AAwAAAAD7AP4KEgAAAAADAQEAAAAGpAEBAAAAAEDAAgIAEgIAAJ8BAgGCAAEAAwMIBAAAAEAGAQEBEAkBGAAAAAAADBEAAAAABgAAAQIAKaMAAACkAAEAAAAAQKQCAwAAACBATQECPwQAAABvAwUAvAEB0wYAAACfAQMAnwAAAm8DBwC8AQB+CAAAAJ8BAwJvBAkAvAIAfggAAACfAgMC/wMAAAAAAAAYAwAhCgAAAP8DAAAAAAAAwAQLABIAAwA1BQAhCgAAADAEBQ0MAAAAwAQNABIAAwA1BQAhCgAAADAEBRwOAAAANQQAIQoAAACCBAIADwMKBAAAAEADCwQAACBAAwwDDQMOAw8DEAMRAxIGAAMDBgIDCQIAAgEAARgAAAAAAAAAAAAAAAABAAAAAgAAAAIAAAAEAAIAAAAAAAQAAAAAAA8AAAEAAAAAA+0BZsNmJwoVY1C7k2VAKA+dGXG338UMwg==

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:40
-- Luau version 6, Types version 3
-- Time taken: 0.003636 seconds

local _ = require(game.ReplicatedStorage:WaitForChild("Library"))
Monitor = {} -- Setting global
local tbl_upvr = {}
function Monitor.Watch(arg1, arg2, arg3) -- Line 12
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local tbl = {}
	tbl[1] = arg2
	tbl[2] = arg3
	table.insert(tbl_upvr, tbl)
end
function Monitor.Start(arg1) -- Line 16
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	spawn(function() -- Line 17
		--[[ Upvalues[1]:
			[1]: tbl_upvr (copied, readonly)
		]]
		while true do
			wait(5)
			for _, v in ipairs(tbl_upvr) do
				local var16 = 0
				for _, _ in pairs(v[2]) do
					var16 += 1
				end
				print(v[1], var16)
			end
		end
	end)
end
return Monitor