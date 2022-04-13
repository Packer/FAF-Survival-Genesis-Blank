-- Packer's Survival Genesis Wave Script
-- Base Game
-- Waves calculated by  (unit count / Wave Frequency) x2 for the multiplier, 
-- 60 = 1 Unit a Sec PER player Multipled

local s_Waves = 
{
	{	--Wave 1
		["Title"] = "Wave 1 - Example of a basic wave",
		["Land T1"] =
		{
			1,		--Scout 
			1,		--Assault 
			1,		--Support
			1,		--Ranged
			1,		--Custom
			1,		--Experimental
		},
		["Air T1"] =
		{
			1,		--Scout 
			1,		--Assault 
			1,		--Support
			1,		--Ranged
			1,		--Custom
			1,		--Experimental
			1,		--7 Bomber
			1,		--8 Gunship
		},
		["Navy T1"] =
		{
			1,		--1 Submarine
			1,		--2 Assault
			1,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			1,		--6 Experimental
		},
	},
	{
		["Title"] = "Wave 2 - Nuke Launchers and Bases",
		["Nuke"] =
		{
			["Spawn"] = true,	--This will spawn the Nuke Launchers (If Nukes are enabled)
		},
		["Base"] = 
		{	--Blueprint, Health, Regen Rate (PER player)
			'URB2302', 20000, 40,
		},
	},
	{
		["Title"] = "Wave 3 - T3 Wave example",
		["Land T3"] =
		{
			1,		--Scout 
			1,		--Assault 
			1,		--Support
			1,		--Ranged
			1,		--Custom
			1,		--Experimental
		},
		["Air T3"] =
		{
			1,		--Scout 
			1,		--Assault 
			1,		--Support
			1,		--Ranged
			1,		--Custom
			1,		--Experimental
			1,		--7 Bomber
			1,		--8 Gunship
		},
		["Navy T3"] =
		{
			1,		--1 Submarine
			1,		--2 Assault
			1,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			1,		--6 Experimental
		},
	},
	{
		["Title"] = "Wave 4 - Custom Unit Spawning",
		["Custom"] =
		{
			--Spawns specific units by category, is affected by Wave balancing
			["LAND"] =
			{
				--{spawnCount, blueprint, blueprint, ..}
				{ 10, 'UEL0301', 'UAL0401'},	--This will spawn 10 of each blueprint
			},
			["AIR"] =
			{
				--{spawnCount, blueprint, blueprint, ..}
				{ 4, 'UAA0304'},
			},
			["NAVY"] =
			{
				--{spawnCount, blueprint, blueprint, ..}
				{ 2, 'URS0302'},
			},
		},
	},
	{
		["Title"] = "Wave 5 - Boss Example",
		["Boss"] =	--Boss Waves instantly spawn and have special attributes
		{
			{
				["Count"] = 1,					--How many will spawn
				["Blueprint"] =  {'url0402'},	--Which unit blueprints that will be spawned
				["Type"] = "LAND",				--LAND AIR NAVY
				["Mods"] = {"HPD"},				--What mods does this unit have?
				["HP"] = 1000,					--Additional HP, can be negative or positive
				["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
			},
			{	--Example of Spawning 2nd boss at the same time
				["Count"] = 1,					--How many will spawn
				["Blueprint"] =  {'ura0401'},	--Which unit blueprints that will be spawned
				["Type"] = "AIR",				--LAND AIR NAVY
				["Mods"] = {"AA"},				--What mods does this unit have?
				["HP"] = 1000,					--Additional HP, can be negative or positive
				["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
			},
		},
	},
	{
		["Title"] = "Wave 6 - Nuke Firing Example",
		["Nuke"] =
		{
			["Fire"] = 4,		--This will fire 4 volleys of nukes from each launcher over the wave Frequency time.
		}
	},
}

local s_EndlessWave = 
{
	{	--Endless Wave 1
		["Land T4"] =
		{
			1,		--Scout 
			1,		--Assault 
			1,		--Support
			1,		--Ranged
			1,		--Custom
			1,		--Experimental
		},
		["Air T4"] =
		{
			1,		--1 Spy 
			1,		--2 Fighter 
			1,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			1,		--6 Experimental
			1,		--7 Bomber
			1,		--8 Gunship
		},
		["Navy T4"] =
		{
			1,		--1 Submarine
			1,		--2 Assault
			1,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			1,		--6 Experimental
		},
	},
}


GetWaveTable = function()
	return s_Waves;
end

GetEndlessTable = function()
	return s_EndlessWave;
end