-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMlB0NvbnRlbnQIU3RhdE5hbWUJU3RhdFZhbHVlBVZhbHVlBFRleHQKRG9DbGVhbmluZwZUb3BCYXIFVGl0bGULRGlzcGxheU5hbWUGIFN0YXRzBXBhaXJzBVN0YXRzC0dldENoaWxkcmVuBUNsb25lBE5hbWUMU3BhY2VPdXRDYXBzGEdldFByb3BlcnR5Q2hhbmdlZFNpZ25hbAdDb25uZWN0DlNjcm9sbGluZ0ZyYW1lBlBhcmVudAdWaXNpYmxlCEdpdmVUYXNrCE9wZW5NZW51BFNob3cHcmVxdWlyZQRnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlBExvYWQKR3VpSGFuZGxlcgpTdHJpbmdVdGlsC01lbnVIYW5kbGVyBE1haWQHUGxheWVycwtMb2NhbFBsYXllcghHZXRGcmFtZQVFbnRyeQNuZXcAAwQAAgAAAA37AwAATQIDvgAAAABNAQKjAQAAAE0AAS8CAAAA+wIBAE0BAuwDAAAAMAEA9QQAAACCAAEABQMBAwIDAwMEAwUAGQABGAAAAAAAAAAAAAAAAAEaAAAAAAsCBQAABwQAAAUCBAdX+wIAALwCAlEAAAAAnwICAfsEAQBNAwRGAQAAAE0CA7oCAAAATQQBVwMAAABvBQQAcwMEBTADAvUFAAAApAIHAAAAYEBNAwEhCAAAALwDA2gJAAAAnwMCAJ8CAAQXAjcA+wcCALwHBzoKAAAAnwcCAk0IBroLAAAAMAgHugsAAABNCQe+DAAAAE0ICaMNAAAA+woDAE0JCg0OAAAATQoGugsAAACfCQICMAkI9QUAAABNCge+DAAAAE0JCqMNAAAATQgJLw8AAABNCQbsEAAAADAJCPUFAAAAbwoQALwIBpQRAAAAnwgDAtkKAAASAAcAEgAGALwICMcSAAAAnwgDAfsKAQBNCQq+DAAAAE0ICf4TAAAAMAgHJBQAAACpCAEAMAgHgBUAAAD7CAAAUgoHALwICP0WAAAAnwgDAW4CyP8CAAAA+wMEAE0CA6cXAAAAbwMIAJ8CAgGCAAEAGAMGAwcDCAMJAwoDBQMLBAAAYEADDAMNAw4DDwMBAwIDEAMDAwQDEQMSAxMDFAMVAxYDFwEAERgBGAAAAAABAAAAAAAAAAAAAAEAAAAAAAAAAAEAAAABAAAAAQAAAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAADAAAAAAAAAQAAAQAAAAD2AAwAAAAAAhIAAAAACwAAAQIANKMAAAD/AAEAAAAAAKQBAQAAAABApAQDAAAAIEBNAwQ/BAAAAE0CA34FAAAAnwECAlICAQBvAwYAnwICAlIDAQBvBAcAnwMCAlIEAQBvBQgAnwQCAlIFAQBvBgkAnwUCAqQIAwAAACBATQcIUAoAAABNBgcxCwAAAE0HAhoMAAAAbwgNAJ8HAgJNCge+DgAAAE0JCv4PAAAATQgJRBAAAABNCQXvEQAAAJ8JAQLAChIAEgAJABIABwASAAgAEgADABIABAAwCgCYEwAAAIIAAgAUAxkEAAAAQAMaBAAAIEADGwMcAx0DHgMfAyADIQMiAyMDDAMBAxMDJAMlBgEDGAEBAQABGAAAAAMAAAAAAAAAAAEAAAEAAAEAAAEAAAMAAAAAAAIAAAABAAAAAAABAAACAAAAAAAAABMBAAAAAALbFXG8eNn2imzIygwd5wbSqw1myOnRG70=

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:06:54
-- Luau version 6, Types version 3
-- Time taken: 0.003013 seconds

local module = {}
local Load = require(game.ReplicatedStorage.Load)
local any_GetFrame_result1_upvr = Load("GuiHandler").GetFrame("Stats")
local any_new_result1_upvr = Load("Maid").new()
local Entry_upvr = any_GetFrame_result1_upvr.Content.ScrollingFrame.Entry
local Load_result1_upvr = Load("StringUtil")
local Load_result1_upvr_2 = Load("MenuHandler")
function module.Show(arg1, arg2) -- Line 17
	--[[ Upvalues[5]:
		[1]: any_new_result1_upvr (readonly)
		[2]: any_GetFrame_result1_upvr (readonly)
		[3]: Entry_upvr (readonly)
		[4]: Load_result1_upvr (readonly)
		[5]: Load_result1_upvr_2 (readonly)
	]]
	any_new_result1_upvr:DoCleaning()
	any_GetFrame_result1_upvr.TopBar.Title.Text = arg2.DisplayName.." Stats"
	for _, v_upvr in pairs(arg2.Stats:GetChildren()) do
		local clone_upvr = Entry_upvr:Clone()
		clone_upvr.Name = v_upvr.Name
		clone_upvr.Content.StatName.Text = Load_result1_upvr.SpaceOutCaps(v_upvr.Name)
		clone_upvr.Content.StatName.StatValue.Text = v_upvr.Value
		v_upvr:GetPropertyChangedSignal("Value"):Connect(function() -- Line 25
			--[[ Upvalues[2]:
				[1]: clone_upvr (readonly)
				[2]: v_upvr (readonly)
			]]
			clone_upvr.Content.StatName.StatValue.Text = v_upvr.Value
		end)
		clone_upvr.Parent = any_GetFrame_result1_upvr.Content.ScrollingFrame
		clone_upvr.Visible = true
		any_new_result1_upvr:GiveTask(clone_upvr)
	end
	Load_result1_upvr_2.OpenMenu("Stats")
end
return module