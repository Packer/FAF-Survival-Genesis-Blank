-- Packer's Survival Genesis Table Script
-- Marlo's Mod

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
			'KEL0101',
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
			'KEA0101',
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
			'KEL0202', 'KEL0204', 'KEL0205', 'KSL0201',
		},
		--3 Support
		{
			'KEL0203',
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
		},

	},
	["Navy T2"] =
	{
		--1 Submarine
		{
		},
		--2 Assault
		{
			'KES0201',
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
			'KAL0301',  'KEL0301', 'KEL0302', 'KAL0304',
			'KEL0306', 'KAL0304', 'KRL0301', 'KRL0302',
			'KSL0301',
		},
		--3 Support
		{
			'KEL0303', 'KEL0304','KEL0305', 'KEL0307',
		},
		--4 Ranged
		{	
			'KAL0304',
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
			'KEL0308',	--Nuke Cannon
		},
	},
	["Air T3"] =
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
			'KEA0301',	--Nuke Bomber
		},
		--7 Bomber
		{
		},
		--8 Gunship
		{
		},
	},
	["Navy T3"] =
	{
		--1 Submarine
		{
			'KRS0301','KSS0301',
		},
		--2 Assault
		{
			'KAS0301','KAS0302',
			'KES0301','KES0302',
			'KES0401','KES0302',
			'KRS0302','KRS0401',
			
		},
		--3 Support
		{
		},
		--4 Ranged
		{
			'KES0305',
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
			'KAL0401', 'KRL0401', 'KEL0407', 'KAL0402', 'KRL0402', 'KSL0401', 'KEL0402', 'KEL0405',
		},
		--3 Support
		{
			'KEL0406',
		},
		--4 Ranged
		{
			'KEL0401', 'KEL0404', 
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
			'KAA0401', 'KEA0401'
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
			'KES0304',
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