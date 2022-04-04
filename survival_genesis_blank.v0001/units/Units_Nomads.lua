-- Packer's Survival Genesis Table Script
-- Nomads support

--Table is broken down into Tiers then categories then spawn groups
--Each group is spawned at different ratios depending on their type and power
local s_UnitTable = 
{
	["Land T1"] = 
	{
		--1 Scout
		{
			'XNL0101',	--Scouts
		},
		--2 Assault
		{
			'XNL0106',	--Light Bots
			'XNL0201',	--Tanks
		},
		--3 Support
		{
			'XNL0103',	--AA
		},
		--4 Ranged
		{
			'XNL0107',	--Artillery
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
		}
	},
	["Air T1"] =
	{
		--1 Spy
		{
			'XNA0101',	--Spy planes, prob useless in this context
		},
		--2 Fighter
		{
			'XNA0102',	--Interceptors
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
			'XNA0103',	--Bombers
		},
		--8 Gunship
		{
			'XNA0105',									--Gunships
		},

	},
	["Navy T1"] =
	{
		--1 Submarine
		{
			'XNS0203',	--Attack Subs
		},
		--2 Assault
		{
			'XNS0103',	--Frigates
		},
		--3 Support
		{
			'XNS0102',	--Arti
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
			'XNL0202',	--Tanks
			'XNL0203',	--Hover Tanks
		},
		--3 Support
		{
			'XNL0205',	--AA
			'XNL0306',	--EMP
		},
		--4 Ranged
		{
			'XNL0111',	--MML
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
			'XNA0202',	--Fighter
		},
		--3 Support
		{
			'XNA0203',	--Torp Gunship
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
			'XNA0202',	--Bombers
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
			'XNS0201',	--Destroyers
		},
		--3 Support
		{
		},
		--4 Ranged
		{
			'XNS0202', --Cruisers
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
			'XNL0303',	--Bots
			'XNL0305',	--Strong
		},
		--3 Support
		{
			'XNL0302',	--AA
		},
		--4 Ranged
		{
			'XNL0304',	--Arti						
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
			'XNA0302',	--Spy Planes T3
		},
		--2 Fighter
		{
			'XNA0303',	--Fighter
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
			'XNA0304',	--Bombers
		},
		--8 Gunship
		{
			'XNA0305',	--Gunships
		},
	},
	["Navy T3"] =
	{
		--1 Submarine
		{
		},
		--2 Assault
		{
			'XNS0302',	--Battleships
		},
		--3 Support
		{
			'XNS0303',	--Intel and Shield
		},
		--4 Ranged
		{
			'XNS0304',	--Missile Subs
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
			'XNL0402',	--Assault Tank
		},
		--3 Support
		{
		},
		--4 Ranged
		{
			'XNL0403',	--Missile Tank
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
			'XNA0401',	--Air Transport
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