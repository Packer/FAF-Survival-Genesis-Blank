-- Packer's Survival Genesis Wave Script
-- Base Game
-- Waves calculated by  (unit count / Wave Frequency) x2 for the multiplier, 
-- 60 = 1 Unit a Sec PER player Multipled

--Units Units need to be in lower case
local s_Waves = 
{
		--["Boss"] =
		--{
			--Bosses Infomation here
			-- Wave 1 - WAVE/TYPE/BLUEPRINT
			-- Spawn Count, Spawn Location, Blueprint, Blueprint etc
			--{
			--	["Count"] = 1,					--How many will spawn, Required
			--	["Blueprint"] =  {'url0402'},	--Which unit blueprints that will be spawned, Required
			--  ["Type"] = "LAND",				--LAND AIR NAVY, Required
			--	["Mods"] = {"AA"},				--What mods does this unit have?
			--	["HP"] = 1000,					--Additional HP, can be negative or positive
			--	["Speed"] = 0,					--Additional Movespeed, 1 = double movespeed, can be negative or positive
			--},
		--},

	-- Wave 1
	{  
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND",
				["Blueprint"] =  {'url0402'},	--Monkeylord
			},
		},
	},
	-- Wave 2
	{
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'},	--Monkeylord
			},
			{
				["Count"] = 1,
				["Type"] = "LAND",
				["Blueprint"] =  {'url0402'},	--Monkeylord
				["Mods"] = {"SHIELD"},
			}
		},
	},
	--Wave 3
	{
		["Boss"] = 
		{
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'},	--Monkeylord
				["Mods"] = {"AA"},
			},
		},
	},
	--Wave 4
	{
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'},	--Monkeylord
				["Mods"] = {"AA"},
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'},	--Monkeylord
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'},	--Monkeylord
				["Mods"] = {"SHIELD"},
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
			},
		},
	},
	--Wave 5
	{  
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"AA"},
				["HP"] = 500,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"HPD"},
				["HP"] = 500,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"SHIELD"},
				["HP"] = 500,
			},
		},
	},
	--Wave 6
	{  
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'},	--Monkeylord
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'},	--Monkeylord
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'},	--Monkeylord
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
		},
	},
	--Wave 7
	{  
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'},	--Monkeylord
				["Mods"] = {"HPD"},
				["HP"] = 5000,
				["Speed"] = 0.25,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'},	--Monkeylord
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'},	--Monkeylord
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
		},
	},
	--Wave 8
	{ 
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'},	--Monkeylord
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'},	--Monkeylord
				["Mods"] = {"HPD"},
				["HP"] = 5000,
				["Speed"] = 0.25,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'},	--Monkeylord
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
			},
		},
	},
	--Wave 9
	{ 
		["Boss"] = 
		{
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
				["Speed"] = 0.25,
			},
		},
	},
	--Wave 10
	{ 
		["Boss"] = 
		{
			{
				["Count"] = 3,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'},	--Monkeylord
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
		},
	},
	--Wave 11
	{ 
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'},	--Monkeylord
				["Mods"] = {"HPD"},
				["HP"] = 5000,
				["Speed"] = 0.25,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"AA"},
				["HP"] = 5000,
				["Speed"] = 0.25,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401', 'xsl0401', 'url0402'},	--Fatboy -- Thot -- Monkeylord
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
				["Speed"] = 0.25,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401','url0402','xsl0401'},	--Fatboy --Spider --Thot
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
				["Speed"] = 0.25,
			},
		},
	},
	--Wave 12
	{ 
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402', 'uel0401', 'xrl0403'},	--Monkeylord--Fatboy--Megalith
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401','xrl0403'},	--Fatboy--Megalith
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401', 'xsl0401', 'url0402'},	--Fatboy -- Thot -- Monkeylord
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402','xrl0403'},	--Spider--Megalith
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
			},
		},
	},
	--Wave 13
	{
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"AA"},
				["HP"] = 8000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"HPD"},
				["HP"] = 8000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"TACTD"},
				["HP"] = 8000,
			},
		},
	},
	--Wave 14
	{
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"HPD"},
				["HP"] = 8000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"TACTD"},
				["HP"] = 8000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"SHIELD"},
				["HP"] = 8000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"AA"},
				["HP"] = 8000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"HPD"},
				["HP"] = 8000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"SHIELD"},
				["HP"] = 8000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"HPD"},
				["HP"] = 8000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"TACTD"},
				["HP"] = 8000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"SHIELD"},
				["HP"] = 8000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"SHIELD"},
				["HP"] = 8000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"HPD"},
				["HP"] = 8000,
			},
		},
	},
	--Wave 15
	{
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"HPD"},
				["HP"] = 9000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"TACTD"},
				["HP"] = 9000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"SHIELD"},
				["HP"] = 9000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"AA"},
				["HP"] = 9000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"HPD"},
				["HP"] = 9000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"SHIELD"},
				["HP"] = 9000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"HPD"},
				["HP"] = 9000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"AA"},
				["HP"] = 9000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"SHIELD"},
				["HP"] = 9000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"AA"},
				["HP"] = 9000,
			},
		},
	},
	--Wave 16
	{
		["Boss"] = 
		{
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"SHIELD"},
				["Speed"] = 2;
			},
		},
	},
	--Wave 17
	{
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"HPD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"TACTD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"AA"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"HPD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"AA"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"HPD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"HPD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"HPD"},
				["HP"] = 10000,
			},
		},
	},
	--Wave 18
	{
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"AA"},
				["Speed"] = 0.5;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"HPD"},
				["Speed"] = 0.5;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"SHIELD"},
				["Speed"] = 0.5;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"AA"},
				["Speed"] = 0.5;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"HPD"},
				["Speed"] = 0.5;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"TACTD"},
				["Speed"] = 0.5;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"SHIELD"},
				["Speed"] = 0.5;
			},
		},
	},
	--Wave 19
	{
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"HPD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"TACTD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"AA"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"HPD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"HPD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"TACTD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"AA"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"TACTD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
			},
		},
	},
	--Wave 20
	{
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"HPD"},
				["HP"] = 10000,
				["Speed"] = 0.75;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"TACTD"},
				["HP"] = 10000,
				["Speed"] = 0.75;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
				["Speed"] = 0.75;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"AA"},
				["HP"] = 10000,
				["Speed"] = 0.75;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"HPD"},
				["HP"] = 10000,
				["Speed"] = 0.75;
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
				["Speed"] = 0.75;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"HPD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"TACTD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"AA"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"TACTD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
			},
		},
	},
	--Wave 21
	{
		["Boss"] = 
		{
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"SHIELD"},
				["Speed"] = 1.5;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"HPD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"TACTD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"AA"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"HPD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"AA"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"TACTD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"AA"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"HPD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"AA"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"HPD"},
				["HP"] = 10000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"SHIELD"},
				["HP"] = 10000,
			},
		},
	},
	--Wave 22
	{
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"HPD"},
				["HP"] = 11000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"TACTD"},
				["HP"] = 11000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"SHIELD"},
				["HP"] = 11000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"AA"},
				["HP"] = 11000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"HPD"},
				["HP"] = 11000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"SHIELD"},
				["HP"] = 11000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"AA"},
				["HP"] = 11000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"TACTD"},
				["HP"] = 11000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"SHIELD"},
				["HP"] = 11000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"AA"},
				["HP"] = 11000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"HPD"},
				["HP"] = 11000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"AA"},
				["HP"] = 11000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"HPD"},
				["HP"] = 11000,
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"SHIELD"},
				["HP"] = 11000,
			},
		},
	},
	--Wave 23
	{
		["Boss"] = 
		{
			{
				["Count"] = 5,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"HPD"},
				["HP"] = 25000,
				["Speed"] = 1;
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"AA"},
				["HP"] = 25000,
				["Speed"] = 1;
			},
			{
				["Count"] = 6,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"SHIELD"},
				["HP"] = 25000,
				["Speed"] = 1;
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"TACTD"},
				["HP"] = 25000,
				["Speed"] = 1;
			},
		},
	},
	--Wave 24
	{
		["Boss"] = 
		{
			{
				["Count"] = 10,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"HPD"},
				["HP"] = 1000,
				["Speed"] = 1.25;
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
			},
		},
	},
	--Wave 25
	{
		["Boss"] = 
		{
			{
				["Count"] = 5,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"SHIELD"},
				["HP"] = 9000,
				["Speed"] = 1;
			},
			{
				["Count"] = 3,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"AA"},
				["HP"] = 6000,
			},
			{
				["Count"] = 3,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"HPD"},
				["HP"] = 6000,
			},
			{
				["Count"] = 3,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"TACTD"},
				["HP"] = 6000,
			},
		},
	},
	--Wave 26
	{
		["Boss"] = 
		{
			{
				["Count"] = 4,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"SHIELD"},
				["HP"] = 0,
				["Speed"] = 1;
			},
			{
				["Count"] = 3,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"SHIELD"},
				["HP"] = 1500,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"AA"},
				["HP"] = 1500,
			},
			{
				["Count"] = 3,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"HPD"},
				["HP"] = 1500,
			},
			{
				["Count"] = 3,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"TACTD"},
				["HP"] = 1500,
			},
		},
	},
	--Wave 27
	{
		["Boss"] = 
		{
			{
				["Count"] = 6,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"HPD"},
				["HP"] = 1000,
			},
			{
				["Count"] = 3,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"SHIELD"},
				["HP"] = 1000,
			},
			{
				["Count"] = 3,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"AA"},
				["HP"] = 1000,
			},
			{
				["Count"] = 3,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"TACTD"},
				["HP"] = 1000,
			},
		},
	},
	--Wave 28
	{
		["Boss"] = 
		{
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"AA"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"HPD"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"AA"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"HPD"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"AA"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"HPD"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"AA"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"HPD"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"AA"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"HPD"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
			{
				["Count"] = 1,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
				["Speed"] = 0.25;
			},
		},
	},
	--Wave 29
	{
		["Boss"] = 
		{
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
		},
	},
	--Wave 30
	{
		["Boss"] = 
		{
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"TACTD"},
				["HP"] = 1000000,
				["Speed"] = 2;
			},
		},
	},
}

local s_WavesEndless = 
{
	{	-- Loop Wave 1
		["Boss"] = 
		{
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'url0402'}, --Monkeylord
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'uel0401'},	--Fatboy
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xrl0403'},	--Megalith
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'xsl0401'},	--Thot
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"AA"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"HPD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"TACTD"},
				["HP"] = 5000,
			},
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"SHIELD"},
				["HP"] = 5000,
			},
		},
	},
	{--Loop 2
		["Boss"] = 
		{
			{
				["Count"] = 2,
				["Type"] = "LAND", 
				["Blueprint"] =  {'ual0401'},	--Colossus
				["Mods"] = {"TACTD"},
				["HP"] = 2000000,
				["Speed"] = 2;
			},
		},
	},
}


GetWaveTable = function()
	return s_Waves;
end

GetEndlessTable = function()
	return s_WavesEndless;
end