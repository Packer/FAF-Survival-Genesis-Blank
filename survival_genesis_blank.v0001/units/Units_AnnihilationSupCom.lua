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
		},
		--4 Ranged
		{
			'UMR_L0201', 'XXX7103', 'ZAL3138',
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
			'UMR_A0301',
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
			'ANC_URS202', 'UMR_S0302',
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
			'BRPT3BOT', 'GMRL305', 'QAL01061', 'QRL01051', 'SA3003', 'UEL0302', 'URL0302', 'URL030211', 'URR0222', 'WEL03021',
		},
		--3 Support
		{
			 'UAL03071',
		},
		--4 Ranged
		{		
			 'XSL81010',
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
			 'XSLE0001',
		},
	},
	["Air T3"] =
	{
		--1 Spy
		{
		},
		--2 Fighter
		{
			 'SC30004',
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
			 'GMRA302', 'UEA0309',
		},
	},
	["Navy T3"] =
	{
		--1 Submarine
		{
			 'XRS02041',
		},
		--2 Assault
		{
			 'URS_PRG', 'WAS0332',
		},
		--3 Support
		{
			 'XES03071',  'WSS0301',
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
			 'DEL02041', 'LDEC100',  'OEL0402',  'UAL0402',  'UEL03011',  'UEL04011', 'UELB0401', 'URL04021', 'URL4822', 'WRL0404', 'WRL1466',  'WRL2466B',  'WSL04055',  'WZA7401',  'XRL04031',  'ZXL0401',
		},
		--3 Support
		{
			 'UAL03073',
		},
		--4 Ranged
		{
			 'OEL0401',  'XSL04041',
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
			 'LDUC210', 'URL11401',  'XSL04011',
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
			 'WEA0305',
		},
		--8 Gunship
		{
			 'OEA0401',  'QRA4404a',
		},
	},
	["Navy T4"] = 
	{
		--1 Submarine
		{
			 'GMRS302',
		},
		--2 Assault
		{
			 'GMAS308', 'UES03021',  'UT4BS',  'WES0401',  'WRS0401',  'XRS0402',
		},
		--3 Support
		{
			 'GMES405',  'XSS0403',
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