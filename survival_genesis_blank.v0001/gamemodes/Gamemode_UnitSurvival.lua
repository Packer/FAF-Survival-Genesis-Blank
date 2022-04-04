-- Packer's Survival MOD Script
-- Created by Packer
-- All functions are required even if empty

local s_Directory = ScenarioInfo.directory;	--Map Directory
local ScenarioFramework = import('/lua/ScenarioFramework.lua');
local StandardGamemode = import(s_Directory  .. 'gamemodes/Gamemode_Standard.lua');
local ResourceCreation = import(s_Directory .. 'lib/ResourceCreation.lua');
local ArmyToInt = import(s_Directory .. 'lib/ArmyToInt.lua');

Settings = function()
	--Override or force settings here

	if (ScenarioInfo.Options.opt_Survival_FastEco == nil) then
		ScenarioInfo.Options.opt_Survival_FastEco = 0;
	end

	--Additional Mass
	for i, Army in ListArmies() do
		if (ArmyToInt.GetInt(Army) > 0) then

			if (ScenarioInfo.Options.opt_Survival_FastEco ~= nil) then

				--Get ARMY Spawn position
				local POS = Scenario.MasterChain._MASTERCHAIN_.Markers[Army].position;
				
				ResourceCreation.CreateResource("Mass", POS[1] + 2, POS[2], POS[3] + 14);
				ResourceCreation.CreateResource("Mass", POS[1] - 2, POS[2], POS[3] + 14);
				ResourceCreation.CreateResource("Mass", POS[1] + 6, POS[2], POS[3] + 14);
				ResourceCreation.CreateResource("Mass", POS[1] - 6, POS[2], POS[3] + 14);
				
				local blueprints = ResourceCreation.GetResourceBlueprint(Army, ScenarioInfo.Options.opt_Survival_FastEco);

				-- 2nd Power Gen
				if(ScenarioInfo.Options.opt_Survival_FastEco > 1) then
					CreateUnitHPR(blueprints[2], Army, POS[1] + 6, POS[2], POS[3] - 16, 0,0,0);
				end

				CreateUnitHPR(blueprints[3], Army, POS[1] + 2, POS[2], POS[3] + 14, 0,0,0);
				CreateUnitHPR(blueprints[3], Army, POS[1] - 2, POS[2], POS[3] + 14, 0,0,0);
				CreateUnitHPR(blueprints[3], Army, POS[1] + 6, POS[2], POS[3] + 14, 0,0,0);
				CreateUnitHPR(blueprints[3], Army, POS[1] - 6, POS[2], POS[3] + 14, 0,0,0);
			end
		end
	end
end

