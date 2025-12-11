-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMVC0Nvbm5lY3Rpb25zBllpZWxkcwxzZXRtZXRhdGFibGUDTmV3BmlwYWlycwljb3JvdXRpbmUEd3JhcARmdW5jBnJlc3VtZQV0YWJsZQZyZW1vdmUERmlyZQdvcmdTZWxmBmluc2VydAdDb25uZWN0B3J1bm5pbmcFeWllbGQEV2FpdApEaXNjb25uZWN0B0Rlc3Ryb3kHX19pbmRleAAHAwABAAAAEOIBAgD/AgAAAAAAADACAfEAAAAA/wIAAAAAAAAwAgFOAQAAAPsCAACePQEDAgAAAKQABAAAADBAnwADAoIAAgAFAwEDAgUCAAEDAwQAADBAAAcEARgAAQAAAAEAAAABAAD9AAAACAAAAAAJAQABAAAkowEAAKQBAQAAAABATQIA8QIAAACfAQIEUQEHAKQGBQAAEDCATQcFZgYAAACfBgIC3QcAAJ8GAAFuAfj/AgAAgKQBAQAAAABATQIATgcAAACfAQIEUQELAKQGCQAAIDCAUgcFAN0IAACfBgABpAYMAAAsoIBNBwBOBwAAAFIIBACfBgMBbgH0/wIAAICCAAEADQMFBAAAAEADAQMGAwcEABAwgAMIAwIDCQQAIDCAAwoDCwQALKCAAA4MARgAAQAAAAAAAQAAAAAAAP8ABAAAAAAAAQAAAAABAAAAAAD+AAQOAAAAAAYCAQAAABTiAwIAMAEDZgAAAAAwAAOiAQAAAPsEAACePQMDBAAAAKQCBAAAADBAnwIDAk0EAPEFAAAAnjQEBAIAAABSBQIApAMIAAAcYICfAwMBggICAAkDCAMNBQIAAQMDBAAAMEADAQMKAw4EABxggAAZDwEYAAEAAQABAAD9AAAFAAAAAAAAAAEaAAAAAAQBAAAAAA1NAgBOAAAAAKQDAwAACBCAnwMBAEw0AAKkAQYAABRAgJ8BAAGkAQgAABwQgJ8BAQCCAQAACQMCAwYDEAQACBCAAwoDDgQAFECAAxEEABwQgAAjEgEYAAAAAAAAAAAAAQAAACQAAAAACQEAAAAAHKQBAQAAAABATQQAogIAAABNAgTxAwAAAJ8BAgRRAQoAmgUJAAAAAACkBgYAABRAgE0IAKICAAAATQcI8QMAAABSCAQAnwYDAW4B9f8CAACAgT0ABQcAAABSAgAAbwMHAKQBCQAAAIBAnwEDAYIAAQAKAwUEAAAAQAMNAwEDCgMLBAAUQIAAAwMEAACAQAAoEwEYAAAAAAAAAAABAAEAAAAAAAAA/gAFAAAAAAAAASkAAAAACAEAAAAAH6QBAQAAAABATQIA8QIAAACfAQIEUQEDALwGBRoDAAAAnwYCAW4B/P8CAACApAEBAAAAAEBNAgBOBAAAAJ8BAgRRAQQApAYHAAAYUIBSBwUAnwYCAW4B+/8CAACAgT0ABQgAAABSAgAAbwMIAKQBCgAAAJBAnwEDAYIAAQALAwUEAAAAQAMBAxMDAgMGAwkEABhQgAADAwQAAJBAADEUARgAAAAAAAABAAD/AAQAAAAAAAEAAAD/AAQAAAAAAAABMgAAAAADAAABAgAeowAAAP8ABAAAAAAAMAAAbgAAAAD/AQIAAAAAADABAW4AAAAAwAIBABIAAAAwAgDPAgAAAMACAwAwAgDdBAAAAMACBQASAAEAMAIAxwYAAADAAgcAMAIA9wgAAADAAgkAMAIBGgoAAADAAgsAMAIAUAwAAACCAAIADQMVBgADBAYBAwwGAgMPBgMDEgYEAxMGBQMUBgABAgMEBQEAARgAAAABAAIAAQACAAAABwAACwAAAAoAAAUAAAkAAAwBAAAAAAZRBJSKCIjJLiwr2FFsmijPIRyD/mPA/os=

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:22
-- Luau version 6, Types version 3
-- Time taken: 0.004292 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local tbl_2_upvr = {}
tbl_2_upvr.__index = tbl_2_upvr
function module_upvr.New() -- Line 7
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return setmetatable({
		Connections = {};
		Yields = {};
	}, module_upvr)
end
function module_upvr.Fire(arg1, ...) -- Line 14
	for _, v in ipairs(arg1.Connections) do
		coroutine.wrap(v.func)(...)
	end
	for i_2, v_2 in ipairs(arg1.Yields) do
		coroutine.resume(v_2, ...)
		table.remove(arg1.Yields, i_2)
	end
end
function module_upvr.Connect(arg1, arg2) -- Line 25
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	local tbl = {}
	tbl.func = arg2
	tbl.orgSelf = arg1
	local setmetatable_result1 = setmetatable(tbl, tbl_2_upvr)
	table.insert(arg1.Connections, setmetatable_result1)
	return setmetatable_result1
end
function module_upvr.Wait(arg1) -- Line 35
	table.insert(arg1.Yields, coroutine.running())
	return coroutine.yield()
end
function tbl_2_upvr.Disconnect(arg1) -- Line 40
	for i_3, v_3 in ipairs(arg1.orgSelf.Connections) do
		if v_3 == arg1 then
			table.remove(arg1.orgSelf.Connections, i_3)
		end
	end
	setmetatable(arg1, nil)
end
function module_upvr.Destroy(arg1) -- Line 49
	for _, v_4 in ipairs(arg1.Connections) do
		v_4:Disconnect()
	end
	for _, v_5 in ipairs(arg1.Yields) do
		coroutine.resume(v_5)
	end
	setmetatable(arg1, nil)
end
return module_upvr