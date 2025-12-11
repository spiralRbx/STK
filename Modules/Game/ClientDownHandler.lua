-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMWBkRvd25lZAxHZXRBdHRyaWJ1dGUNQ3Jhd2xPdmVycmlkZQ5FbmFibGVDcmF3bGluZxtEaXNhYmxlQ3Jhd2xpbmdOb1Byb3BlcnRpZXMRRG93blN0YXR1c0NoYW5nZWQEZ2FtZRFSZXBsaWNhdGVkU3RvcmFnZQpHZXRTZXJ2aWNlB1BsYXllcnMKUnVuU2VydmljZRRDb250ZXh0QWN0aW9uU2VydmljZRFDb2xsZWN0aW9uU2VydmljZQdyZXF1aXJlBExvYWQJQ29uc3RhbnRzBElkbGUHTmV0d29yaxJDbGllbnRDcmF3bEhhbmRsZXILTG9jYWxQbGF5ZXIZR2V0QXR0cmlidXRlQ2hhbmdlZFNpZ25hbAdDb25uZWN0AAIDAAIAAAAY+wAAAG8CAAC8AAASAQAAAJ8AAwIOAAkA+wEBAKkCAQAwAgE2AgAAAPsCAQBNAQL3AwAAAJ8BAQGCAAEA+wEBAKkCAAAwAgE2AgAAAPsCAQBNAQIABAAAAJ8BAQGCAAEABQMBAwIDAwMEAwUAFQYBGAAAAAAAAQIAAAABAAAAAAYAAAABAAAAAxYAAAAADwAAAQIAR6MAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwKkAQEAAAAAQG8DBAC8AQEWAwAAAJ8BAwKkAgEAAAAAQG8EBQC8AgIWAwAAAJ8CAwKkAwEAAAAAQG8FBgC8AwMWAwAAAJ8DAwKkBAEAAAAAQG8GBwC8BAQWAwAAAJ8EAwKkBQkAAACAQKQIAQAAAABATQcIPwIAAABNBgd+CgAAAJ8FAgJSBgUAbwcLAJ8GAgJSBwUAbwgMAJ8HAgJSCAUAbwkNAJ8IAgJSCQUAbwoOAJ8JAgJNCgExDwAAAP8LAQAAAAAAwAwQABIACgASAAkAMAwLaBEAAABvDhIAvAwKFhMAAACfDAMCTQ4LaBEAAAC8DAzHFAAAAJ8MAwGCCwIAFQMHBAAAAEADCAMJAwoDCwMMAw0DDgQAAIBAAw8DEAMRAxIDEwMUBgADBgMBAxUDFgEAAQABGAABAAAAAAABAAAAAAABAAAAAAABAAAAAAABAAAAAAADAAAAAAAAAAABAAABAAABAAABAAAEAAIAAgAAAAARAAAAAAAAAAACAQAAAAABKrwlBnu6o+CMUQrH3maVZVqkMnIYeE8H

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:06:55
-- Luau version 6, Types version 3
-- Time taken: 0.001574 seconds

local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local module = {}
local var1_result1_upvr = require(game.ReplicatedStorage.Load)("ClientCrawlHandler")
function module.DownStatusChanged() -- Line 21
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var1_result1_upvr (readonly)
	]]
	if LocalPlayer_upvr:GetAttribute("Downed") then
		var1_result1_upvr.CrawlOverride = true
		var1_result1_upvr.EnableCrawling()
	else
		var1_result1_upvr.CrawlOverride = false
		var1_result1_upvr.DisableCrawlingNoProperties()
	end
end
LocalPlayer_upvr:GetAttributeChangedSignal("Downed"):Connect(module.DownStatusChanged)
return module