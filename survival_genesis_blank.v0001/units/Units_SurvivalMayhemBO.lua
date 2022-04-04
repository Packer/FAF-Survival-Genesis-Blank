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
      'sbrnt1htu',
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
      'sbrpat1advbombu'
		},
		--8 Gunship
		{
      'sbrpat1exgunshipu'
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
      'sdel0204',
      --'sbrnt2exmdfu', error
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
      'sbrnt2exmdfu',
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
      --'brmat2gunship', Error
		},
		--7 Bomber
		{
		},
		--8 Gunship
		{		
      'sxsa0203u',
		},

	},
	["Navy T2"] =
	{
		--1 Submarine
		{
      'sues0203', 'sxrs0204u',
		},
		--2 Assault
		{
      'surs0201a', 'surs0201u'
		},
		--3 Support
		{
		},
		--4 Ranged
		{
      'surs0202u',
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
      'suel0303u', 'sxl0305u',
      'sxrl0305u',
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
      'sbrnt1advbotu', 'sbrot2asb', 'sbrpt1expbotu','sbrpt1hvbotu',
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
      'sbsa0310u', --'sxaa0305u', error
		},
	},
	["Navy T3"] =
	{
		--1 Submarine
		{
      'sbrs0305', 'sbrs0305u', 'xss0304'
		},
		--2 Assault
		{
      'surs0201'
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
      'sbal0401u', 'sbrmt3ava', 'sbrpt3shbmu', 'sual0401', 'sual0401u', 'suel0401u', 'surl0402', 'surl0402u', 'sxslew0001u',
		},
		--3 Support
		{
      'sgmel405u',
		},
		--4 Ranged
		{
      'sbrl0401ub', 'sbrmt3avau', 'sbrnt3batu', 'suelew0003u', 'surl0401', 'surlew0001',
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
      'suac1201u', 'uac1201',
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
      'sbroat3prideu', 'suaa0310u',
		},
		--8 Gunship
		{
      'xaa9905'
		},
	},
	["Navy T4"] = 
	{
		--1 Submarine
		{
      'sbrs0305ub', 'suas0304', 'sues0401u', 'ues0401',
		},
		--2 Assault
		{
      'sbes0402u',
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
      'xrs9905'
		},
	},
	["Boss"] = 
	{
    {  --Land
      'sbel0402', 'sbrmt3avab', 'sbrmt3exbmb', 'sbrmt3mcm4', 'sbrmt3mcm4b', 'sbrmt3snakeb', 'sbrmt3hadesb', 'sbrmt3hvbotb', 'sbrpt3shbm', 'sura0401b1', 'url0403',
    },
    { --Air
      'sura0401', 'sura0401b',
    },
    { --Navy
      'sbsa0309b',
    }
	}
}

GetUnitTable = function()
	return s_UnitTable;
end