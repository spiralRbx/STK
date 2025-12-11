-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- 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

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:16
-- Luau version 6, Types version 3
-- Time taken: 0.006113 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1) -- Line 8
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_2_upvr)
	module.Bindable = Instance.new("BindableEvent")
	module.Callback = nil
	module.Fired = false
	module.Destroyed = false
	module.NeverDestroy = arg1
	module.Version = 1
	module.TimedOut = false
	return module
end
function module_2_upvr.Fire(arg1, arg2) -- Line 25
	if arg1.Fired then
	else
		arg1.Version += 1
		arg1.Fired = true
		if arg2 then
			arg1.TimedOut = true
		end
		arg1.Bindable:Fire()
		spawn(function() -- Line 33
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if not arg1.NeverDestroy and not arg1.Destroyed then
				arg1:Delete()
			end
		end)
	end
end
function module_2_upvr.OnTimedOut(arg1, arg2) -- Line 40
	arg1.Callback = arg2
end
function module_2_upvr.Wait(arg1, arg2) -- Line 46
	if arg1.Destroyed then
		error("WaitEvent can only be fired once. Use WaitEvent.new(true) to fire more than once")
	end
	arg1.TimedOut = false
	if arg2 then
		local Version_upvr = arg1.Version
		delay(arg2, function() -- Line 57
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Version_upvr (readonly)
			]]
			if arg1.Version == Version_upvr and not arg1.Fired then
				if arg1.Callback then
					arg1.Callback()
				end
				arg1.TimedOut = true
				arg1.Bindable:Fire()
			end
		end)
	end
	arg1.Fired = false
	arg1.Bindable.Event:Wait()
	delay(1, function() -- Line 72
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.NeverDestroy and not arg1.Destroyed then
			arg1:Delete()
		end
	end)
	return arg1.TimedOut
end
function module_2_upvr.Delete(arg1) -- Line 82
	if arg1.Bindable then
		arg1.Bindable:Destroy()
	end
	arg1.Destroyed = true
end
return module_2_upvr