-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMWBHdhaXQEd2FybhdXYWl0IHF1ZXVlIGhhcyByZWFjaGVkIAcgaXRlbXMuBG5leHQEZ2FtZQpSdW5TZXJ2aWNlCkdldFNlcnZpY2UISXNTdHVkaW8EdHlwZQZudW1iZXIFdGFibGUGaW5zZXJ0Am9zBWNsb2NrCWNvcm91dGluZQV5aWVsZAdydW5uaW5nBnJlc3VtZQVzcGF3bgdTdGVwcGVkB0Nvbm5lY3QABAYAAQAAABOkAAEAAAAAQIwBLAGfAAIB+wEAABwAAQCMAWQAYAEJAAAAAACkAAMAAAAgQG8CBAD7BQAAHAMFAG8EBQBzAQIEnwACAUgA7v+CAAEABgMBBAAAAEADAgQAACBAAwMDBAAIAAEYAQAAAAEAAAAAAQAAAAAAAAD9BgkAAAAACwADAAAAF/sAAACfAAECpAEBAAAAAED7AgEAxgMAABcBDQATBwUAJgYABxMHBQF9BwkABgAAAPsHAQDGCAAAaggHBPsHAgATCAUCUgkGAFIKAACfBwQBbgHy/wIAAACCAAEAAgMFBAAAAEAAEQABGAAAAQAAAAABAAEAAAEAAAEAAAAA/AAHEgAAAAAHAQQAAAAwpAEBAAAAAEBvAwIAvAEBFgMAAACfAQMCvAEBCgQAAACfAQICDgEFAKQBBgAAAFBAUgIAAJ8BAgGCAAEAuygAA1IDAACkAggAAABwQJ8CAgLwAgQACQAAgIwCAABgAAMAAgAAAIwBAABlAAEAUgEAAFIAAQD7AgAA/wMAAAMAAAD7BAEAnwQBAlIFAAD7BgIAnwYBAMUDBAABAAAAnjQCAwMAAACkAQwAACyggJ8BAwH7AQMAnwEBAIIBAACCAAEADQMGBAAAAEADBwMIAwkDAQQAAFBAAwoEAABwQAMLAwwDDQQALKCAABwAARgAAAAAAAAAAAAAAQAAAAACAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAEAAAMdAAAAAAkAAAECACWjAAAApAACAAAEAICkAQUAABAwgKQCBwAAGDCApAMJAAAgMID/BAAAAAAAAKQFCwAAAKBAwAYMABIABACfBQIBpAYOAAAA0EBvCA8AvAYGFhAAAACfBgMCTQUG2REAAADABxIAEgAAABIABAASAAMAvAUFxxMAAACfBQMBwAUUABIABAASAAAAEgACABIAAQCCBQIAFQMOAw8EAAQAgAMQAxEEABAwgAMSBAAYMIADEwQAIDCAAxQEAACgQAYAAwYEAADQQAMHAwgDFQYBAxYGAgMAAQIBAAEYAAAAAQABAAEAAgACAAAAAAkAAAAAAAAAAAAAAAAAAAsAAAAAAAEAAAAAA+UIJG2rFP7F4t4kqOCw6LeVEDMZ18xObA==

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:40
-- Luau version 6, Types version 3
-- Time taken: 0.003766 seconds

local clock_upvr = os.clock
local tbl_upvr = {}
spawn(function() -- Line 8
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	while true do
		wait(300)
		if 100 < #tbl_upvr then
			warn("Wait queue has reached "..(#tbl_upvr).." items.")
		end
	end
end)
local resume_upvr = coroutine.resume
game:GetService("RunService").Stepped:Connect(function() -- Line 17
	--[[ Upvalues[3]:
		[1]: clock_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: resume_upvr (readonly)
	]]
	local var1_result1 = clock_upvr()
	for i, v in next, tbl_upvr do
		local var9 = var1_result1 - v[1]
		if v[2] <= var9 then
			tbl_upvr[i] = nil
			resume_upvr(v[3], var9, var1_result1)
		end
	end
end)
local running_upvr = coroutine.running
local yield_upvr = coroutine.yield
return function(arg1) -- Line 28
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: clock_upvr (readonly)
		[3]: running_upvr (readonly)
		[4]: yield_upvr (readonly)
	]]
	local var13
	if var13 then
		var13 = wait
		var13(arg1)
	else
		if type(arg1) ~= "number" or arg1 < 0 then
			var13 = 0
		else
			var13 = arg1
		end
		var13 = table.insert
		var13(tbl_upvr, {clock_upvr(), var13, running_upvr()})
		var13 = yield_upvr()
		return var13
	end
end