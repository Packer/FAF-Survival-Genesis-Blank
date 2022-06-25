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
			'ARMFLEA', 'CORFAV',
		},
		--2 Assault
		{
			'ARMFAV', 'ARMFLASH', 'ARMPW', 'ARMSTUMP', 'ARMWAR',
			'CORAK', 'CORLEVLR', 'CORRAID', 'CORSTORM',
		},
		--3 Support
		{
			'ARMJETH', 'ARMSAM', 'CORCRASH', 'CORMIST',
		},
		--4 Ranged
		{
			'ARMHAM', 'CORTHUD',
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
			'ARMPEEP', 'CORFINK',
		},
		--2 Fighter
		{
			'ARMFIG', 'CORVENG',
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
			'ARMTHUND', 'CORSHAD',
		},
		--8 Gunship
		{
		},
	},
	["Navy T1"] =
	{
		--1 Submarine
		{
			'ARMSUB', 'CORSUB',
		},
		--2 Assault
		{
			'ARMROY', 'CORROY',
		},
		--3 Support
		{
			'ARMPT', 'CORPT',
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
			'ARMSPY', 'CORSPY',
		},
		--2 Assault
		{
			'ARMBULL', 'ARMCROC', 'ARMFAST', 'ARMFIDO', 'ARMSPID',
			'CORAMPH', 'CORCAN', 'CORFAST', 'CORREAP', 'CORSEAL',
		},
		--3 Support
		{
			'ARMAMPH', 'ARMASER', 'ARMJAM','ARMSCAB', 'ARMVADER', 'ARMYORK',
			'CORETER', 'CORMABM', 'CORROACH', 'CORSENT', 'CORSPEC',
		},
		--4 Ranged
		{
			'ARMMANNI', 'ARMMERL', 'ARMROCK',
			'CORHRK', 'CORVROC',
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
			'ARMHAWK',
			'CORVAMP',
		},
		--3 Support
		{
			'ARMLANCE',
			'CORTITAN',
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
			'ARMBRAWL', 'CORAPE',
		},

	},
	["Navy T2"] =
	{
		--1 Submarine
		{
			'ARMSUBK',
			'CORSHARK',
		},
		--2 Assault
		{
			'ARMCRUS',
			'CORCRUS',
		},
		--3 Support
		{
			'ARMAAS', 'ARMSJAM',
			'CORARCH', 'CORSJAM',
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
			'ARMSH', 'CORSH',
		},
		--2 Assault
		{
			'ARMANAC', 'ARMLATNK', 'ARMMAV', 'ARMZEUS',
			'CORGOL', 'CORPYRO', 'CORSNAP', 'CORSUMO',
		},
		--3 Support
		{
			'ARMMARK', 'ARMSEER',
			'CORAH', 'CORVOYR', 'CORVRAD',
		},
		--4 Ranged
		{		
			'ARMMART', 'ARMMH', 'ARMSNIPE',
			'CORART', 'CORMH', 'CORMORT',
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
			'ARMAWAC','ARMSEHAK', 
			'CORAWAC', 'CORHUNT',
		},
		--2 Fighter
		{
			'ARMSFIG',
			'CORSFIG',
		},
		--3 Support
		{
			'ARMSEAP',
			'CORSEAP',
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
			'ARMPNIX',
			'CORHURC',
		},
		--8 Gunship
		{
		},
	},
	["Navy T3"] =
	{
		--1 Submarine
		{
			'CORSUB',
		},
		--2 Assault
		{
			'ARMBATS',
			'CORBATS',
		},
		--3 Support
		{
			'ARMCARRY','ARMSCRAM',
			'CORCARRY',
		},
		--4 Ranged
		{
			'ARMMSHIP',
			'CORMSHIP',
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
			'CORKROG',
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
			'ARMDECOM',
			'CORDECOM',
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