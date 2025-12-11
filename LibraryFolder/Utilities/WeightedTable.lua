-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMVDHNldG1ldGF0YWJsZQZSYW5kb20DbmV3A1JORwpOZXh0TnVtYmVyBG5leHQLTmV4dEludGVnZXIFdGFibGUGaW5zZXJ0B1NodWZmbGUEUG9vbAxDaG9vc2VSYW5kb20HcmVxdWlyZQRnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlB0xpYnJhcnkMV2FpdEZvckNoaWxkB1V0aWxpdHkETG9hZAVUYWJsZQdfX2luZGV4AAMSAgMAAABH/wMCAAAAAAD7BAAAnj0DAwQAAACkAgEAAAAAQJ8CAwIOAQUApAMEAAAMIIBSBAEAnwMCAisDAQD7AwEAMAMClQUAAACMBQEAjAPoA4wEAQCoAwYATQYClQUAAAC8BgaFBgAAAJ8GAgGLA/r//wMAAAAAAACkBAgAAABwQFIFAADGBgAAFwQTAIwLAQBSCQgAjAoBAKgJDwBNDgKVBQAAAIwQAQAcEQMAvA4OjAkAAACfDgQCNDQDBQ4HAABSDQMAUg8HAKQMDAAALKCAnwwEAYsJ8f9uBOz/AgAAAPsEAgBSBgMATQgClQUAAACMCgEAjAsQJ7wICIwJAAAAnwgEApUHCA28BATiDgAAAJ8EBAEwAwJCDwAAAIICAgAQAwEEAAAAQAMCAwMEAAwggAMEAwUDBgQAAHBAAwcDCAMJBAAsoIACAAAAWhbxokEDCgMLADYDARgAAAAAAAAAAAIAAAAAAAAAAAIAAAAAAAAAAAACAAEAAAAAAQAAAAEAAAAAAAAAAAAAAAAA//8ABgAAAAAAAAAAAAAAAAIAAjcAAAAACAEAAAAADU0CAEIAAAAATQMAlQEAAACMBQEATQcAQgAAAAAcBgcAvAMDjAIAAACfAwQChwECA4IBAgADAwsDBAMHAEsMARgAAAAAAAAAAAAAAAAATAAAAAAGAAABAgAlowAAAKQAAQAAAABApAIDAAAAIEBNAQI/BAAAAG8DBQC8AQHTBgAAAJ8BAwCfAAACbwMHALwBAH4IAAAAnwEDAm8ECQC8AgB+CAAAAJ8CAwL/AwMAAAAAADADA24KAAAApAQNAAAwsICfBAECwAUOABIAAwASAAQAEgACADAFA+8MAAAAwAUPADAFA0sQAAAAggMCABEDDQQAAABAAw4EAAAgQAMPAxADEQMSAxMDFAMVAwIDAwQAMLCABgAGAQMMAgABAQABGAAAAAAAAAAAAAAAAAEAAAABAAAAAgABAAIAAC4AAAAAABUAAAQBAAAAAAJSoiOaR509da4cHLuIbf6vIro07mBmSZs=

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:37
-- Luau version 6, Types version 3
-- Time taken: 0.004216 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local random_state_upvr = Random.new()
local any_Load_result1_upvr = require(game.ReplicatedStorage:WaitForChild("Library")):Load("Table")
function module_upvr.new(arg1, arg2) -- Line 54
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: random_state_upvr (readonly)
		[3]: any_Load_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local setmetatable_result1 = setmetatable({}, module_upvr)
	local var22
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var22 = Random.new(arg2)
		return var22
	end
	if not arg2 or not INLINED() then
		var22 = random_state_upvr
	end
	setmetatable_result1.RNG = var22
	var22 = 1000
	for _ = 1, var22 do
		setmetatable_result1.RNG:NextNumber()
	end
	var22 = {}
	for i_2, v in next, arg1 do
		for _ = 1, v do
			table.insert(var22, setmetatable_result1.RNG:NextInteger(1, #var22), i_2)
		end
	end
	any_Load_result1_upvr:Shuffle(var22, setmetatable_result1.RNG:NextInteger(1, 10000) + 158894893)
	setmetatable_result1.Pool = var22
	return setmetatable_result1
end
function module_upvr.ChooseRandom(arg1) -- Line 75
	return arg1.Pool[arg1.RNG:NextInteger(1, #arg1.Pool)]
end
return module_upvr