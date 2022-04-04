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
			'UEL0108',
		},
		--3 Support
		{
			'UAL5001','XSL0110',
		},
		--4 Ranged
		{
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
			'UELEW0001','UALEW0001','URLEW0001','XSLE0001',
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
      'UASE0001','UESE0001','URSE0001','XSSE0001',
		},
		--7 Bomber
		{
		},
		--8 Gunship
		{
      'UEA0112',
		},
	},
	["Navy T1"] =
	{
		--1 Submarine
		{
      'UAS0204','URS0204','XSS0204',
		},
		--2 Assault
		{
		},
		--3 Support
		{
      'UES0106','UAS0106','URS0106','XSS0106',
		},
		--4 Ranged
		{
      'UES0104','UAS0104','URS0104','XSS0104',
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
			'XAL0203',
		},
		--3 Support
		{
			'UEL0110','XSL0206',
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
			'UELEW0003','UELEW0004',
			'UALEW0002',
			'XRLE0004','XSLEW0001',
		},
	},
	["Air T2"] =
	{
		--1 Spy
		{
		},
		--2 Fighter
		{
      'XAA0202',
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
      'UEAEW0002','UAAEW0004',
		},
		--7 Bomber
		{
      'UEA0105','UEA0111','URA0205',
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
      'UEL0305','UAL0305','URL0320',
		},
		--3 Support
		{
      'UEL0311',
		},
		--4 Ranged
		{		
      'URL0311',
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
		--2 Assault
		{
		},
		--1 Submarine
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
			'URL0403',
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
		},
		--7 Bomber
		{
		},
		--8 Gunship
		{
		'UEA0401',
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