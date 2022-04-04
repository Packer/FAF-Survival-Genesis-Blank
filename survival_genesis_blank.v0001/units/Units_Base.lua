-- Packer's Survival Genesis Table Script
-- Base Game

--Table is broken down into Tiers then categories then spawn groups
--Each group is spawned at different ratios depending on their type and power
local s_UnitTable = 
{
	["Land T1"] = 
	{
		--1 Scout
		{
			'UEL0101', 'URL0101', 'UAL0101', 'XSL0101',	--Scouts
		},
		--2 Assault
		{
			'UEL0106','URL0106','UAL0106',				--Light Bots
			'UEL0201','URL0107','UAL0201','XSL0201',	--Tanks
		},
		--3 Support
		{
			'UEL0104','URL0104','UAL0104','XSL0104',	--AA
		},
		--4 Ranged
		{
			'UEL0103','URL0103','UAL0103','XSL0103',	--Artillery
		},
		--Mod Custom Units -- That dont fit in the other categories
		--5 Custom
		{
		
		},
		--Mod Exp Units that are above all other
		--6 Experimental
		{
		
		}
	},
	["Air T1"] =
	{
		--1 Spy
		{
			'UEA0101', 'URA0101', 'UAA0101', 'XSA0101',	--Spy planes, prob useless in this context
		},
		--2 Fighter
		{
			'UEA0102', 'URA0102', 'UAA0102', 'XSA0102',	--Interceptors
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
			'UEA0103', 'URA0103', 'UAA0103', 'XSA0103',	--Bombers
		},
		--8 Gunship
		{
			'XRA0105',									--Gunships
		},

	},
	["Navy T1"] =
	{
		--1 Submarine
		{
			'UES0203','URS0203','UAS0203','XSS0203',	--Attack Subs
		},
		--2 Assault
		{
			'UES0103','URS0103','UAS0103','XSS0103',	--Frigates
		},
		--3 Support
		{
			'UAS0102',									--AA
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
			'DEL0204', 'DRL0204',						          --Bots
			'UEL0202','URL0202','UAL0202', 'XSL0202',	--Tanks
			'URL0203','XAL0203', 'XSL0203',				    --Hover Tanks
		},
		--3 Support
		{
			'UEL0205','URL0205','UAL0205','XSL0205',	--AA
			'UEL0307', 'URL0306','UAL0307',				    --Shields/Stealth
			'XRL0302',									              --Bomb
		},
		--4 Ranged
		{
			'UEL0111','URL0111','UAL0111','XSL0111',	--MML
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
			'DEA0202', 'DRA0202', 'XAA0202', 'XSA0202',	--Fighter
		},
		--3 Support
		{
			'UEA0204', 'URA0204', 'UAA0204','XSA0204',	--Torp Bombers
			'DAA0206',									                -- Missile
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
			'DEA0202', 'DRA0202','XSA0202',	--Bombers
		},
		--8 Gunship
		{
			'UEA0203', 'URA0203', 'UAA0203', 'XSA0203', --Gunships
		},

	},
	["Navy T2"] =
	{
		--1 Submarine
		{
			'XRS0204', 'XAS0204', --Attack Subs
		},
		--2 Assault
		{
			'UES0201','URS0201','UAS0201','XSS0201',	--Destroyers
			'XES0102',									--Torp Boat
		},
		--3 Support
		{
			'XES0205', 'XRS0205',						--Intel and Shield
		},
		--4 Ranged
		{
			'UES0202', 'URS0202', 'UAS0202', 'XSS0202', --Cruisers
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
			'UEL0303', 'URL0303', 'UAL0303','XSL0303',	--Bots
			'XEL0305', 'XRL0305', 'XAL0305', 'XSL0305',	--Strong
			'DSLK004',
		},
		--3 Support
		{
			'DELK002','DRLK001','DALK003','XSL0205',	--AA
			'XSL0307',									--Shield
		},
		--4 Ranged
		{
			'UEL0304','URL0304','UAL0304','XSL0304',	--Arti
			'XEL0306', 'DAL0310',						--MML
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
			'UEA0302','URA0302','UAA0302','XSA0302',	  --Spy Planes T3
		},
		--2 Fighter
		{
			'UEA0303', 'URA0303', 'UAA0303', 'XSA0303',	--Fighter
		},
		--3 Support
		{
			'XAA0306',									                --Torp Bombers
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
			'UEA0304', 'URA0304','UAA0304','XSA0304',	  --Bombers
		},
		--8 Gunship
		{
			'UEA0305', 'XRA0305', 'XAA0305',			--Gunships
		},
	},
	["Navy T3"] =
	{
		--1 Submarine
		{
		},
		--2 Assault
		{
			'UES0302','URS0302','UAS0302','XSS0302',	--Battleships
			'XES0102',									--Torp Boat
		},
		--3 Support
		{
			'URS0303', 'UAS0303', 'XSS0303',						--Intel and Shield
		},
		--4 Ranged
		{
			'XES0307', 'XAS0306', --Missile
			'UES0304','URS0304','UAS0304', 'XSS0304',	--Missile Subs
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
		{},
		--2 Assault
		{
			'UAL0401',	--Colossus
			'XSL0401',	--Ythotha
		},
		--3 Support
		{
			'URL0402',	--Spider
		},
		--4 Ranged
		{
			'UEL0401',	--Fatboy
			'XRL0403',	--Megabot
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
			'XSA0402',	--Ahwassa
			'UAA0310',	--CZAR
		},
		--8 Gunship
		{
			'URA0401',	--Soul Ripper
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
			'UES0401',	--Atlantis
		},
		--4 Ranged
		{
			'UAS0401',	--Tempest
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