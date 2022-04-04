-- Packer's Survival Genesis Table Script
-- Total Mayhem support

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
			'brnt1mtt3', 'brnt1mtt2', 'brnt1mt', 'brnt1ht', 'brnt1htt2', 'brnt1htt3', 'brnt1bt', 'brnt1btt2', --UEF
			'brot1btt2a','brot1btt3', 'brot1lt','brot1mt', 'brot1mtt2', 'brot1mtt3',	--AEON
			'brmt1at', 'brmt1bt', 'brmt1btt2', 'brmt1btt3', 'brmt1ht', 'brmt1mt', 'brmt1bm', 'brmt1bm2', --Cybran
			'brpt1asta', 'brpt1bt', 'brpt1exm1', 'brpt1ht', 'brpt1htt3',	--Seph
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
			'brnt1advbot', 'brnt1exm1', 'brnt1exmob', 'brnt1extk',			--UEF
			'brot1bt', 'brot1btt2', 'brot1exm1', 'brot1exm2', 'brot1exmobart', 'brot1extank', --Aeon
			'brmt1advbot', 'brmt1beetle', 'brmt1exm1', 'brmt1extank',		--Cybran
			'brpt1btbot', 'brpt1expbot', 'brpt1extank2'						--Seph
		},
	},
	["Air T1"] =
	{
		--1 Spy
		{
		},
		--2 Fighter
		{
			'brnat1intc', 'broat1fig', 'broat1intc', 'brmat1advfig', 'brmat1intc',
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
			'brpat1advbomb',
			'brnat1exgs', 'brmat1exgs', 'broat1exgs', 'brpat1exgunship',	--Gunships
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
			'brnst1battleship', 'brost1battleship', 'brost1destr', 'brmst1battlecruiser', 'brmst1destr'
		},
		--3 Support
		{
		},
		--4 Ranged
		{
			'brnst1artillery'
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
			'brmt2bm', 'brnt2ht', 'brnt2htt3',				--UEF
			'brot2ht', 'brot2mt',							--Aeon
			'brmt2bm', 'brmt2ht', 'brmt2htt3', 'brmt2st',	--Cybran
			'brpt2btbot',									--Seph
		},
		--3 Support
		{
		},
		--4 Ranged
		{
			'brnt2potshot',
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
			'brnt2bm',  'brnt2exlm',   'brnt2exm2', 'brnt2exmdf', 'brnt2sniper',	--UEF
			'brot2asb', 'brot2exbm', 'brot2exm2',  'brot2exth',									--AEON
			'brmt2abt',	'brmt2abtt3','brmt2beetle','brmt2medm','brmt2wildcat',					--Cybran
			'brpt2exbot', 'brpt2hvbot',															--Seph
			--'brnt2exm1', error
		},
	},
	["Air T2"] =
	{
		--1 Spy
		{
		},
		--2 Fighter
		{
			'brnat2fighter', 'broat2fibo', 'brmat2fig1', 'brpat2figbo',
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
			'broat2fibo'
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
			'brnst2advbattleship', 'brost2advbattleship',
		},
	},
	["Land T3"] =
	{
		--1 Scout 
		{
		},
		--2 Assault
		{
			'brnt3abb', 'brnt3bt', 'brnt3ht',				--UEF
			'brot3abb', 'brot3bt','brot3bt2', 'brot3hm',	--Aeon
			'brmt3bm2mk2', 'brmt3bt', 'brmt3ht', 'brmt3lzt', 'brmt3rap',	--Cybran
			'brpt3bt',										--Seph
		},
		--3 Support
		{
			'brmt3aa', 'brnt3aa', 'brot3aa'	--AA
		},
		--4 Ranged
		{		
			'brnt3ml','brot3ml', 'brmt3ml', 'brpt3ml',  
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
			'brnt3advbtbot', 'brnt3ow',		--UEF
			'brot3exm1',					--AEON
			'brmt3advbtbot', 'brmt3garg',	--Cybran
		},
	},
	["Air T3"] =
	{
		--1 Spy
		{
		},
		--2 Fighter
		{
			'brmat3asup', 'brnat3airsup', 'broat3asup',
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
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
			'brost3bship'
		},
	},
	["Land T4"] = 
	{
		--1 Scout 
		{
		},
		--2 Assault
		{ 
			'brnt3argus', 'brnt3blasp', 'brnt3shbm',								--UEF
			'brot3btbot', 'brot3coug', 'brot3ham', 'brot3ncm', 'brot3ncm2', 'brot3shbm', --AEON
			'brmt3exbm', 'brmt3mcm', 'brmt3mcm2', 'brmt3mcm4', 'brmt3vul',			--Cybran
			'brpt3shbm',															--Seph
		},
		--3 Support
		{
			--'brmt3cloaker',	--T4 Cloak unit just simply lags too much
		},
		--4 Ranged
		{
			'brnt3bat', 'brnt3doomsday',	--UEF
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
			'brnt3shbm2',				--UEF
			'brot3hades',				--Aeon
			'brmt3ava', 'brmt3snake',	--Cybran
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
			'broat3pride'
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