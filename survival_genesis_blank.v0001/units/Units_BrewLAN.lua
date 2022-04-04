-- Packer's Survival Genesis Table Script
-- BrewLAN support

--Table is broken down into Tiers then categories then spawn groups
--Each group is spawned at different ratios depending on their type and power
local s_UnitTable = 
{
	["Land T1"] = 
	{
		--1 Scout
		{
		},
		--2 Assault
		{
		},
		--3 Support
		{
		},
		--4 Ranged
		{
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
		},
	},
	["Air T1"] =
	{
		--1 Spy
		{
		},
		--2 Fighter
		{
		},
		--3 Support
		{
			'SAA0106', 'SEA0106', 'SRA0106', 'SSA0106',
		},
		--4 Ranged
		{
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
		},
		--7 Bomber
		{
		},
		--8 Gunship
		{
			'SAA0105', 'SEA0105', 'SSA0105',
		},

	},
	["Navy T1"] =
	{
		--1 Submarine
		{
		},
		--2 Assault
		{
		},
		--3 Support
		{
		},
		--4 Ranged
		{
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
		},
	},
	["Land T2"] =
	{
		--1 Scout
		{
		},
		--2 Assault
		{
		},
		--3 Support
		{
			'SAL0323',	--Tact D
			'SSL0222',	--Shield
		},
		--4 Ranged
		{
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
		},
	},
	["Air T2"] =
	{
		--1 Spy
		{
			'SAA0201', 'SEA0201', 'SRA0201', 'SSA0201',
		},
		--2 Fighter
		{
		},
		--3 Support
		{
		},
		--4 Ranged
		{
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
		},
		--7 Bomber
		{
			'SAA0211',	--Bombers
		},
		--8 Gunship
		{
		},

	},
	["Navy T2"] =
	{
		--1 Submarine
		{
		},
		--2 Assault
		{
		},
		--3 Support
		{
		},
		--4 Ranged
		{
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
		},
	},
	["Land T3"] =
	{
		--1 Scout
		{
		},
		--2 Assault
		{
			'SAL0311', 'SSL0311',						--Tank
		},
		--3 Support
		{
			'SEL0322', 'SAL0322',						--Shield
			'SEL0324', 'SAL0320', 'SRL0320', 'SSL0320',	--AA
			'SEL0321', 'SAL0321', 'SRL0321', 'SSL0321',	--Nuke D
			'SRL0316',									--Stealth
		},
		--4 Ranged
		{
			'SEL0320', 'SRL0311',						--Arti		
			 --'SRL0318', EMP unit that doesn't work?
		},
		--5 Custom	
		{
			'SAL0324', 'SRL0324', 'SSL0324',			--Radar		
		},
		--6 Experimental	
		{
		},
	},
	["Air T3"] =
	{
		--1 Spy
		{
			'SEA0310', 'SRA0310',						--Spy Planes T3
		},
		--2 Fighter
		{
		},
		--3 Support
		{
			'SEA0307',	'SRA0307', 'SSA0307',			--Torp
		},
		--4 Ranged
		{
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
		},
		--7 Bomber
		{
		},
		--8 Gunship
		{
			'SSA0305',									--Gunships
		},
	},
	["Navy T3"] =
	{
		--1 Submarine
		{
		},
		--2 Assault
		{
		},
		--3 Support
		{
      'SRS0319',
		},
		--4 Ranged
		{
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
		},
	},
	["Land T4"] = 
	{
		--1 Scout
		{
		},
		--2 Assault
		{
		},
		--3 Support
		{
		},
		--4 Ranged
		{
			'SAL0401',	--Siege Tank
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
		},
	},
	["Air T4"] = 
	{
		--1 Spy
		{
		},
		--2 Fighter
		{
		},
		--3 Support
		{
		},
		--4 Ranged
		{
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
		},
		--7 Bomber
		{
		},
		--8 Gunship
		{
			'SEA0401',	--AA Gunship
		},
	},
	["Navy T4"] = 
	{
		--1 Submarine
		{
		},
		--2 Assault
		{
		},
		--3 Support
		{
		},
		--4 Ranged
		{
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
		},
	}
}

GetUnitTable = function()
	return s_UnitTable;
end