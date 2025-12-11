-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMmBUN5Y2xlBE5hbWUERGVzYwRHb2FsCExpc3RlbmVyBURhaWx5DENvbGxlY3QgTG9vdA9Db2xsZWN0IDIwIGxvb3QSUGxheWVyUGlja2VkVXBMb290EmNvbGxlY3RfbG9vdF9kYWlseQ5SZXZpdmUgUGxheWVycxNSZXZpdmUgMTAgc3Vydml2b3JzDFJldml2ZVBsYXllchRyZXZpdmVfcGxheWVyc19kYWlseQZFc2NhcGUORXNjYXBlIDMgdGltZXMNUGxheWVyRXNjYXBlZAxlc2NhcGVfZGFpbHkMVGVhbSBFc2NhcGVzGEVzY2FwZSB3aXRoIDEwIHRlYW1tYXRlcwtUZWFtRXNjYXBlZBJ0ZWFtX2VzY2FwZXNfZGFpbHkORGVmZWF0IFBsYXllcnMSRGVmZWF0IDMgc3Vydml2b3JzDERlZmVhdFBsYXllcgtraWxsc19kYWlseQtQbGF5IDMgTWFwcxhQbGF5IG9uIDMgZGlmZmVyZW50IG1hcHMJUGxheWVkTWFwEXBsYXlfM19tYXBzX2RhaWx5BFZvdGUMVm90ZSAzIHRpbWVzDlBsYXllclZvdGVkTWFwCnZvdGVfZGFpbHkOS2lsbGVyIFZpY3RvcnkYV2luIGEgZ2FtZSBhcyB0aGUga2lsbGVyCVBsYXllcldpbgl3aW5fZGFpbHkAAQMAAAECAJQBowAAAP8ABAAAAAAA4gEFAG8CBgAwAgF5AAAAAG8CBwAwAgG6AQAAAG8CCAAwAgF3AgAAAIwCFAAwAgFqAwAAAG8CCQAwAgGdBAAAADABAKEKAAAA4gEFAG8CBgAwAgF5AAAAAG8CCwAwAgG6AQAAAG8CDAAwAgF3AgAAAIwCCgAwAgFqAwAAAG8CDQAwAgGdBAAAADABAIwOAAAA4gEFAG8CBgAwAgF5AAAAAG8CDwAwAgG6AQAAAG8CEAAwAgF3AgAAAIwCAwAwAgFqAwAAAG8CEQAwAgGdBAAAADABAI0SAAAA4gEFAG8CBgAwAgF5AAAAAG8CEwAwAgG6AQAAAG8CFAAwAgF3AgAAAIwCCgAwAgFqAwAAAG8CFQAwAgGdBAAAADABAOQWAAAA4gEFAG8CBgAwAgF5AAAAAG8CFwAwAgG6AQAAAG8CGAAwAgF3AgAAAIwCAwAwAgFqAwAAAG8CGQAwAgGdBAAAADABAJAaAAAA4gEFAG8CBgAwAgF5AAAAAG8CGwAwAgG6AQAAAG8CHAAwAgF3AgAAAIwCAwAwAgFqAwAAAG8CHQAwAgGdBAAAADABADoeAAAA4gEFAG8CBgAwAgF5AAAAAG8CHwAwAgG6AQAAAG8CIAAwAgF3AgAAAIwCAwAwAgFqAwAAAG8CIQAwAgGdBAAAADABAFoiAAAA4gEFAG8CBgAwAgF5AAAAAG8CIwAwAgG6AQAAAG8CJAAwAgF3AgAAAIwCAQAwAgFqAwAAAG8CJQAwAgGdBAAAADABAD0mAAAAggACACcDAQMCAwMDBAMFBQUAAQIDBAMGAwcDCAMJAwoDCwMMAw0DDgMPAxADEQMSAxMDFAMVAxYDFwMYAxkDGgMbAxwDHQMeAx8DIAMhAyIDIwMkAyUDJgABAAEYAAAAAQEAAAEAAAEAAAEAAAEAAPsABwEAAAEAAAEAAAEAAAEAAPsABwEAAAEAAAEAAAEAAAEAAPsABwEAAAEAAAEAAAEAAAEAAPsABwEAAAEAAAEAAAEAAAEAAPsABwEAAAEAAAEAAAEAAAEAAPsABwEAAAEAAAEAAAEAAAEAAPsABwEAAAEAAAEAAAEAAAEAAPsACQEAAAAAABkRhQZI9IBKyzy/4mjW8OBpCZJyK9XvBw==

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:05:53
-- Luau version 6, Types version 3
-- Time taken: 0.002995 seconds

return {
	collect_loot_daily = {
		Cycle = "Daily";
		Name = "Collect Loot";
		Desc = "Collect 20 loot";
		Goal = 20;
		Listener = "PlayerPickedUpLoot";
	};
	revive_players_daily = {
		Cycle = "Daily";
		Name = "Revive Players";
		Desc = "Revive 10 survivors";
		Goal = 10;
		Listener = "RevivePlayer";
	};
	escape_daily = {
		Cycle = "Daily";
		Name = "Escape";
		Desc = "Escape 3 times";
		Goal = 3;
		Listener = "PlayerEscaped";
	};
	team_escapes_daily = {
		Cycle = "Daily";
		Name = "Team Escapes";
		Desc = "Escape with 10 teammates";
		Goal = 10;
		Listener = "TeamEscaped";
	};
	kills_daily = {
		Cycle = "Daily";
		Name = "Defeat Players";
		Desc = "Defeat 3 survivors";
		Goal = 3;
		Listener = "DefeatPlayer";
	};
	play_3_maps_daily = {
		Cycle = "Daily";
		Name = "Play 3 Maps";
		Desc = "Play on 3 different maps";
		Goal = 3;
		Listener = "PlayedMap";
	};
	vote_daily = {
		Cycle = "Daily";
		Name = "Vote";
		Desc = "Vote 3 times";
		Goal = 3;
		Listener = "PlayerVotedMap";
	};
	win_daily = {
		Cycle = "Daily";
		Name = "Killer Victory";
		Desc = "Win a game as the killer";
		Goal = 1;
		Listener = "PlayerWin";
	};
}