PlayerRestrictions = function(Army, Mods)

	StandardGamemode.PlayerRestrictions(Army, Mods);

	-- Remove all Defense and reenable Arti
	ScenarioFramework.AddRestriction(Army, categories.DEFENSE);
	ScenarioFramework.RemoveRestriction(Army, categories.ARTILLERY);
	ScenarioFramework.RemoveRestriction(Army, categories.ANTIAIR);
	ScenarioFramework.RemoveRestriction(Army, categories.MISSILE);
	ScenarioFramework.RemoveRestriction(Army, categories.ANTIMISSILE);
	ScenarioFramework.RemoveRestriction(Army, categories.SHIELD);
	ScenarioFramework.RemoveRestriction(Army, categories.TACTICALMISSILEPLATFORM);

	-- Default game PD
	ScenarioFramework.AddRestriction(Army, categories.uab2101);
	ScenarioFramework.AddRestriction(Army, categories.uab2301);
	ScenarioFramework.AddRestriction(Army, categories.uab2305);
	ScenarioFramework.AddRestriction(Army, categories.ueb2101);
	ScenarioFramework.AddRestriction(Army, categories.ueb2301);
	ScenarioFramework.AddRestriction(Army, categories.ueb2305);
	ScenarioFramework.AddRestriction(Army, categories.urb2101);
	ScenarioFramework.AddRestriction(Army, categories.urb2301);
	ScenarioFramework.AddRestriction(Army, categories.urb2305);
	ScenarioFramework.AddRestriction(Army, categories.xeb2306);
	ScenarioFramework.AddRestriction(Army, categories.xsb2101);
	ScenarioFramework.AddRestriction(Army, categories.xsb2301);
	ScenarioFramework.AddRestriction(Army, categories.xsb2305);

	--Total Mayhem PD
	if(Mods[4][1]) then
		ScenarioFramework.AddRestriction(Army, categories.brot2epd);
		ScenarioFramework.AddRestriction(Army, categories.brmt2epd);
		ScenarioFramework.AddRestriction(Army, categories.brnt3perses);
		ScenarioFramework.AddRestriction(Army, categories.brnt3shpd);
		ScenarioFramework.AddRestriction(Army, categories.brot3shpd);
		ScenarioFramework.AddRestriction(Army, categories.brnt1expd);
		ScenarioFramework.AddRestriction(Army, categories.brnt1expdt2);
		ScenarioFramework.AddRestriction(Army, categories.brmt1expd);
		ScenarioFramework.AddRestriction(Army, categories.brmt1expdt2);
		ScenarioFramework.AddRestriction(Army, categories.brmt1pd);
		ScenarioFramework.AddRestriction(Army, categories.brmt1pdt2);
		ScenarioFramework.AddRestriction(Army, categories.brmt2pd);
		ScenarioFramework.AddRestriction(Army, categories.brmt3pd);
		ScenarioFramework.AddRestriction(Army, categories.brnt1hpd);
		ScenarioFramework.AddRestriction(Army, categories.brnt1hpdt2);
		ScenarioFramework.AddRestriction(Army, categories.brnt2epd);
		ScenarioFramework.AddRestriction(Army, categories.brnt2epdt3);
		ScenarioFramework.AddRestriction(Army, categories.brnt2pd2);
		ScenarioFramework.AddRestriction(Army, categories.brnt3perses);
		ScenarioFramework.AddRestriction(Army, categories.brot1expd);
		ScenarioFramework.AddRestriction(Army, categories.brot1hpd);
		ScenarioFramework.AddRestriction(Army, categories.brot2epd);
		ScenarioFramework.AddRestriction(Army, categories.brot3shpd);
		ScenarioFramework.AddRestriction(Army, categories.brpt1expd);
		ScenarioFramework.AddRestriction(Army, categories.brpt1pd);
		ScenarioFramework.AddRestriction(Army, categories.brpt2expd);
		ScenarioFramework.AddRestriction(Army, categories.brpt3pd);

	end
			
	-- Blackops
	if(Mods[5][1]) then
		ScenarioFramework.AddRestriction(Army, categories.bab2306);
		ScenarioFramework.AddRestriction(Army, categories.brb2306);
		ScenarioFramework.AddRestriction(Army, categories.bsb2306);
		ScenarioFramework.AddRestriction(Army, categories.brpt3pd);
		ScenarioFramework.AddRestriction(Army, categories.brpt3pd);
		ScenarioFramework.AddRestriction(Army, categories.bsb0405);
		ScenarioFramework.AddRestriction(Army, categories.bsb0406);
	end
	
	if(Mods[8][1]) then	--Supreme Unit Pack
		ScenarioFramework.AddRestriction(Army, categories.smp0052);  --PD
		ScenarioFramework.AddRestriction(Army, categories.smpa0056);  --PD
	end

	if(Mods[9][1]) then	--Extreme Wars
		ScenarioFramework.AddRestriction(Army, categories.uab2106);  --PD
		ScenarioFramework.AddRestriction(Army, categories.uab2206);  --PD

		ScenarioFramework.AddRestriction(Army, categories.ueb2106);  --PD
		ScenarioFramework.AddRestriction(Army, categories.ueb2206);  --PD

		ScenarioFramework.AddRestriction(Army, categories.urb2106);  --PD
		ScenarioFramework.AddRestriction(Army, categories.urb2206);  --PD

		ScenarioFramework.AddRestriction(Army, categories.xsb2106);  --PD
		ScenarioFramework.AddRestriction(Army, categories.xsb2206);  --PD
		ScenarioFramework.AddRestriction(Army, categories.xsb2306);  --PD


		ScenarioFramework.AddRestriction(Army, categories.urbew0001);  --PD
	end
	
	--Survival Mayhem&BO balance
	if(Mods[10][1]) then	
		ScenarioFramework.AddRestriction(Army, categories.sbrot1hpd);
		ScenarioFramework.AddRestriction(Army, categories.sbrot1hpdu);
		ScenarioFramework.AddRestriction(Army, categories.urb2306);
		ScenarioFramework.AddRestriction(Army, categories.sbab2306);
		ScenarioFramework.AddRestriction(Army, categories.sbrnt2epdt);
		ScenarioFramework.AddRestriction(Army, categories.sbrnt3persesu);
	end
end

BotRestrictions = function(Army, Mods)
	StandardGamemode.BotRestrictions(Army, Mods);
end

GameplayUpdate = function(Wave)
	StandardGamemode.GameplayUpdate(Wave);
end