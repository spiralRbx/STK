-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMOCkZvcm1GYWN0b3IFcGFpcnMGUGFyZW50DVNldFByb3BlcnRpZXMISW5zdGFuY2UDbmV3BHR5cGUFdGFibGUKVG9wU3VyZmFjZQ1Cb3R0b21TdXJmYWNlBkN1c3RvbQZTbW9vdGgEUGFydAlXZWRnZVBhcnQAAwcCAAAAABtNAgEQAAAAAA4CBABNAgEQAAAAADACABAAAAAApAICAAAAEEBSAwEAnwICBBcCBQDwBQQAAwAAAPAFAgAAAAAAagYABW4C+v8CAAAATQIBJAMAAAAOAgQATQIBJAMAAAAwAgAkAwAAAIIAAQAEAwEDAgQAABBAAwMADgQBGAAAAAEAAAADAAAAAAEAAAAB/gAFAAABAAAAAg8AAAAABwIBAAAAHaQCAgAABACAUgMAAJ8CAgL7BAAAhwMEAA4DBgA1AwB+AwAAAFIEAgD7BgAAhwUGAJ8DAwG7KAEDUgQBAKQDBQAAAEBAnwMCAvADBwAGAACANQMAfgMAAABSBAIAUgUBAJ8DAwGCAgIAMAECJAcAAACCAgIACAMFAwYEAAQAgAMEAwcEAABAQAMIAwMAHgYBGAAAAAABAAABAAAAAAADAAAAAAAAAQAAAAAAAgADHwAAAAADAAABAgAhowAAAP8AAgAAAAAA4gEDAG8CBAAwAgEQAAAAAG8CBQAwAgEfAQAAAG8CBQAwAgESAgAAADABAEQGAAAA4gEHAG8CBAAwAgEQAAAAAG8CBQAwAgESAgAAADABABQIAAAAwAEJABgBAH4KAAAA4gEMAMACDQASAAAAMAIB7wsAAACCAQIADgMBAwkDCgUDAAECAwsDDAMNBQIAAgMOBgADBAMGBQELBgECAAEBAAEYAAAAAQEAAAEAAAEAAP0ABgEAAAEAAP4ABgAADwEAAAAQAQAAAAACfLLmXtCzSm65GuKSXl+3PQyq8SpOdoxf

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:20
-- Luau version 6, Types version 3
-- Time taken: 0.003564 seconds

local tbl_upvr = {
	Part = {
		FormFactor = "Custom";
		TopSurface = "Smooth";
		BottomSurface = "Smooth";
	};
	WedgePart = {
		FormFactor = "Custom";
		BottomSurface = "Smooth";
	};
}
function SetProperties(arg1, arg2) -- Line 14
	if arg2.FormFactor then
		arg1.FormFactor = arg2.FormFactor
	end
	for i, v in pairs(arg2) do
		if i ~= "Parent" and i ~= "FormFactor" then
			arg1[i] = v
		end
	end
	if arg2.Parent then
		arg1.Parent = arg2.Parent
	end
end
return {
	new = function(arg1, arg2) -- Line 30, Named "new"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		local any = Instance.new(arg1)
		if tbl_upvr[arg1] then
			SetProperties(any, tbl_upvr[arg1])
		end
		if type(arg2) == "table" then
			SetProperties(any, arg2)
			return any
		end
		any.Parent = arg2
		return any
	end;
}