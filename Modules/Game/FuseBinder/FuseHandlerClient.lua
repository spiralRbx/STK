-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMoCFRBR19OQU1FBkhhc1RhZwdPYmplY3RzA25ldwdvbkFkZGVkB0Rlc3Ryb3kJb25SZW1vdmVkBkFzc2V0cwRHYW1lClN1YndheUZ1c2UORmluZEZpcnN0Q2hpbGQFQ2xvbmUHU2NhbGVUbwRTaXplDkdldEV4dGVudHNTaXplCEdldFBpdm90BkNGcmFtZQFZB1Bpdm90VG8GUGFyZW50D1NwYXduRnVzZU9iamVjdARnYW1lB1BsYXllcnMKR2V0U2VydmljZRFSZXBsaWNhdGVkU3RvcmFnZRFDb2xsZWN0aW9uU2VydmljZQdyZXF1aXJlBExvYWQHTmV0d29yawZzY3JpcHQPRnVzZUNsYXNzQ2xpZW50FkdldEluc3RhbmNlQWRkZWRTaWduYWwYR2V0SW5zdGFuY2VSZW1vdmVkU2lnbmFsB0Nvbm5lY3QFcGFpcnMJR2V0VGFnZ2VkCVdvcmtzcGFjZQ5Jc0Rlc2NlbmRhbnRPZg5TcGF3bkxvY2FsRnVzZQpCaW5kRXZlbnRzAAQGAQMAAAAT+wEAAFIDAAD7BQEATQQFtAAAAAC8AQHeAQAAAJ8BBAIOAQkA+wICAE0BAlgCAAAA+wMBAE0CA+8DAAAAUgMAAJ8CAgJqAgEAggABAAQDAQMCAwMDBAAYBQEYAAAAAAAAAAAAAQAAAAAAAAAAAhkAAAAABAEBAAAAEvsDAABNAgNYAAAAAIcBAgAOAQwA+wMAAE0CA1gAAAAAhwECALwBAVABAAAAnwECAfsCAABNAQJYAAAAAMYCAABqAgEAggABAAIDAwMGAB4HARgAAAAAAAEAAAAAAAABAAAAAAIfAAAAAA8BAQAAAC37AwAATQIDgQAAAABNAQK9AQAAAG8DAgC8AQEDAwAAAJ8BAwK8AQE6BAAAAJ8BAgKMBAIAvAIBNAUAAACfAgMBTQIALwYAAAC8AwGlBwAAAJ8DAgK8BwBSCAAAAJ8HAgKkCAsAACiQgIwJAACMDP//TQ4CeA0AAAA+DQ4MCQsMDU0NA3gNAAAAPgwNDEMKCwyMCwAAnwgEAgkGBwi8BAHCDgAAAJ8EAwEwAAEkDwAAAIIAAQAQAwgDCQMKAwsDDAMNAw4DDwMQAxEDBAQAKJCAAgAAAAAAAABAAxIDEwMUAC8VARgAAAAAAAAAAAAAAAABAAAAAQABAAACAAAAAAAAAAAAAAAAAAAAAAAAAAABAAEwAAAAABEAAAEAAGqjAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEBAAAAAEBvAwQAvAEBFgMAAACfAQMCpAIBAAAAAEBvBAUAvAICFgMAAACfAgMCpAMHAAAAYEBNBAF+CAAAAJ8DAgJSBAMAbwUJAJ8EAgKkBQcAAABgQKQICwAAAKBATQcIJAwAAABNBge/DQAAAJ8FAgL/BgEAAAAAAP8HAAAAAAAAMAcGWA4AAABNCQW0DwAAALwHAl4QAAAAnwcDAk0KBbQPAAAAvAgC3BEAAACfCAMCwAkSABIAAgASAAUAEgAGABgJALsTAAAAwAkUABIABgAYCQD6FQAAADULALsTAAAAvAkHxxYAAACfCQMBNQsA+hUAAAC8CQjHFgAAAJ8JAwGkCRgAAABwQU0MBbQPAAAAvAoCBRkAAACfCgMAnwkABBcJCgCkEBsAAACgQbwODa0cAAAAnw4DAg4OBAA1DgC7EwAAAFIPDQCfDgIBbgn1/wIAAADACR0AEgABABgJAN8eAAAA4gsgADUMAN8eAAAAMAwLex8AAAC8CQTvIQAAAJ8JAwGCBgIAIgMWBAAAAEADFwMYAxkDGgMbBAAAYEADHAMdAx4EAACgQAMUAx8DAwMBAyADIQYAAwUGAQMHAyIDIwQAAHBBAyQDJQQAAKBBAyYGAgMVAycFAR8DKAMAAQIBAAEYAAEAAAAAAAEAAAAAAAEAAAAAAAMAAAAAAgAAAwAAAAAAAAAABgABAAAAAgAAAAABAAAAAAIAAAAAAAYAAAAHAAAAAAEAAAAAAwAAAAAAAAAAAQAAAAAAAQAAAP4ABgAAAAoBAAAA/wAABAEAAAAAA4mMoPphZSn8Ev+8lFAifZP5lLeOu0jK+w==

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:15
-- Luau version 6, Types version 3
-- Time taken: 0.003160 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local CollectionService_upvr = game:GetService("CollectionService")
local FuseClassClient_upvr = require(script.Parent.FuseClassClient)
local module_upvr = {
	Objects = {};
}
function onAdded(arg1) -- Line 24
	--[[ Upvalues[3]:
		[1]: CollectionService_upvr (readonly)
		[2]: FuseClassClient_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	if CollectionService_upvr:HasTag(arg1, FuseClassClient_upvr.TAG_NAME) then
		module_upvr.Objects[arg1] = FuseClassClient_upvr.new(arg1)
	end
end
function onRemoved(arg1) -- Line 30
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr.Objects[arg1] then
		module_upvr.Objects[arg1]:Destroy()
		module_upvr.Objects[arg1] = nil
	end
end
CollectionService_upvr:GetInstanceAddedSignal(FuseClassClient_upvr.TAG_NAME):Connect(onAdded)
CollectionService_upvr:GetInstanceRemovedSignal(FuseClassClient_upvr.TAG_NAME):Connect(onRemoved)
for _, v in pairs(CollectionService_upvr:GetTagged(FuseClassClient_upvr.TAG_NAME)) do
	if v:IsDescendantOf(Workspace) then
		onAdded(v)
	end
end
function SpawnFuseObject(arg1) -- Line 47
	--[[ Upvalues[1]:
		[1]: ReplicatedStorage_upvr (readonly)
	]]
	local clone = ReplicatedStorage_upvr.Assets.Game:FindFirstChild("SubwayFuse"):Clone()
	clone:ScaleTo(2)
	clone:PivotTo(arg1:GetPivot() * CFrame.new(0, (-1) * (arg1.Size.Y / 2) + clone:GetExtentsSize().Y / 2, 0))
	clone.Parent = arg1
end
require(ReplicatedStorage_upvr.Load)("Network"):BindEvents({
	SpawnLocalFuse = SpawnFuseObject;
})
return module_upvr