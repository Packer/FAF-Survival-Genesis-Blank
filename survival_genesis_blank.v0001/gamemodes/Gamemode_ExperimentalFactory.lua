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
	ScenarioInfo.Options.opt_Survival_WaveTable = "Waves_ExperimentalFactory";
	
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
					--Power
					CreateUnitHPR(blueprints[2], Army, POS[1] + 6, POS[2], POS[3] - 16, 0,0,0);

					--Mass
					CreateUnitHPR(blueprints[3], Army, POS[1] + 2, POS[2], POS[3] + 14, 0,0,0);
					CreateUnitHPR(blueprints[3], Army, POS[1] - 2, POS[2], POS[3] + 14, 0,0,0);
					CreateUnitHPR(blueprints[3], Army, POS[1] + 6, POS[2], POS[3] + 14, 0,0,0);
					CreateUnitHPR(blueprints[3], Army, POS[1] - 6, POS[2], POS[3] + 14, 0,0,0);
				end
			end
		end
	end
end

PlayerRestrictions = function(Army, Mods)

	StandardGamemode.PlayerRestrictions(Army, Mods);

	--Banned Units
	ScenarioFramework.AddRestriction(Army, categories.ura0304); -- no superbomber
	ScenarioFramework.AddRestriction(Army, categories.uea0304); -- no superbomber
	ScenarioFramework.AddRestriction(Army, categories.uaa0304); -- no superbomber
	ScenarioFramework.AddRestriction(Army, categories.xsa0304); -- no superbomber
	ScenarioFramework.AddRestriction(Army, categories.xra0305); -- no T3 gunships
	ScenarioFramework.AddRestriction(Army, categories.uea0305); -- no T3 gunships
	ScenarioFramework.AddRestriction(Army, categories.xaa0305); -- no T3 gunships
	ScenarioFramework.AddRestriction(Army, categories.uaa0314); -- no expAir
	ScenarioFramework.AddRestriction(Army, categories.ura0401); -- no expAir
	ScenarioFramework.AddRestriction(Army, categories.xsa0402); -- no expAir
	ScenarioFramework.AddRestriction(Army, categories.uaa0310); -- no expAir
	ScenarioFramework.AddRestriction(Army, categories.xab1401); -- no Paragon
	ScenarioFramework.AddRestriction(Army, categories.xsb2406); -- no supernuke

	if(Mods[3][1]) then	--BrewLAN
		ScenarioFramework.AddRestriction(Army, categories.sea0401); -- no expAir
		ScenarioFramework.AddRestriction(Army, categories.sal0401); -- op Siege Tank
	end

	if(Mods[4][1]) then	--Total Mayhem
		ScenarioFramework.AddRestriction(Army, categories.broat3pride); -- no expAir
	end

end

BotRestrictions = function(Army, Mods)
	StandardGamemode.BotRestrictions(Army, Mods);
end

GameplayUpdate = function(Wave)
	StandardGamemode.GameplayUpdate(Wave);
end