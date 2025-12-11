-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMfBE5hbWULRGVzY3JpcHRpb24ER29hbAhSZXdhcmRJRAtMYXlvdXRPcmRlcghMaXN0ZW5lcgVUaGllZhBDb2xsZWN0IDEwMCBsb290F2NvbGxlY3RfbG9vdF8xMDBfcmV3YXJkElBsYXllclBpY2tlZFVwTG9vdBBjb2xsZWN0X2xvb3RfMTAwBU1lZGljF1Jldml2ZSBwbGF5ZXJzIDUwIHRpbWVzGHJldml2ZV9wbGF5ZXJzXzUwX3Jld2FyZAxSZXZpdmVQbGF5ZXIRcmV2aXZlX3BsYXllcnNfNTANRXNjYXBlIEFydGlzdA9Fc2NhcGUgMTAgdGltZXMQZXNjYXBlXzEwX3Jld2FyZA1QbGF5ZXJFc2NhcGVkCWVzY2FwZV8xMA1TZXJpYWwgS2lsbGVyEEtpbGwgMTAwIHBsYXllcnMQa2lsbHNfMTAwX3Jld2FyZAxEZWZlYXRQbGF5ZXIJa2lsbHNfMTAwClZhbnF1aXNoZXIaV2luIDI1IHRpbWVzIGFzIHRoZSBraWxsZXIQd2lubmVyXzI1X3Jld2FyZAlQbGF5ZXJXaW4Jd2lubmVyXzI1AAEDAAABAgBtowAAAP8ABAAAAAAA4gEGAG8CBwAwAgG6AAAAAG8CCAAwAgHiAQAAAIwCZAAwAgFqAgAAAG8CCQAwAgFYAwAAAIwCAQAwAgEABAAAAG8CCgAwAgGdBQAAADABAAMLAAAA4gEGAG8CDAAwAgG6AAAAAG8CDQAwAgHiAQAAAIwCMgAwAgFqAgAAAG8CDgAwAgFYAwAAAIwCCgAwAgEABAAAAG8CDwAwAgGdBQAAADABAA4QAAAA4gEGAG8CEQAwAgG6AAAAAG8CEgAwAgHiAQAAAIwCCgAwAgFqAgAAAG8CEwAwAgFYAwAAAIwCFAAwAgEABAAAAG8CFAAwAgGdBQAAADABAMgVAAAA4gEGAG8CFgAwAgG6AAAAAG8CFwAwAgHiAQAAAIwCZAAwAgFqAgAAAG8CGAAwAgFYAwAAAIwCHgAwAgEABAAAAG8CGQAwAgGdBQAAADABAPEaAAAA4gEGAG8CGwAwAgG6AAAAAG8CHAAwAgHiAQAAAIwCGQAwAgFqAgAAAG8CHQAwAgFYAwAAAIwCKAAwAgEABAAAAG8CHgAwAgGdBQAAADABAP8fAAAAggACACADAQMCAwMDBAMFAwYFBgABAgMEBQMHAwgDCQMKAwsDDAMNAw4DDwMQAxEDEgMTAxQDFQMWAxcDGAMZAxoDGwMcAx0DHgMfAAEAARgAAAANAQAAAQAAAQAAAQAAAgAAAgAA+AALAQAAAQAAAQAAAQAAAgAAAgAA+AALAQAAAQAAAQAAAQAAAgAAAgAA+AALAQAAAQAAAQAAAQAAAgAAAgAA+AALAQAAAQAAAQAAAQAAAgAAAgAA+AAMAQAAAAAA+ghsMLPBPki3vRILGE9WN4oQe0TIzAYx

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:05:56
-- Luau version 6, Types version 3
-- Time taken: 0.001545 seconds

return {
	collect_loot_100 = {
		Name = "Thief";
		Description = "Collect 100 loot";
		Goal = 100;
		RewardID = "collect_loot_100_reward";
		LayoutOrder = 1;
		Listener = "PlayerPickedUpLoot";
	};
	revive_players_50 = {
		Name = "Medic";
		Description = "Revive players 50 times";
		Goal = 50;
		RewardID = "revive_players_50_reward";
		LayoutOrder = 10;
		Listener = "RevivePlayer";
	};
	escape_10 = {
		Name = "Escape Artist";
		Description = "Escape 10 times";
		Goal = 10;
		RewardID = "escape_10_reward";
		LayoutOrder = 20;
		Listener = "PlayerEscaped";
	};
	kills_100 = {
		Name = "Serial Killer";
		Description = "Kill 100 players";
		Goal = 100;
		RewardID = "kills_100_reward";
		LayoutOrder = 30;
		Listener = "DefeatPlayer";
	};
	winner_25 = {
		Name = "Vanquisher";
		Description = "Win 25 times as the killer";
		Goal = 25;
		RewardID = "winner_25_reward";
		LayoutOrder = 40;
		Listener = "PlayerWin";
	};
}