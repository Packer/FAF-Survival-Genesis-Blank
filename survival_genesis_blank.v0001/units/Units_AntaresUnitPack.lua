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
			'FRL0101', 'UAL03072', 'XSL0110',
		},
		--4 Ranged
		{
			'ORL0111'
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
			'ANC_URA102', 'UME_A0101',
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
			'tcsu0201',
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
			'GGE0601', 'UUR7777',
		},
		--3 Support
		{
			'XSL0206',
		},
		--4 Ranged
		{
			'UMR_L0201', 'XSL0207', 'ZAL3138', 'XXX7103',
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
			'LTA3002', 'XSLE0001', 'XSLEW0001',
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
			'URA0305',
		},
		--7 Bomber
		{
			'UMA_A0201', 'UMR_A0301',
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
			'ANC_URS202', 'UME_S0201', 'UMR_S0302'
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
			'BRPT3BOT', 'GMRL305', 'UEL0302', 'URL0302', 'URL030211', 'URL0310', 'URR0222', 'WEL03021',
		},
		--3 Support
		{
			'GMRL308', 'GMRL312', 'WEL0309', 'GMAL307', 'GMAL313', 'GMSL303', 'GMSL306', 'ZAL0205',
		},
		--4 Ranged
		{		
			'XSL81010',  --'UAL0311', Breaks
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
			'LDUC11',  'WSL0405', --'SMPA0060',
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
			'GMEA305',
		},
		--4 Ranged
		{
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
			'UAOW1101',  'UAOW1103', --'UAOW1102', broken setup
			'UEOW1101', 'UEOW1102', 'UEOW1103',
			'UROW1101', 'UROW1101', 'UROW1101',
			'XSOW1101', 'XSOW1101', 'XSOW1101',
		},
		--7 Bomber
		{
			'GMRA201',
		},
		--8 Gunship
		{
			'GMRA302', 'GMRA305',   'USAX301', 'XSA0306', --'UEA0309', 'URA0106',
		},
	},
	["Navy T3"] =
	{
		--1 Submarine
		{
		},
		--2 Assault
		{
			 'WAS0332',
		},
		--3 Support
		{
			 'WSS0301',
		},
		--4 Ranged
		{
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
			'URS_PRG',
		},
	},
	["Land T4"] = 
	{
		--1 Scout 
		{
		},
		--2 Assault
		{ 
			'GEHL0305', 'GGL0808', 'GMAL0401', 'GMSL312',
			'OEL0402', 'UAL0402', 'URL04822', 
			'WAL0305', 'WAL0309',  
			'WEL0302', 'WEL0305',
			'WRL0303',  'WRL0404', 'WRL04044', 'WRL1466', 'WRL1466', --'WRL0306',
			'WSL0302',  'WZA7401',  --'XEL0401', Breaks
			'XXLL8383',  'XXRL0385',  'XXU70013',
			'ZXL0401', 'ZZX0303',  'WSL04055',  'ZAL3055',
		},
		--3 Support
		{
			'UAL00011', 'UEL00011', 'URL00011', 'XSL00011',
			'UALX401',
		},
		--4 Ranged
		{
			'GEL0E86',  'GGG11304',  'GMAL308', 'URL0311',
			'WEL03041', 'XRL0384',  'XSL04041',  'XXAl03855',
			'ZAL9044',  'ZXL03084',  'ZXSL0385',
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
			'OEL0401', 'URL4032',
		},
	},
	["Air T4"] = 
	{
		--1 Spy
		{
		},
		--2 Fighter
		{
			'MINI_CZAR', 'UEAF0301', 'WSA0305',
		},
		--3 Support
		{
			'SEO0402',  'SWEO05', 'SWRO05', 'SWSO05', --'SWAO05',
		},
		--4 Ranged
		{
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
			--'SS4001B',
		},
		--7 Bomber
		{
			'WEA0305',
		},
		--8 Gunship
		{
			'OEA0401', --'QRA4404a',
			'XSSE0001',
		},
	},
	["Navy T4"] = 
	{
		--1 Submarine
		{
			'GMRS302',  'GMRS401',
			'XSBEW0003',
		},
		--2 Assault
		{
		   'ANC_URS404', 'CT4BS',  'GMAS308',  'GMSS401',  'UT4BS',  
		   'WES0401',  'WRS0401',  'XRS0402',  'XSS03021',
		},
		--3 Support
		{
			'GMES405',  --'GMRS402',
			'XES0302',  'XRS0302', 'XSS0403',
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