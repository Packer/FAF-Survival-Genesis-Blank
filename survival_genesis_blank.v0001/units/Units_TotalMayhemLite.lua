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
      'W93AL1DT', 'W93CL1SM','W93SL1RB','W93UL1AT',   
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
		 'W93CL1E1', 'W93SL1E1', 'W93UL1E1', 
		},
	},
	["Air T1"] =
	{
		--1 Spy
		{
		},
		--2 Fighter
		{
      'W93UA1FB', 
		},
		--3 Support
		{
      'W93AA1TB', 
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
      'W93UA1FB', 
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
      'W93CS1C', 
		},
		--3 Support
		{
		},
		--4 Ranged
		{
      'W93US1ART', 
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
      'W93SL2RT', 
		},
		--2 Assault
		{
      'W93SL2TB', 
		},
		--3 Support
		{
		},
		--4 Ranged
		{
      'W93AL2ART', 'W93SL2EART',
		},
		--5 Custom	
		{
		},
		--6 Experimental	
		{
      'W93AL2E1','W93CL2E1','W93SL2E1','W93SL2E2','W93UL2E1',     
		},
	},
	["Air T2"] =
	{
		--1 Spy
		{
      'W93SA2SC', 
		},
		--2 Fighter
		{
      'W93CA2CF', 'W93uA2MB', 
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
      'W93AA2E1','W93CA2E1',  
		},
		--7 Bomber
		{
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
      'W93AL2HT', 
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
      'W93US2E1', 
		},
	},
	["Land T3"] =
	{
		--1 Scout 
		{
      'W93CL3RT', 
		},
		--2 Assault
		{
      'W93AL3ST','W93SL3AB',  
		},
		--3 Support
		{
      'W93AL3PD','W93CL3PD','W93SL3PD','W93UL3PD',    
		},
		--4 Ranged
		{		
      'W93CL3ML', 'W93UL3AS', 
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
      'W93CA3SI', 
		},
		--3 Support
		{
      'W93SA3SP', 
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
      'W93SA3HG', 
		},
	},
	["Navy T3"] =
	{
		--1 Submarine
		{
		},
		--2 Assault
		{
      'W93CS3BC', 
		},
		--3 Support
		{
      'W93SS3SS', 
		},
		--4 Ranged
		{
		},
		--5 Custom
		{
		},
		--6 Experimental
		{
      'W93US3NT', 
		},
	},
	["Land T4"] = 
	{
		--1 Scout 
		{
		},
		--2 Assault
		{ 
      'W93AL4E1', 'W93AL4E2', 'W93SL4E1','W93UL4E1',  
		},
		--3 Support
		{
      'W93CL4E1', 'W93CL4E2', 'W93SL4E2', 
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
      'W93UA4E1', 
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