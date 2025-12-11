-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMYDHNldG1ldGF0YWJsZQhRdWV1ZUVuZApRdWV1ZUluZGV4B0RlbGV0ZWQISW5zdGFuY2UDbmV3DUJpbmRhYmxlRXZlbnQFRXZlbnQERmlyZQZEZWxldGUKT25GaW5pc2hlZAVTdGFydARXYWl0BFN0b3AEd2FpdAROZXh0B3JlcXVpcmUEZ2FtZRFSZXBsaWNhdGVkU3RvcmFnZQdMaWJyYXJ5DFdhaXRGb3JDaGlsZAVUaW1lcgRMb2FkB19faW5kZXgABgQAAQAAABn/AAMAAAAAAPsDAACePQAEAwAAAFICAACkAQEAAAAAQJ8BAwGMAQAAMAEACAIAAACMAQAAMAEAuwMAAACpAQAAMAEAwAQAAACkAQcAABhQgG8CCACfAQICMAEANgkAAACCAAIACgMBBAAAAEADAgMDAwQDBQMGBAAYUIADBwMIAAoGARgAAAEAAAAAAAABAAABAAABAAABAAAAAAACDQAAAAADAQAAAAAJqQEBADABAMAAAAAATQEANgEAAAC8AQHdAgAAAJ8BAgGCAAEAAwMEAwgDCQAYCgEYAAAAAQAAAAABGQAAAAACAAIAAAAJqQABAN4AAAD7AQEATQABNgAAAAC8AADdAQAAAJ8AAgGCAAEAAgMIAwkALAABGAAAAQAAAAAAAS0AAAAABwIBAAAAMcYCAAAOAREAqQMAAPsFAABNBAXvAAAAAFIFAQCfBAICUgIEANkGAAASAQP/EgAAALwEAkMBAAAAnwQDAbwEAhwCAAAAnwQCAcEDAABNAwAIAwAAAE0FAAgDAAAAlQQFBDAEAAgDAAAATQQAwAUAAAArBAwATQQAuwYAAADxAwkABAAAAE0FADYHAAAATQQFNgcAAAC8BAT3CAAAAJ8EAgFIAPH/DgIDALwEAvoJAAAAnwQCAaQECwAAAKBAnwQBAYIAAQAMAwYDCwMMAwICAAAAAAAA8D8DBAMDAwgDDQMOAw8EAACgQAECHg0BGAACAQEAAAAAAAEAAAAAAAQAAAADAAEAAAAAAgAAAAAAAAEAAAAAAAD/BAEAAAMAAAQnAAAAAAMBAAAAAAtNAgC7AQAAAJUBAgAwAQC7AQAAAE0BADYCAAAAvAEB3QMAAACfAQIBggABAAQCAAAAAAAA8D8DAwMIAwkARBABGAAAAAAAAQAAAAABRQAAAAAFAAABAgAjowAAAP8ABAAAAAAApAEBAAAAAECkAwMAAAAgQE0CAz8EAAAAbwQFALwCAtMGAAAAnwIDAJ8BAAJvBAcAvAIBfggAAACfAgMCMAAAbgkAAADAAwoAEgAAADADAO8LAAAAwAMMADADAFENAAAAwAMOABIAAgAwAwD3DwAAAMADEAAwAwDzEQAAAIIAAgASAxEEAAAAQAMSBAAAIEADEwMUAxUDFgMXAxgGAAMGBgEDCgYDAw0GBAMQBAABAwQBAAEYAAAAAQAAAAAAAAAAAAABAAAAAwAEAAAADgAABgAAACYAAAkBAAAAAAVicLm9HbdqnK1P/iuEaJdqEmiuyVC007w=

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:33
-- Luau version 6, Types version 3
-- Time taken: 0.003018 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new() -- Line 10
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_2_upvr)
	module.QueueEnd = 0
	module.QueueIndex = 0
	module.Deleted = false
	module.Event = Instance.new("BindableEvent")
	return module
end
function module_2_upvr.Delete(arg1) -- Line 24
	arg1.Deleted = true
	arg1.Event:Fire()
end
local any_Load_result1_upvr = require(game.ReplicatedStorage:WaitForChild("Library")):Load("Timer")
function module_2_upvr.Wait(arg1, arg2) -- Line 30
	--[[ Upvalues[1]:
		[1]: any_Load_result1_upvr (readonly)
	]]
	if arg2 then
		local any_new_result1 = any_Load_result1_upvr.new(arg2)
		local var6_upvw = false
		any_new_result1:OnFinished(function() -- Line 44
			--[[ Upvalues[2]:
				[1]: var6_upvw (read and write)
				[2]: arg1 (readonly)
			]]
			var6_upvw = true
			arg1.Event:Fire()
		end)
		any_new_result1:Start()
	end
	arg1.QueueEnd += 1
	while not arg1.Deleted and arg1.QueueEnd ~= arg1.QueueIndex do
		arg1.Event.Event:Wait()
	end
	if any_new_result1 then
		any_new_result1:Stop()
	end
	wait()
end
function module_2_upvr.Next(arg1) -- Line 68
	arg1.QueueIndex += 1
	arg1.Event:Fire()
end
return module_2_upvr