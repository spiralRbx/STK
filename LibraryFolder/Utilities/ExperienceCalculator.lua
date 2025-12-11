-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMHBG1hdGgEc3FydAVmbG9vchZHZXRMZXZlbEZyb21FeHBlcmllbmNlGUdldEV4cGVyaWVuY2VGb3JOZXh0TGV2ZWwdR2V0RXhwZXJpZW5jZVJlcXVpcmVkRm9yTGV2ZWwQR2V0U3ViRXhwZXJpZW5jZQAFCQEAAAAAD4wHKAA5CAAACQYHCPUFAga7GQUCpAQFAAAQMICfBAIClQMEAT4CAwC7DAICpAEHAAAYMICfAQICggECAAgCAAAAAAAANEACAAAAAAAAJEACAAAAAAAAWUADAQMCBAAQMIADAwQAGDCAAAYEARgAAAAAAAAAAAAAAAAAAAAJAAAAAAkBAAAAABp4AQAAmgEDAAAAAACMAQAAggECAIwHKAA5CAAACQYHCPUFAwa7GQUCpAQGAAAUQICfBAIClQMEAj4CAwG7DAICpAEIAAAcQICfAQICjAMKAIwGAQBDBQYBCQQBBQkCAwQmAwIAggMCAAkCAAAAAAAA8D8CAAAAAAAANEACAAAAAAAAJEACAAAAAAAAWUADAQMCBAAUQIADAwQAHECAAA0FARgFAAABAPoAAAAAAAAAAAAAAAAACgAAAAADAgkAAAAABgEAAAAAB3gAAACMAgoAjAUBAEMEBQAJAwAECQECA4IBAgABAgAAAAAAAPA/AB4GARgAAQAAAAAAHwAAAAAJAQAAAAAkeAEAAJoBBQAAAAAAjAEBAIwCAQCMAwEAggEEAIwHKAA5CAAACQYHCPUFAwa7GQUCpAQGAAAUQICfBAIClQMEAj4CAwG7DAICpAEIAAAcQICfAQICeAIBAIwECgCMBwEAQwYHAgkFAgYJAwQFjAUKAIwIAQBDBwgBCQYBBwkEBQYmBQADJgYEA+wHBQaCBQQACQIAAAAAAADwPwIAAAAAAAA0QAIAAAAAAAAkQAIAAAAAAABZQAMBAwIEABRAgAMDBAAcQIAAJgcBGCAAAAEAAADfAAAAAAAAAAAAAAAAACUCAAAAAAEAAAAABAEBAgkAAAAABQAAAQIAEKMAAAD/AAMAAAAAAMABAAAwAQAyAQAAAMACAgAwAgAqAwAAAMADBAAwAwAqBQAAAMAEBgAwBACBBwAAAIIAAgAIBgADBAYBAwUGAgMGBgMDBwQAAQIDAQABGAACAAMFAAINAAQFAAMVAAIBAAAAAASSioCoBuwwtG2higDSQIGm4pKX3KBO6qk=

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-12-11 01:07:20
-- Luau version 6, Types version 3
-- Time taken: 0.002589 seconds

return {
	GetLevelFromExperience = function(arg1) -- Line 6, Named "GetLevelFromExperience"
		return math.floor((math.sqrt(100 - 40 * -arg1) + 10) / 20)
	end;
	GetExperienceForNextLevel = function(arg1) -- Line 13, Named "GetExperienceForNextLevel"
		if arg1 - 1 == arg1 then
			return 0
		end
		local floored_2 = math.floor((math.sqrt(100 - 40 * -arg1) + 10) / 20)
		return (10) * (floored_2 * (1 + floored_2)) - arg1
	end;
	GetExperienceRequiredForLevel = function(arg1) -- Line 30, Named "GetExperienceRequiredForLevel"
		local var3 = arg1 - 1
		return (10) * (var3 * (1 + var3))
	end;
	GetSubExperience = function(arg1) -- Line 38, Named "GetSubExperience"
		if arg1 - 1 == arg1 then
			return 1, 1, 1
		end
		local floored = math.floor((math.sqrt(100 - 40 * -arg1) + 10) / 20)
		local var5 = floored - 1
		local var6 = (10) * (var5 * (1 + var5))
		local var7 = arg1 - var6
		local var8 = (10) * (floored * (1 + floored)) - var6
		return var7, var8, var7 / var8
	end;
}