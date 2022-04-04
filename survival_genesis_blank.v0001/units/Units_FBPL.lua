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
			'UEL0101A',
		},
		--2 Assault
		{
			'UEL0201A',
			'UEL0201B',
			'URL0106',
			'URL0107',
			'URL0201',
			'URL0303B',
		},
		--3 Support
		{
			'UEL0104C',
			'URL0106B',
		},
		--4 Ranged
		{
			'UEL0103A',
			'URL0106C',
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
			'UAA0100',
			'URA0100',
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
	["Navy T1"] =
	{
		--1 Submarine
		{
			'URS0100',
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
			'UEL0106B',
			'UEL0202A',
			'UEL0202B',
			'URL0303C',
			'UAL0200',
			'UEL0203A',
			'URL0200',
		},
		--3 Support
		{
			'UEL0104B',
			'URL0107B',
			'UEL0200',
			'UAL0307',
		},
		--4 Ranged
		{
			'UEL0111B',
			'URL0303A',
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
			'URA0202',
		},
		--2 Fighter
		{
			'UAA0200',
			'UEA0102B',
			'URA0110',
			'URA0200',
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
			'UEA0103B',
			'URA0211',
		},
		--8 Gunship
		{	
			'URA0210',	
		},

	},
	["Navy T2"] =
	{
		--1 Submarine
		{
			'UES0200',
			'URS0200',
		},
		--2 Assault
		{
			'UAS0200',
		},
		--3 Support
		{
		},
		--4 Ranged
		{
			'UES0202',
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
			'UEL0303B',
		},
		--3 Support
		{	
			'UAL0300',
		},
		--4 Ranged
		{	
			'UEL0304C',	
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
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
		},
		--2 Assault
		{
		},
		--3 Support
		{
		},
		--4 Ranged
		{
			'UES0202B',
			'URS0300',
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
			'UEL0401B',
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
		},
		--7 Bomber
		{
			'URA0404',
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