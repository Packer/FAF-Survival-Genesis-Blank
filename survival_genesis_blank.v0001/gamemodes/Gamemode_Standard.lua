-- Packer's Survival MOD Script
-- Created by Packer
-- All functions are required even if empty

local ScenarioFramework = import('/lua/ScenarioFramework.lua');
local ParagonCheck = false;

Settings = function()
	--Override or force settings here
end

PlayerRestrictions = function(Army, Mods)

	--Resource Allocaton Units
	ScenarioFramework.AddRestriction(Army, categories.ual0301_RAS);
	ScenarioFramework.AddRestriction(Army, categories.uel0301_RAS);
	ScenarioFramework.AddRestriction(Army, categories.url0301_RAS);


	--ScenarioFramework.RestrictEnhancements({'ResourceAllocation', 'ResourceAllocationAdvanced'});
	ScenarioFramework.AddRestriction(Army, categories.WALL);
	ScenarioFramework.AddRestriction(Army, categories.NUKE);
	ScenarioFramework.AddRestriction(Army, categories.xeb2402);	--Sat
	ScenarioFramework.AddRestriction(Army, categories.xab1401);	--para
	
	--UEF Drones Allowed
	ScenarioFramework.RemoveRestriction(Army, categories.uea0001);
	ScenarioFramework.RemoveRestriction(Army, categories.uea0003);
	ScenarioFramework.RemoveRestriction(Army, categories.xea3204);
	
	--BlackOps FAF: Unleashed
	if(Mods[5][1]) then	
		ScenarioFramework.AddRestriction(Army, categories.baa0401); --Artemis Sat
		ScenarioFramework.AddRestriction(Army, categories.bab2404); --Artemis Sat
	end
	
	if(Mods[7][1]) then	--Marlos
		ScenarioFramework.AddRestriction(Army, categories.krb0205);  --Reclaim Turret, slows game down too much
	end

	if(Mods[2][1]) then	--Nomads
		ScenarioFramework.AddRestriction(Army, categories.xnb302);
		ScenarioFramework.AddRestriction(Army, categories.xnl0301_RAS);
		ScenarioFramework.AddRestriction(Army, categories.xnl0301_NaturalProducer);
		ScenarioFramework.RemoveRestriction(Army, categories.xnl0403);	--Allow Missile Tank
	end
	
	if(Mods[8][1]) then	--Supreme Unit Pack
		ScenarioFramework.AddRestriction(Army, categories.smp0051);  --Literally Crashes the game
		ScenarioFramework.AddRestriction(Army, categories.smp0016);  --Sera T3 Arti, Laggy and OP
		ScenarioFramework.AddRestriction(Army, categories.smp0061);  --Sera T3 Arti, Laggy and OP
		ScenarioFramework.AddRestriction(Army, categories.smp0079);  --Sera T3 Arti, Laggy and OP
	end

	if(Mods[10][1]) then	--Survival Mayhem&BO balance

		--These Turrets REQUIRE Blackops but most people don't know that and it breaks the game
		if(Mods[5][1] == false) then	--BlackOps FAF: Unleashed
		  ScenarioFramework.AddRestriction(Army, categories.surb2306add);
		  ScenarioFramework.AddRestriction(Army, categories.surb2306u);
		  ScenarioFramework.AddRestriction(Army, categories.urb2306);
		end
	end
end

BotRestrictions = function(Army, Mods)
end

GameplayUpdate = function(Wave)
	if(not ParagonCheck and Wave == 20) then
		for i, Army in ListArmies() do
			ScenarioFramework.RemoveRestriction(Army, categories.xab1401);	--para
		end
		PrintText("Aeon Paragon Available", 30, 'ffCBFFFF', 4, 'center')	
		ParagonCheck = true;
	end
end