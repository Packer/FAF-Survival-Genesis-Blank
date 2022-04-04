-- Packer's Survival Genesis Wave Script
-- Base Game
-- Waves calculated by  (unit count / Wave Frequency) x2 for the multiplier, 
-- 60 = 1 Unit a Sec PER player Multipled

local s_Waves = 
{
	{	--Wave 1
		["Title"] = "Wave 1 - Scouts",
		["Land T1"] =
		{
			0,		--Scout 
			0,		--Assault 
			0,		--Support
			0,		--Ranged
			0,		--Custom
			0,		--Experimental
		},
		["Air T1"] =
		{
			4,		--Scout 
			0,		--Assault 
			0,		--Support
			0,		--Ranged
			0,		--Custom
			0,		--Experimental
			0,		--7 Bomber
			0,		--8 Gunship
		},
		["Navy T1"] =
		{
			0,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
		},
		["Custom"] =	--Spawned over the wave evenly.
		{
			--Spawns specific units by category, affected by Wave balancing
			--["LAND"] =
			--{
			--	--{spawnCount, blueprint, blueprint, ..}
			--	{ 10, 'UEL0301',},
			--},
			--["AIR"] =
			--{
			--	--{spawnCount, blueprint, blueprint, ..}
			--	{},
			--},
			--["NAVY"] =
			--{
			--	--{spawnCount, blueprint, blueprint, ..}
			--	{},
			--},
		},
		["Boss"] =	--Boss Waves instantly spawn and have special attributes
		{
		  --Bosses Infomation here
		  -- Wave 1 - WAVE/TYPE/BLUEPRINT
		  -- Spawn Count, Spawn Location, Blueprint, Blueprint etc
		  --{
		  --	["Count"] = 1,					--How many will spawn
		  --	["Blueprint"] =  {'url0402'},	--Which unit blueprints that will be spawned
			--  ["Type"] = "LAND",				--LAND AIR NAVY
		  --	["Mods"] = {"AA"},				--What mods does this unit have?
		  --	["HP"] = 1000,					--Additional HP, can be negative or positive
		  --	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  --},
		},
	},
	{	-- Wave 2
		["Land T1"] =
		{
			5,		--Scout 
			15,		--Assault 
			5,		--Support
			4,		--Ranged
			0,		--Custom
			0,		--Experimental
		},
		["Air T1"] =
		{
			2,		--1 Spy 
			1,		--2 Fighter 
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
			1,		--7 Bomber
			0,		--8 Gunship
		},
		["Navy T1"] =
		{
			0,		--1 Submarine
			1,		--2 Assault
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 3
		["Land T1"] =
		{
			0,		--Scout 
			20,		--Assault 
			7,		--Support
			5,		--Ranged
			2,		--Custom
			1,		--Experimental
		},
		["Air T1"] =
		{
			0,		--1 Spy 
			4,		--2 Fighter 
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
			2,		--7 Bomber
			0,		--8 Gunship
		},
		["Navy T1"] =
		{
			1,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 4
		["Land T1"] =
		{
			0,		--Scout 
			20,		--Assault 
			7,		--Support
			5,		--Ranged
			2,		--Custom
			1,		--Experimental
		},
		["Air T1"] =
		{
			0,		--1 Spy 
			4,		--2 Fighter 
			0,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			1,		--6 Experimental
			4,		--7 Bomber
			0,		--8 Gunship
		},
		["Navy T1"] =
		{
			0,		--1 Submarine
			1,		--2 Assault
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 5
		["Land T1"] =
		{
			0,		--Scout 
			17,		--Assault 
			10,		--Support
			5,		--Ranged
			2,		--Custom
			1,		--Experimental
		},
		["Land T2"] =
		{
			0,		--Scout 
			10,		--Assault 
			5,		--Support
			0,		--Ranged
			1,		--Custom
			1,		--Experimental
		},
		["Air T1"] =
		{
			0,		--1 Spy 
			6,		--2 Fighter 
			0,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			1,		--6 Experimental
			4,		--7 Bomber
			0,		--8 Gunship
		},
		["Navy T1"] =
		{
			0,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 6
		["Land T1"] =
		{
			0,		--Scout 
			15,		--Assault 
			7,		--Support
			4,		--Ranged
			2,		--Custom
			1,		--Experimental
		},
		["Land T2"] =
		{
			0,		--Scout 
			10,		--Assault 
			5,		--Support
			1,		--Ranged
			1,		--Custom
			1,		--Experimental
		},
		["Air T1"] =
		{
			0,		--1 Spy 
			6,		--2 Fighter 
			0,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			1,		--6 Experimental
			8,		--7 Bomber
			4,		--8 Gunship
		},
		["Navy T1"] =
		{
			0,		--1 Submarine
			1,		--2 Assault
			0,		--3 Support
			1,		--4 Ranged
			0,		--5 Custom
			1,		--6 Experimental
		},
	},
	{	-- Wave 7
		["Land T1"] =
		{
			0,		--Scout 
			5,		--Assault 
			5,		--Support
			2,		--Ranged
			5,		--Custom
			1,		--Experimental
		},
		["Land T2"] =
		{
			0,		--Scout 
			15,		--Assault 
			7,		--Support
			2,		--Ranged
			2,		--Custom
			2,		--Experimental
		},
		["Air T1"] =
		{
			0,		--1 Spy 
			6,		--2 Fighter 
			1,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			1,		--6 Experimental
			0,		--7 Bomber
			6,		--8 Gunship
		},
		["Navy T1"] =
		{
			1,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 8
		["Land T2"] =
		{
			0,		--Scout 
			22,		--Assault 
			7,		--Support
			2,		--Ranged
			2,		--Custom
			2,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			6,		--2 Fighter 
			0,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			1,		--6 Experimental
			2,		--7 Bomber
			0,		--8 Gunship
		},
		["Navy T1"] =
		{
			0,		--1 Submarine
			1,		--2 Assault
			0,		--3 Support
			1,		--4 Ranged
			0,		--5 Custom
			1,		--6 Experimental
		},
	},
	{	-- Wave 9
		["Land T2"] =
		{
			0,		--Scout 
			25,		--Assault 
			7,		--Support
			3,		--Ranged
			2,		--Custom
			2,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			10,		--2 Fighter 
			8,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			1,		--6 Experimental
			0,		--7 Bomber
			0,		--8 Gunship
		},
		["Navy T2"] =
		{
			1,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 10
		["Land T2"] =
		{
			1,		--Scout 
			25,		--Assault 
			10,		--Support
			3,		--Ranged
			2,		--Custom
			2,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			2,		--3 Support
			2,		--4 Ranged
			2,		--5 Custom
			2,		--6 Experimental
			2,		--7 Bomber
			12,		--8 Gunship
		},
		["Navy T2"] =
		{
			0,		--1 Submarine
			1,		--2 Assault
			0,		--3 Support
			1,		--4 Ranged
			0,		--5 Custom
			1,		--6 Experimental
		},
	},
	{	-- Wave 11
		["Title"] = "Wave 11 - Boss Wave",
		["Boss"] =	--Boss Waves instantly spawn and have special attributes
		{
		  {
		  	["Count"] = 1,					--How many will spawn
		  	["Blueprint"] =  {'url0402'},	--Which unit blueprints that will be spawned
			["Type"] = "LAND",				--LAND AIR NAVY
		  	["Mods"] = {"AA"},				--What mods does this unit have?
		  	["HP"] = 0,						--Additional HP, can be negative or positive
		  	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  	["Vet"] = 1,					--What veterancy this boss will be 0 none, 5 max.
		  },
		  {
		  	["Count"] = 1,					--How many will spawn
		  	["Blueprint"] =  {'ues0401'},	--Which unit blueprints that will be spawned
			["Type"] = "NAVY",				--LAND AIR NAVY
		  	["Mods"] = {"AA"},				--What mods does this unit have?
		  	["HP"] = 0,						--Additional HP, can be negative or positive
		  	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  },
		},
		["Land T2"] =
		{
			0,		--Scout 
			27,		--Assault 
			15,		--Support
			4,		--Ranged
			2,		--Custom
			3,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			12,		--3 Support
			2,		--4 Ranged
			2,		--5 Custom
			2,		--6 Experimental
			12,		--7 Bomber
			0,		--8 Gunship
		},
		["Navy T2"] =
		{
			1,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 12
		["Land T2"] =
		{
			1,		--Scout 
			22,		--Assault 
			20,		--Support
			3,		--Ranged
			2,		--Custom
			3,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			8,		--2 Fighter 
			12,		--3 Support
			2,		--4 Ranged
			2,		--5 Custom
			2,		--6 Experimental
			14,		--7 Bomber
			0,		--8 Gunship
		},
		["Navy T2"] =
		{
			0,		--1 Submarine
			1,		--2 Assault
			0,		--3 Support
			1,		--4 Ranged
			0,		--5 Custom
			1,		--6 Experimental
		},
	},
	{	-- Wave 13
		["Land T2"] =
		{
			1,		--Scout 
			22,		--Assault 
			20,		--Support
			3,		--Ranged
			3,		--Custom
			3,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			8,		--2 Fighter 
			8,		--3 Support
			2,		--4 Ranged
			2,		--5 Custom
			2,		--6 Experimental
			8,		--7 Bomber
			0,		--8 Gunship
		},
		["Navy T2"] =
		{
			2,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 14
		["Land T2"] =
		{
			1,		--Scout 
			22,		--Assault 
			20,		--Support
			1,		--Ranged
			3,		--Custom
			3,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			14,		--2 Fighter 
			10,		--3 Support
			2,		--4 Ranged
			2,		--5 Custom
			2,		--6 Experimental
			8,		--7 Bomber
			0,		--8 Gunship
		},
		["Navy T2"] =
		{
			0,		--1 Submarine
			1,		--2 Assault
			0,		--3 Support
			1,		--4 Ranged
			0,		--5 Custom
			1,		--6 Experimental
		},
	},
	{	-- Wave 15
		["Boss"] =	--Boss Waves instantly spawn and have special attributes
		{
		  {
		  	["Count"] = 1,					--How many will spawn
		  	["Blueprint"] =  {'uel0401'},	--Which unit blueprints that will be spawned
			["Type"] = "LAND",				--LAND
		  	["Mods"] = {"AA"},				--What mods does this unit have?
		  	["HP"] = 10000,					--Additional HP, can be negative or positive
		  	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  	["Vet"] = 2,					--What veterancy this boss will be 0 none, 5 max.
		  },
		  {
		  	["Count"] = 1,					--How many will spawn
		  	["Blueprint"] =  {'ura0401'},	--Which unit blueprints that will be spawned
			["Type"] = "AIR",				--LAND AIR NAVY
		  	["Mods"] = {"AA"},				--What mods does this unit have?
		  	["HP"] = 0,						--Additional HP, can be negative or positive
		  	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  },
		},
		["Land T2"] =
		{
			1,		--Scout 
			27,		--Assault 
			20,		--Support
			4,		--Ranged
			3,		--Custom
			3,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			8,		--2 Fighter 
			12,		--3 Support
			2,		--4 Ranged
			2,		--5 Custom
			2,		--6 Experimental
			0,		--7 Bomber
			16,		--8 Gunship
		},
		["Navy T2"] =
		{
			0,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 16
		["Land T2"] =
		{
			1,		--Scout 
			30,		--Assault 
			20,		--Support
			2,		--Ranged
			4,		--Custom
			4,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			8,		--2 Fighter 
			16,		--3 Support
			2,		--4 Ranged
			2,		--5 Custom
			2,		--6 Experimental
			4,		--7 Bomber
			16,		--8 Gunship
		},
		["Navy T2"] =
		{
			0,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 17
		["Land T2"] =
		{
			1,		--Scout 
			20,		--Assault 
			10,		--Support
			3,		--Ranged
			4,		--Custom
			4,		--Experimental
		},
		["Land T3"] =
		{
			1,		--Scout 
			10,		--Assault 
			5,		--Support
			1,		--Ranged
			1,		--Custom
			1,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			16,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			1,		--6 Experimental
			0,		--7 Bomber
			0,		--8 Gunship
		},
		["Air T3"] =
		{
			4,		--1 Spy 
			12,		--2 Fighter 
			0,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			1,		--6 Experimental
			0,		--7 Bomber
			0,		--8 Gunship
		},
		["Navy T2"] =
		{
			1,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 18
		["Land T2"] =
		{
			1,		--Scout 
			2,		--Assault 
			2,		--Support
			1,		--Ranged
			1,		--Custom
			2,		--Experimental
		},
		["Land T3"] =
		{
			1,		--Scout 
			17,		--Assault 
			10,		--Support
			1,		--Ranged
			1,		--Custom
			1,		--Experimental
		},
		["Air T3"] =
		{
			4,		--1 Spy 
			12,		--2 Fighter 
			8,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			1,		--6 Experimental
			4,		--7 Bomber
			2,		--8 Gunship
		},
		["Navy T3"] =
		{
			0,		--1 Submarine
			1,		--2 Assault
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 19
		["Land T3"] =
		{
			1,		--Scout 
			25,		--Assault 
			15,		--Support
			1,		--Ranged
			2,		--Custom
			2,		--Experimental
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Navy T3"] =
		{
			1,		--1 Submarine
			0,		--2 Assault
			0,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 20
		["Boss"] =	--Boss Waves instantly spawn and have special attributes
		{
		  {
		  	["Count"] = 2,					--How many will spawn
		  	["Blueprint"] =  {'xrl0403'},	--Which unit blueprints that will be spawned
			["Type"] = "LAND",				--LAND
		  	["Mods"] = {"AA"},				--What mods does this unit have?
		  	["HP"] = 0,						--Additional HP, can be negative or positive
		  	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  	["Vet"] = 2,					--What veterancy this boss will be 0 none, 5 max.
		  },
		  {
		  	["Count"] = 1,					--How many will spawn
		  	["Blueprint"] =  {'ura0401'},	--Which unit blueprints that will be spawned
			["Type"] = "AIR",				--LAND AIR NAVY
		  	["Mods"] = {"AA"},				--What mods does this unit have?
		  	["HP"] = 10000,						--Additional HP, can be negative or positive
		  	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  },
		  {
		  	["Count"] = 1,					--How many will spawn
		  	["Blueprint"] =  {'uas0401'},	--Which unit blueprints that will be spawned
			["Type"] = "NAVY",				--LAND AIR NAVY
		  	["Mods"] = {"AA"},				--What mods does this unit have?
		  	["HP"] = 10000,						--Additional HP, can be negative or positive
		  	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  },
		},
		["Land T3"] =
		{
			1,		--Scout 
			27,		--Assault 
			15,		--Support
			2,		--Ranged
			2,		--Custom
			2,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			1,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			1,		--6 Experimental
			8,		--7 Bomber
			0,		--8 Gunship
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Navy T3"] =
		{
			0,		--1 Submarine
			1,		--2 Assault
			0,		--3 Support
			1,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 21
		["Land T3"] =
		{
			1,		--Scout 
			25,		--Assault 
			15,		--Support
			2,		--Ranged
			3,		--Custom
			3,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
			10,		--7 Bomber
			0,		--8 Gunship
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Navy T3"] =
		{
			1,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 22
		["Land T3"] =
		{
			1,		--Scout 
			30,		--Assault 
			15,		--Support
			2,		--Ranged
			3,		--Custom
			3,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
			10,		--7 Bomber
			0,		--8 Gunship
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Navy T3"] =
		{
			0,		--1 Submarine
			1,		--2 Assault
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			1,		--6 Experimental
		},
	},
	{	-- Wave 23
		["Land T3"] =
		{
			1,		--Scout 
			30,		--Assault 
			15,		--Support
			2,		--Ranged
			3,		--Custom
			3,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			2,		--6 Experimental
			10,		--7 Bomber
			0,		--8 Gunship
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Navy T3"] =
		{
			0,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 24
		["Land T3"] =
		{
			1,		--Scout 
			30,		--Assault 
			30,		--Support
			2,		--Ranged
			4,		--Custom
			4,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			2,		--6 Experimental
			10,		--7 Bomber
			0,		--8 Gunship
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Navy T3"] =
		{
			0,		--1 Submarine
			0,		--2 Assault
			0,		--3 Support
			1,		--4 Ranged
			0,		--5 Custom
			1,		--6 Experimental
		},
	},
	{	-- Wave 25
		["Boss"] =	--Boss Waves instantly spawn and have special attributes
		{
		  {
		  	["Count"] = 2,					--How many will spawn
		  	["Blueprint"] =  {'xsl0401'},	--Which unit blueprints that will be spawned
			["Type"] = "LAND",				--LAND
		  	["Mods"] = {"AA"},				--What mods does this unit have?
		  	["HP"] = 20000,						--Additional HP, can be negative or positive
		  	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  	["Vet"] = 3,					--What veterancy this boss will be 0 none, 5 max.
		  },
		  {
		  	["Count"] = 1,					--How many will spawn
		  	["Blueprint"] =  {'uaa0310'},	--Which unit blueprints that will be spawned
			["Type"] = "AIR",				--LAND AIR NAVY
		  	["Mods"] = {"AA"},				--What mods does this unit have?
		  	["HP"] = 20000,						--Additional HP, can be negative or positive
		  	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  },
		  {
		  	["Count"] = 1,					--How many will spawn
		  	["Blueprint"] =  {'ues0401'},	--Which unit blueprints that will be spawned
			["Type"] = "NAVY",				--LAND AIR NAVY
		  	["Mods"] = {"AA"},				--What mods does this unit have?
		  	["HP"] = 20000,						--Additional HP, can be negative or positive
		  	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  },
		},
		["Land T3"] =
		{
			1,		--Scout 
			30,		--Assault 
			15,		--Support
			3,		--Ranged
			4,		--Custom
			4,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			2,		--6 Experimental
			10,		--7 Bomber
			0,		--8 Gunship
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Navy T3"] =
		{
			1,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 26
		["Land T3"] =
		{
			1,		--Scout 
			30,		--Assault 
			30,		--Support
			3,		--Ranged
			4,		--Custom
			4,		--Experimental
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			0,		--7 Bomber
			16,		--8 Gunship
		},
		["Navy T3"] =
		{
			0,		--1 Submarine
			1,		--2 Assault
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			1,		--6 Experimental
		},
	},
	{	-- Wave 27
		["Land T3"] =
		{
			1,		--Scout 
			30,		--Assault 
			15,		--Support
			3,		--Ranged
			4,		--Custom
			4,		--Experimental
		},
		["Land T4"] =
		{
			1,		--Scout 
			1,		--Assault 
			1,		--Support
			0,		--Ranged
			1,		--Custom
			1,		--Experimental
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			8,		--7 Bomber
			2,		--8 Gunship
		},
		["Navy T3"] =
		{
			0,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
		},
		["Navy T4"] =
		{
			0,		--1 Submarine
			0,		--2 Assault
			0,		--3 Support
			1,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 28
		["Boss"] =	--Boss Waves instantly spawn and have special attributes
		{
		  {
		  	["Count"] = 2,					--How many will spawn
		  	["Blueprint"] =  {'ual0401'},	--Which unit blueprints that will be spawned
			["Type"] = "LAND",				--LAND
		  	["Mods"] = {"AA"},				--What mods does this unit have?
		  	["HP"] = 30000,						--Additional HP, can be negative or positive
		  	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  	["Vet"] = 4,					--What veterancy this boss will be 0 none, 5 max.
		  },
		  {
		  	["Count"] = 1,					--How many will spawn
		  	["Blueprint"] =  {'uaa0310'},	--Which unit blueprints that will be spawned
			["Type"] = "AIR",				--LAND AIR NAVY
		  	["Mods"] = {"AA"},				--What mods does this unit have?
		  	["HP"] = 30000,						--Additional HP, can be negative or positive
		  	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  },
		  {
		  	["Count"] = 2,					--How many will spawn
		  	["Blueprint"] =  {'ues0401', 'uas0401'},	--Which unit blueprints that will be spawned
			["Type"] = "NAVY",				--NAVY
		  	["Mods"] = {"SHIELD"},				--What mods does this unit have?
		  	["HP"] = 30000,						--Additional HP, can be negative or positive
		  	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  },
		},
		["Land T3"] =
		{
			1,		--Scout 
			30,		--Assault 
			20,		--Support
			3,		--Ranged
			4,		--Custom
			4,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			2,		--6 Experimental
			10,		--7 Bomber
			0,		--8 Gunship
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Navy T4"] =
		{
			1,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 29
		["Land T3"] =
		{
			1,		--Scout 
			30,		--Assault 
			20,		--Support
			3,		--Ranged
			4,		--Custom
			4,		--Experimental
		},
		["Land T4"] =
		{
			1,		--Scout 
			1,		--Assault 
			1,		--Support
			1,		--Ranged
			1,		--Custom
			0,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			2,		--6 Experimental
			10,		--7 Bomber
			0,		--8 Gunship
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Air T4"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
			0,		--7 Bomber
			1,		--8 Gunship
		},
		["Navy T3"] =
		{
			0,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 30
		["Boss"] =	--Boss Waves instantly spawn and have special attributes
		{
		  {
		  	["Count"] = 1,					--How many will spawn
		  	["Blueprint"] =  {'xsa0402'},	--Which unit blueprints that will be spawned
			["Type"] = "AIR",				--LAND AIR NAVY
		  	["Mods"] = {"AA"},				--What mods does this unit have?
		  	["HP"] = 0,						--Additional HP, can be negative or positive
		  	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  	["Vet"] = 1,					--What veterancy this boss will be 0 none, 5 max.
		  },
		},
		["Land T3"] =
		{
			1,		--Scout 
			40,		--Assault 
			20,		--Support
			4,		--Ranged
			4,		--Custom
			4,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			8,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			2,		--6 Experimental
			10,		--7 Bomber
			0,		--8 Gunship
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Navy T4"] =
		{
			0,		--1 Submarine
			1,		--2 Assault
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 31
		["Land T3"] =
		{
			1,		--Scout 
			50,		--Assault 
			20,		--Support
			2,		--Ranged
			4,		--Custom
			4,		--Experimental
		},
		["Land T4"] =
		{
			1,		--Scout 
			1,		--Assault 
			1,		--Support
			0,		--Ranged
			1,		--Custom
			1,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			4,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			2,		--6 Experimental
			10,		--7 Bomber
			0,		--8 Gunship
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			10,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Navy T4"] =
		{
			0,		--1 Submarine
			0,		--2 Assault
			0,		--3 Support
			1,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 32
		["Boss"] =	--Boss Waves instantly spawn and have special attributes
		{
		  {
		  	["Count"] = 2,					--How many will spawn
		  	["Blueprint"] =  {'uaa0310'},	--Which unit blueprints that will be spawned
			["Type"] = "AIR",				--LAND AIR NAVY
		  	["Mods"] = {"AA"},				--What mods does this unit have?
		  	["HP"] = 0,						--Additional HP, can be negative or positive
		  	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  	["Vet"] = 2,					--What veterancy this boss will be 0 none, 5 max.
		  },
		},
		["Land T3"] =
		{
			1,		--Scout 
			50,		--Assault 
			20,		--Support
			2,		--Ranged
			4,		--Custom
			4,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			4,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			2,		--6 Experimental
			10,		--7 Bomber
			0,		--8 Gunship
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			10,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Navy T4"] =
		{
			0,		--1 Submarine
			0,		--2 Assault
			0,		--3 Support
			1,		--4 Ranged
			0,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 33
		["Land T3"] =
		{
			1,		--Scout 
			60,		--Assault 
			20,		--Support
			3,		--Ranged
			5,		--Custom
			5,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			8,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			2,		--6 Experimental
			10,		--7 Bomber
			0,		--8 Gunship
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Navy T4"] =
		{
			0,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			1,		--6 Experimental
		},
	},
	{	-- Wave 34
		["Land T3"] =
		{
			1,		--Scout 
			60,		--Assault 
			20,		--Support
			3,		--Ranged
			8,		--Custom
			5,		--Experimental
		},
		["Land T4"] =
		{
			1,		--Scout 
			1,		--Assault 
			1,		--Support
			0,		--Ranged
			1,		--Custom
			1,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			8,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			2,		--6 Experimental
			10,		--7 Bomber
			0,		--8 Gunship
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Air T4"] =
		{
			1,		--1 Spy 
			1,		--2 Fighter 
			1,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			1,		--6 Experimental
			0,		--7 Bomber
			0,		--8 Gunship
		},
		["Navy T4"] =
		{
			1,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 35
		["Land T3"] =
		{
			1,		--Scout 
			60,		--Assault 
			20,		--Support
			3,		--Ranged
			8,		--Custom
			5,		--Experimental
		},
		["Land T4"] =
		{
			1,		--Scout 
			1,		--Assault 
			1,		--Support
			0,		--Ranged
			1,		--Custom
			1,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			8,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			2,		--6 Experimental
			10,		--7 Bomber
			0,		--8 Gunship
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Air T4"] =
		{
			1,		--1 Spy 
			1,		--2 Fighter 
			1,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			1,		--6 Experimental
			0,		--7 Bomber
			1,		--8 Gunship
		},
		["Navy T4"] =
		{
			1,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 36 Last Wave
		["Boss"] =	--Boss Waves instantly spawn and have special attributes
		{
		  {
		  	["Count"] = 1,					--How many will spawn
		  	["Blueprint"] =  {'xsa0402'},	--Which unit blueprints that will be spawned
			["Type"] = "AIR",				--LAND AIR NAVY
		  	["Mods"] = {"AA"},				--What mods does this unit have?
		  	["HP"] = 0,						--Additional HP, can be negative or positive
		  	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
		  	["Vet"] = 3,					--What veterancy this boss will be 0 none, 5 max.
		  },
		},
		["Land T3"] =
		{
			1,		--Scout 
			40,		--Assault 
			12,		--Support
			3,		--Ranged
			5,		--Custom
			5,		--Experimental
		},
		["Land T4"] =
		{
			1,		--Scout 
			1,		--Assault 
			1,		--Support
			1,		--Ranged
			1,		--Custom
			1,		--Experimental
		},
		["Air T2"] =
		{
			0,		--1 Spy 
			0,		--2 Fighter 
			0,		--3 Support
			0,		--4 Ranged
			0,		--5 Custom
			2,		--6 Experimental
			10,		--7 Bomber
			0,		--8 Gunship
		},
		["Air T3"] =
		{
			0,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
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
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 37
		["Land T3"] =
		{
			2,		--Scout 
			30,		--Assault 
			17,		--Support
			3,		--Ranged
			5,		--Custom
			5,		--Experimental
		},
		["Land T4"] =
		{
			0,		--Scout 
			2,		--Assault 
			0,		--Support
			2,		--Ranged
			0,		--Custom
			2,		--Experimental
		},
		["Air T2"] =
		{
			1,		--1 Spy 
			1,		--2 Fighter 
			1,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			2,		--6 Experimental
			10,		--7 Bomber
			1,		--8 Gunship
		},
		["Air T3"] =
		{
			1,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Air T4"] =
		{
			2,		--1 Spy 
			0,		--2 Fighter 
			2,		--3 Support
			0,		--4 Ranged
			2,		--5 Custom
			0,		--6 Experimental
			2,		--7 Bomber
			0,		--8 Gunship
		},
		["Navy T4"] =
		{
			1,		--1 Submarine
			0,		--2 Assault
			1,		--3 Support
			0,		--4 Ranged
			1,		--5 Custom
			0,		--6 Experimental
		},
	},
	{	-- Wave 38 Post Last Filler
		["Land T3"] =
		{
			2,		--Scout 
			30,		--Assault 
			17,		--Support
			3,		--Ranged
			5,		--Custom
			5,		--Experimental
		},
		["Land T4"] =
		{
			0,		--Scout 
			2,		--Assault 
			0,		--Support
			2,		--Ranged
			0,		--Custom
			0,		--Experimental
		},
		["Air T2"] =
		{
			1,		--1 Spy 
			1,		--2 Fighter 
			1,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			2,		--6 Experimental
			10,		--7 Bomber
			1,		--8 Gunship
		},
		["Air T3"] =
		{
			1,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Air T4"] =
		{
			0,		--1 Spy 
			2,		--2 Fighter 
			0,		--3 Support
			2,		--4 Ranged
			0,		--5 Custom
			2,		--6 Experimental
			0,		--7 Bomber
			2,		--8 Gunship
		},
		["Navy T4"] =
		{
			0,		--1 Submarine
			1,		--2 Assault
			0,		--3 Support
			1,		--4 Ranged
			0,		--5 Custom
			1,		--6 Experimental
		},
	},
	{	-- Wave 39 Post Last Filler
		["Land T3"] =
		{
			2,		--Scout 
			30,		--Assault 
			17,		--Support
			3,		--Ranged
			5,		--Custom
			5,		--Experimental
		},
		["Land T4"] =
		{
			2,		--Scout 
			2,		--Assault 
			2,		--Support
			2,		--Ranged
			2,		--Custom
			2,		--Experimental
		},
		["Air T2"] =
		{
			1,		--1 Spy 
			1,		--2 Fighter 
			1,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			2,		--6 Experimental
			10,		--7 Bomber
			1,		--8 Gunship
		},
		["Air T3"] =
		{
			1,		--1 Spy 
			12,		--2 Fighter 
			4,		--3 Support
			4,		--4 Ranged
			4,		--5 Custom
			4,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
		},
		["Air T4"] =
		{
			2,		--1 Spy 
			2,		--2 Fighter 
			2,		--3 Support
			2,		--4 Ranged
			2,		--5 Custom
			2,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
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

local s_EndlessWave = 
{
	{	--Endless Wave 1
		["Land T4"] =
		{
			5,		--Scout 
			5,		--Assault 
			5,		--Support
			5,		--Ranged
			5,		--Custom
			5,		--Experimental
		},
		["Land T3"] =
		{
			1,		--Scout 
			50,		--Assault 
			20,		--Support
			4,		--Ranged
			4,		--Custom
			4,		--Experimental
		},
		["Air T2"] =
		{
			1,		--1 Spy 
			1,		--2 Fighter 
			1,		--3 Support
			1,		--4 Ranged
			1,		--5 Custom
			2,		--6 Experimental
			20,		--7 Bomber
			1,		--8 Gunship
		},
		["Air T3"] =
		{
			1,		--1 Spy 
			20,		--2 Fighter 
			2,		--3 Support
			2,		--4 Ranged
			2,		--5 Custom
			2,		--6 Experimental
			2,		--7 Bomber
			2,		--8 Gunship
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
	{	--Endless Wave 2
		["Land T3"] =
		{
			1,		--Scout 
			50,		--Assault 
			20,		--Support
			4,		--Ranged
			4,		--Custom
			4,		--Experimental
		},
		["Land T4"] =
		{
			5,		--Scout 
			5,		--Assault 
			5,		--Support
			5,		--Ranged
			5,		--Custom
			5,		--Experimental
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
	}
}


GetWaveTable = function()
	return s_Waves;
end

GetEndlessTable = function()
	return s_EndlessWave;
end