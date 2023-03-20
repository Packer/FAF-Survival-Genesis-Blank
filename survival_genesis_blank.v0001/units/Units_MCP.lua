-- Packer's Survival Genesis Table Script
-- Mixed Combat Pack support

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
			'mal0102', 'msl0102',
		},
		--3 Support
		{
			'mrl0102',
		},
		--4 Ranged
		{
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
			'mal1101', 'mal1102', 'mel1101', 'mel1102', 'mrl1101', 'mrl1102', 'msl1101', 'msl1102',
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
			'maa1101', 'mea1101', 'mra1101', 'msa1101',
		},
		--7 Bomber
		{
		},
		--8 Gunship
		{
			'maa0105', 'mea0105', 'msa0105',
		},
	},
	["Navy T1"] =
	{
		--1 Submarine
		{
		},
		--2 Assault
		{
			'mes0102', 'mrs0102', 'mss0102',
		},
		--3 Support
		{
		},
		--4 Ranged
		{
			'mas0106', 'mes0106', 'mrs0106', 'mss0106',
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
			'mas1101', 'mes1101', 'mrs1101', 'mss1101',
		},
	},
	["Land T2"] =
	{
		--1 Scout 
		{
		},
		--2 Assault
		{
			'mal0204',
		},
		--3 Support
		{
			'msl0204',
		},
		--4 Ranged
		{
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
			'mal1201', 'mal1202', 'mel1201', 'mel1202', 'mrl1201', 'mrl1202', 'msl1201', 'msl1202',
		},
	},
	["Air T2"] =
	{
		--1 Spy
		{
		},
		--2 Fighter
		{
			'mea0201', 'mra0201', 'msa0201',
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
			'maa1201', 'mea1201', 'mra1201',
		},
		--7 Bomber
		{
			'maa0205',
		},
		--8 Gunship
		{		
		},

	},
	["Navy T2"] =
	{
		--1 Submarine
		{
			'mss0204',
		},
		--2 Assault
		{
			'mas0205',
		},
		--3 Support
		{
			'mss0205',
		},
		--4 Ranged
		{
			'mas0206', 'mes0206', 'mrs0206', 'mss0206',
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
			'mas1201', 'mes1201', 'mrs1201', 'mss1201',
		},
	},
	["Land T3"] =
	{
		--1 Scout 
		{
		},
		--2 Assault
		{
			'mal0306', 'msl0302',
		},
		--3 Support
		{
			'mrl0307',
		},
		--4 Ranged
		{		
			'mel0308', 'mrl0308',
		},
		--5 Custom	
		{
			'msl0306',
		},
		--6 Experimental	
		{
			'mal1301', 'mal1302', 'mel1301', 'mel1302', 'mrl1301', 'mrl1302', 'msl1301', 'msl1302',
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
			'mea0306', 'mra0306', 'msa0306',
		},
		--4 Ranged
		{
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
			'maa1301', 'mea1301', 'mra1301', 'msa1301',
		},
		--7 Bomber
		{
		},
		--8 Gunship
		{
			'msa0305',
		},
	},
	["Navy T3"] =
	{
		--1 Submarine
		{
			'mas0307', 'mes0301', 'mrs0301',
		},
		--2 Assault
		{
			'mrs0307', 'mss0307',
		},
		--3 Support
		{
			'mes0303',
		},
		--4 Ranged
		{
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
			'mas1301', 'mes1301', 'mrs1301', 'mss1301',
		},
	},
	["Land T4"] = 
	{
		--1 Scout 
		{
		},
		--2 Assault
		{ 
			'mel1402', 'mrl1402',
		},
		--3 Support
		{
			'mal1401', 'mel1401', 'msl1401',
		},
		--4 Ranged
		{
			'mal1403', 'mel1403', 'msl1403',
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
			'mal1404', 'mel1404', 'mrl1404', 'msl1404',
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
			'mea1401',
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
			'mra1401',
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
			'mes1401', 'mrs1401', 'mss1401',
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