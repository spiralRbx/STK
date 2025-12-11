-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMOCEJpbmRhYmxlCEluc3RhbmNlA25ldw1CaW5kYWJsZUV2ZW50C1JlbW90ZUV2ZW50BE5hbWUGc2NyaXB0BlBhcmVudA5DcmVhdGVOZXdFdmVudAVFdmVudAdDb25uZWN0BEZpcmUFZGVsYXkEV2FpdAAGBAIBAAAAFPABBgAAAACApAIDAAAIEIBvAwQAnwICAisCBACkAgMAAAgQgG8DBQCfAgICMAACugYAAACkAwgAAABwQDADAiQJAAAA+wMAAGoCAwCCAgIACgMBAwIDAwQACBCAAwQDBQMGAwcEAABwQAMIAAYJARgAAAAAAAAAAAAAAAEAAQAAAAEAAQcAAAAABgIBAAAAHPsDAACHAgMAKwISAKQDAgAABACAbwQDAJ8DAgIrAwQApAMCAAAEAIBvBAQAnwMCAjAAA7oFAAAApAQHAAAAYEAwBAMkCAAAAPsEAABqAwQAUgIDAE0DAjYJAAAAUgUBALwDA8cKAAAAnwMDAIIDAAALAwIDAwQABACAAwQDBQMGAwcEAABgQAMIAwoDCwAQCgEYCgAA9gAAAAAAAAAAAQABAAAAAQABBwAAAAAAAAcAAAAABQIBAQAAC6MCAAD7AwAAhwIDAQ4CBgD7AwAAhwIDAd0EAAC8AgLdAAAAAJ8CAAGCAAEAAQMMACMMARgAAQAAAQAAAAAAAiMAAAAAAgACAAAADfsAAAArAAoA+wABAA4ACAD7AQEATQABJAAAAAAOAAQA+wABALwAAN0BAAAAnwACAYIAAQACAwgDDAAvAAEYAAAAAAAAAAABAAAAAjAAAAAACAMBAAAAKvsEAACHAwQBKwMSAKQEAgAABACAbwUDAJ8EAgIrBAQApAQCAAAEAIBvBQQAnwQCAjABBLoFAAAApAUHAAAAYEAwBQQkCAAAAPsFAABqBAUBUgMEAKkEAAAOAgcApAUKAAAAkEBSBgIA2QcAABIBBP8SAAMAnwUDAQ4DCQBNBQMkCAAAAA4FBgBNBQM2CwAAALwFBfcMAAAAnwUCAakEAQDBBAAAggABAA0DAgMDBAAEAIADBAMFAwYDBwQAAGBAAwgDDQQAAJBAAwoDDgEDKQ4BGCQAANwAAAAAAAAAAAEAAQAAAAEAASECAQAAAAAAAAkAAAABAAAAAAEDAAcAAAAABQAAAQIAFqMAAAD/AAMAAAAAAP8BAAAAAAAA/wIAAAAAAADAAwAAEgABAMAEAQASAAEAMAQANgIAAADABAMAEgABADAEAN0EAAAAwAQFABIAAQAwBAD3BgAAAIIAAgAHBgAGAQMKBgIDDAYEAw4EAAECBAEAARgAAAACAAEAAgAKAAAAEwAAAAYAAAAtAQAAAAAFveC7roVIsN/FtYNPFrNISc34rNqPJNGv

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:17
-- Luau version 6, Types version 3
-- Time taken: 0.004226 seconds

local module = {}
local tbl_upvr = {}
local function _(arg1, arg2) -- Line 6, Named "CreateNewEvent"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg2 ~= "Bindable" or not Instance.new("BindableEvent") then
		local RemoteEvent = Instance.new("RemoteEvent")
	end
	RemoteEvent.Name = arg1
	RemoteEvent.Parent = script
	tbl_upvr[arg1] = RemoteEvent
	return RemoteEvent
end
function module.Event(arg1, arg2) -- Line 16
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var4 = tbl_upvr[arg1]
	if not var4 then
		local BindableEvent = Instance.new("BindableEvent")
		if not BindableEvent then
			BindableEvent = Instance.new("RemoteEvent")
		end
		BindableEvent.Name = arg1
		BindableEvent.Parent = script
		tbl_upvr[arg1] = BindableEvent
		var4 = BindableEvent
	end
	return var4.Event:Connect(arg2)
end
function module.Fire(arg1, arg2, ...) -- Line 35
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if tbl_upvr[arg2] then
		tbl_upvr[arg2]:Fire(...)
	end
end
function module.Wait(arg1, arg2, arg3) -- Line 41
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var6_upvr
	if not var6_upvr then
		local BindableEvent_2 = Instance.new("BindableEvent")
		if not BindableEvent_2 then
			BindableEvent_2 = Instance.new("RemoteEvent")
		end
		BindableEvent_2.Name = arg2
		BindableEvent_2.Parent = script
		tbl_upvr[arg2] = BindableEvent_2
		var6_upvr = BindableEvent_2
	end
	if arg3 then
		local var9_upvw = false
		delay(arg3, function() -- Line 47
			--[[ Upvalues[2]:
				[1]: var9_upvw (read and write)
				[2]: var6_upvr (readonly)
			]]
			if not var9_upvw and var6_upvr and var6_upvr.Parent then
				var6_upvr:Fire()
			end
		end)
	end
	if var6_upvr and var6_upvr.Parent then
		var6_upvr.Event:Wait()
		var9_upvw = true
	end
end
return module