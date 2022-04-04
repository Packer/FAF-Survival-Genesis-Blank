-- Packer's Survival Genesis Table Script
-- A blank unit sheet for adding new mod unit support.

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
			'URL0206',
		},
		--3 Support
		{
			'UAL5001',
			'XSL0110',
		},
		--4 Ranged
		{
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
			'UELEW0001', 'URLEW0001', 'URL0206', 'XSLE0001',
			'UALEW0001',
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
			'UAL5001',
		},
		--4 Ranged
		{
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
			'UASE0001',
			'UESE0001',
			'URSE0001',
			'XSSE0001',
		},
		--7 Bomber
		{
		},
		--8 Gunship
		{
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
			'UAL0108',
			'XSL0206',
		},
		--4 Ranged
		{
			'UEL0206',
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
			'UEA0110',
			'URA0205',
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
			'UAL0305',
		},
		--3 Support
		{
		},
		--4 Ranged
		{	
			'UAL0311',	
			'URL0311',
		},
		--5 Custom	
		{
			'UAL0302',
			'URL0302',
			'XSL0302',
		},
		--6 Experimental	
		{
			'XSL0310',
		},
	},
	["Air T3"] =
	{
		--1 Spy
		{
		},
		--2 Fighter
		{
			'UEA0306',
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
			'UEA0306',
		},
		--8 Gunship
		{
			'XSA0306',
		},
	},
	["Navy T3"] =
	{
		--1 Submarine
		{
			'UAS0301',
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
			'UEA0401',
		},
		--7 Bomber
		{
		},
		--8 Gunship
		{
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