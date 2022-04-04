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
end

BotRestrictions = function(Army, Mods)
	StandardGamemode.BotRestrictions(Army, Mods);
end

GameplayUpdate = function(Wave)
end