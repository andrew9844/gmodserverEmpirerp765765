--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------]]

Theif = DarkRP.createJob("Thief", {
   color = Color(0, 86, 255, 255),
   model = {"models/code_gs/robber/robberplayer.mdl"},
   description = [[you can raid others bases and also you can steal anything of value in there bases but make sure to do /advert raid and when its over do /advert raid over even if you get killed]],
   weapons = {},
   command = "thief",
   max = 6,
   salary = 100,
   admin = 0,
   vote = true,
   hasLicense = false,
   candemote = true,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "thief",
})

owner = DarkRP.createJob("Owner", {
   color = Color(20, 255, 0, 255),
   model = {"models/Humans/Group01/male_07.mdl"},
   description = [[]],
   weapons = {},
   command = "owner",
   max = 1,
   salary = 0,
   admin = 2,
   vote = false,
   hasLicense = false,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "STAFF",
})

Admin = DarkRP.createJob("Admin", {
   color = Color(255, 0, 0, 255),
   model = {"models/Combine_Super_Soldier.mdl"},
   description = [[you look after the server ]],
   weapons = {},
   command = "adminonduty",
   max = 10,
   salary = 0,
   admin = 1,
   vote = false,
   hasLicense = false,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "STAFF",
})

TEAM_ANDREW = DarkRP.createJob("Andrews Custom Job", {
   color = Color(0, 0, 0, 255),
   model = {"models/code_gs/robber/robberplayer.mdl"},
   description = [[]],
   weapons = {"m9k_acr","pro_lockpick","gmod_tool","spider_gun2","m9k_dbarrel","stunstick","arrest_stick","unarrest_stick","keys","pocket"},
   command = "/ACJ",
   max = 1,
   salary = 250,
   admin = 2,
   vote = false,
   hasLicense = true,
   candemote = true,
   category = "",
   custom = function(ply) return ply:GetNWString("usergroup") == "donator" end
})

   TEAM_DANI = DarkRP.createJob("Danis Custom Job", {
   color = Color(0, 0, 0, 255),
   model = {"models/player/captainpawn/k9anubis.mdl"},
   description = [[]],
   weapons = {"m9k_dbarrel","pocket","pro_lockpick","m9k_ak47","spider_gun2","stunstick","arrest_stick","unarrest_stick","keys"},
   command = "/DCJ",
   max = 1,
   salary = 250,
   admin = 2,
   vote = false,
   hasLicense = true,
   candemote = true,
   category = "",
   custom = function(ply) return ply:GetNWString("usergroup") == "donator" end
})




--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN


--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
}

--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_HITMAN)
