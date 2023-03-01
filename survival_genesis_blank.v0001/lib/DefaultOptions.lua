-- Packer's Survival MOD Script
-- Created by Packer

--These are used if the option is missing
SetDefaults = function()

	--Options Settings Defaults
	if (ScenarioInfo.Options.opt_Survival_Gamemode == nil) then
		ScenarioInfo.Options.opt_Survival_Gamemode = "Standard";
	end
	
	if (ScenarioInfo.Options.opt_Survival_EnemyType == nil) then
		ScenarioInfo.Options.opt_Survival_EnemyType = 4;
	end
	
	if (ScenarioInfo.Options.opt_Survival_BuildTime == nil) then
		ScenarioInfo.Options.opt_Survival_BuildTime = 300;
	end

	if (ScenarioInfo.Options.opt_Survival_FastEco == nil) then
		ScenarioInfo.Options.opt_Survival_FastEco = 1;
	end

	if (ScenarioInfo.Options.opt_Survival_DefStructure == nil) then
		ScenarioInfo.Options.opt_Survival_DefStructure = 'URC1901';
	end

	if (ScenarioInfo.Options.opt_Survival_Endless == nil) then
		ScenarioInfo.Options.opt_Survival_Endless = 1;
	end	
	
	if (ScenarioInfo.Options.opt_Survival_AllLanes == nil) then
		ScenarioInfo.Options.opt_Survival_AllLanes = 0;
	end	

	if (ScenarioInfo.Options.opt_Survival_UnitsLoad == nil) then
		ScenarioInfo.Options.opt_Survival_UnitsLoad = 0;
	end

	if (ScenarioInfo.Options.opt_Survival_WaveTable == nil) then
		ScenarioInfo.Options.opt_Survival_WaveTable = "Waves_Base";
	end

	if (ScenarioInfo.Options.opt_Survival_StartWave == nil) then
		ScenarioInfo.Options.opt_Survival_StartWave = 0;
	end

	if (ScenarioInfo.Options.opt_Survival_WaveMultiplier == nil) then
		ScenarioInfo.Options.opt_Survival_WaveMultiplier = 1;
	end

	if (ScenarioInfo.Options.opt_Survival_WaveFrequency == nil) then
		ScenarioInfo.Options.opt_Survival_WaveFrequency = 50;
	end

	if (ScenarioInfo.Options.opt_Survival_Boss == nil) then
		ScenarioInfo.Options.opt_Survival_Boss = 1;
	end
	
	if (ScenarioInfo.Options.opt_Survival_Nuke == nil) then
		ScenarioInfo.Options.opt_Survival_Nuke = 1;
	end
	
	if (ScenarioInfo.Options.opt_Survival_Bases == nil) then
		ScenarioInfo.Options.opt_Survival_Bases = 1;
	end

	if (ScenarioInfo.Options.opt_Survival_SpawnRate == nil) then
		ScenarioInfo.Options.opt_Survival_SpawnRate = 0;
	end

	if (ScenarioInfo.Options.opt_Survival_Restrict == nil) then
		ScenarioInfo.Options.opt_Survival_Restrict = 0;
	end

	if (ScenarioInfo.Options.opt_Survival_AllFactions == nil) then
		ScenarioInfo.Options.opt_Survival_AllFactions = 0;
	end

	if (ScenarioInfo.Options.opt_Survival_Wreckage == nil) then
		ScenarioInfo.Options.opt_Survival_Wreckage = 1;
	end

	if (ScenarioInfo.Options.opt_Survival_Damage == nil) then
		ScenarioInfo.Options.opt_Survival_Damage = 1;
	end	
	
	if (ScenarioInfo.Options.opt_Survival_Health == nil) then
		ScenarioInfo.Options.opt_Survival_Health = 1;
	end

	if (ScenarioInfo.Options.opt_Survival_Scale == nil) then
		ScenarioInfo.Options.opt_Survival_Scale = 1;
	end	
end