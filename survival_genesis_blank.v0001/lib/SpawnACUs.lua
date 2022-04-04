-- Packer's SpawnACU script
-- Created by Packer
-- Inspired by Survival

local ArmyToInt = import(ScenarioInfo.directory .. 'lib/ArmyToInt.lua');

--Custom ACU Spawn with All Factions as options
SpawnACUs = function(Mods)

	local spawnID = ScenarioInfo.Options.opt_Survival_AllFactions;
	local count = 0;
	local FactionID = nil;
	local MarkerRef = nil;
	local POS = nil;
	local ACU = nil;
	local PlayerCom = {};
	local playerCount = 0;

	local Commanders = {'UEL0001', 'UAL0001', 'URL0001', 'XSL0001', 'XNL0001'};

	--Black Ops ACUs
	if(Mods[6][1]) then
		Commanders = {'EEL0001', 'EAL0001', 'ERL0001', 'ESL0001', 'XNL0001'};
	end
		
	for i, Army in ListArmies() do

        SetArmyEconomy( Army, Scenario.Armies[Army].Economy.mass, Scenario.Armies[Army].Economy.energy);

		if GetArmyBrain(Army).SkirmishSystems then
		    GetArmyBrain(Army):InitializeSkirmishSystems();
		end

		if (ArmyToInt.GetInt(Army) > 0) then 

			FactionID = GetArmyBrain(Army):GetFactionIndex();

			MarkerRef =  Scenario.MasterChain._MASTERCHAIN_.Markers[Army];
			
			if (MarkerRef != nil) then
			
				POS = MarkerRef.position;

				--T1 Engineers
				if (spawnID == 1) then

					if (FactionID ~= 1) then -- uef
						CreateUnitHPR('UEL0105', Army, POS[1], POS[2], POS[3] - 2, 0,0,0);
					end
					if (FactionID ~= 2) then -- aeon
						CreateUnitHPR('UAL0105', Army, POS[1] - 2, POS[2], POS[3] - 2, 0,0,0);
					end
					if (FactionID ~= 3) then -- cybran
						CreateUnitHPR('URL0105', Army, POS[1] + 2, POS[2], POS[3] - 2, 0,0,0);
					end
					if (FactionID ~= 4) then -- seraphim
						CreateUnitHPR('XSL0105', Army, POS[1] + 4, POS[2], POS[3] - 2, 0,0,0);
					end
					if (Mods[2][1] and FactionID ~= 5) then -- nomads
						CreateUnitHPR('XNL0105', Army, POS[1] - 4, POS[2], POS[3] - 2, 0,0,0);
					end
				end
				
				--T2 Engineers
				if (spawnID == 2) then

					if (FactionID ~= 1) then -- uef
						CreateUnitHPR('UEL0208', Army, POS[1], POS[2], POS[3] - 2, 0,0,0);
					end
					if (FactionID ~= 2) then -- aeon
						CreateUnitHPR('UAL0208', Army, POS[1] - 2, POS[2], POS[3] - 2, 0,0,0);
					end
					if (FactionID ~= 3) then -- cybran
						CreateUnitHPR('URL0208', Army, POS[1] + 2, POS[2], POS[3] - 2, 0,0,0);
					end
					if (FactionID ~= 4) then -- seraphim
						CreateUnitHPR('XSL0208', Army, POS[1] + 4, POS[2], POS[3] - 2, 0,0,0);
					end
					if (Mods[2][1] and FactionID ~= 5) then -- nomads
						CreateUnitHPR('XNL0208', Army, POS[1] - 4, POS[2], POS[3] - 2, 0,0,0);
					end
				end

				--T3 Engineers
				if (spawnID == 3) then

					if (FactionID ~= 1) then -- uef
						CreateUnitHPR('UEL0309', Army, POS[1], POS[2], POS[3] - 2, 0,0,0);
					end
					if (FactionID ~= 2) then -- aeon
						CreateUnitHPR('UAL0309', Army, POS[1] - 2, POS[2], POS[3] - 2, 0,0,0);
					end
					if (FactionID ~= 3) then -- cybran
						CreateUnitHPR('URL0309', Army, POS[1] + 2, POS[2], POS[3] - 2, 0,0,0);
					end
					if (FactionID ~= 4) then -- seraphim
						CreateUnitHPR('XSL0309', Army, POS[1] + 4, POS[2], POS[3] - 2, 0,0,0);
					end
					if (Mods[2][1] and FactionID ~= 5) then -- nomads
						CreateUnitHPR('XNL0309', Army, POS[1] - 4, POS[2], POS[3] - 2, 0,0,0);
					end
				end
				
				--Support Commanders
				if (spawnID == 4) then

					if (FactionID ~= 1) then -- uef
						CreateUnitHPR('UEL0301', Army, POS[1], POS[2], POS[3] - 2, 0,0,0);
					end
					if (FactionID ~= 2) then -- aeon
						CreateUnitHPR('UAL0301', Army, POS[1] - 2, POS[2], POS[3] - 2, 0,0,0);
					end
					if (FactionID ~= 3) then -- cybran
						CreateUnitHPR('URL0301', Army, POS[1] + 2, POS[2], POS[3] - 2, 0,0,0);
					end
					if (FactionID ~= 4) then -- seraphim
						CreateUnitHPR('XSL0301', Army, POS[1] + 4, POS[2], POS[3] - 2, 0,0,0);
					end
					if (Mods[2][1] and FactionID ~= 5) then -- nomads
						CreateUnitHPR('XNL0301', Army, POS[1] - 4, POS[2], POS[3] - 2, 0,0,0);
					end
				end
				
				--ACUs
				if (spawnID == 5) then
				
						PlayerCom[Army] = CreateUnitHPR(Commanders[1], Army, POS[1], POS[2], POS[3] - 2, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
						playerCount = playerCount + 1;
						CreateUnitHPR(Commanders[2], Army, POS[1] + 2, POS[2], POS[3] - 2, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
						CreateUnitHPR(Commanders[3], Army, POS[1] + 4, POS[2], POS[3] - 2, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
						CreateUnitHPR(Commanders[4], Army, POS[1] - 2, POS[2], POS[3] - 2, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);

						if (Mods[2][1]) then
							CreateUnitHPR(Commanders[5], Army, POS[1] - 4, POS[2], POS[3] - 2, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
						end
				end

				--ACUs x2
				if (spawnID == 6) then
					PlayerCom[Army] = CreateUnitHPR(Commanders[1], Army, POS[1] + 0, POS[2], POS[3] - 4, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
					playerCount = playerCount + 1;
					CreateUnitHPR(Commanders[2], Army, POS[1] + 2, POS[2], POS[3] - 4, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
					CreateUnitHPR(Commanders[3], Army, POS[1] + 4, POS[2], POS[3] - 4, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
					CreateUnitHPR(Commanders[4], Army, POS[1] - 2, POS[2], POS[3] - 4, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
					
					CreateUnitHPR(Commanders[1], Army, POS[1] + 0, POS[2], POS[3] - 2, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
					CreateUnitHPR(Commanders[2], Army, POS[1] + 2, POS[2], POS[3] - 2, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
					CreateUnitHPR(Commanders[3], Army, POS[1] + 4, POS[2], POS[3] - 2, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
					CreateUnitHPR(Commanders[4], Army, POS[1] - 2, POS[2], POS[3] - 2, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);

					if (Mods[2][1]) then -- nomads
						CreateUnitHPR(Commanders[5], Army, POS[1] - 4, POS[2], POS[3] - 4, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
						CreateUnitHPR(Commanders[5], Army, POS[1] - 4, POS[2], POS[3] - 2, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
					end
				end
				
				--Fatboy and Megalith
				if (spawnID == 7) then

					if (FactionID == 1) then -- uef
						ACU = CreateUnitHPR('UEL0401', Army, POS[1], POS[2], POS[3] - 17, 0,0,0);
					end
					if (FactionID == 2) then -- aeon
						ACU = CreateUnitHPR('UAB0301', Army, POS[1], POS[2], POS[3] - 17, 0,0,0);
						CreateUnitHPR('UAL0401', Army, POS[1], POS[2], POS[3] - 10, 0,0,0);
					end
					if (FactionID == 3) then -- cybran
						ACU = CreateUnitHPR('XRL0403', Army, POS[1], POS[2], POS[3] - 17, 0,0,0);
					end
					if (FactionID == 4) then -- seraphim
						ACU = CreateUnitHPR('XSB0301', Army, POS[1], POS[2], POS[3] - 17, 0,0,0);
						CreateUnitHPR('XSL0401', Army, POS[1], POS[2], POS[3] - 10, 0,0,0);
					end
					if (Mods[2][1] and FactionID == 5) then -- nomads
						ACU = CreateUnitHPR('XNB0301', Army, POS[1], POS[2], POS[3] - 10, 0,0,0);
						CreateUnitHPR('XNL0403', Army, POS[1], POS[2], POS[3] - 10, 0,0,0);
					end

					ACU:SetProductionPerSecondMass(8);
					ACU:SetProductionPerSecondEnergy(200);
					GetArmyBrain(Army):GiveStorage('Mass', 1000);
					GetArmyBrain(Army):GiveStorage('Energy', 1800);
					ACU:SetCustomName(GetArmyBrain(Army).Nickname);
					PlayerCom[Army] = ACU;
					playerCount = playerCount + 1;
				end
				
				
				--Spawn Faction ACU
				if(spawnID ~= 5 and spawnID ~= 6 and spawnID ~= 7) then
					if (FactionID == 1) then -- uef
						ACU = CreateUnitHPR(Commanders[1], Army, POS[1], POS[2], POS[3], 0,0,0);
					elseif (FactionID == 2) then -- aeon
						ACU = CreateUnitHPR(Commanders[2], Army, POS[1], POS[2], POS[3], 0,0,0);
					elseif (FactionID == 3) then -- cybran
						ACU = CreateUnitHPR(Commanders[3], Army, POS[1], POS[2], POS[3], 0,0,0);
					elseif (FactionID == 4) then -- seraphim
						ACU = CreateUnitHPR(Commanders[4], Army, POS[1], POS[2], POS[3], 0,0,0);
					elseif (FactionID == 5) then -- nomads
						ACU = CreateUnitHPR(Commanders[5], Army, POS[1], POS[2], POS[3], 0,0,0);
					end
					--Custom Settings
					ACU:SetCustomName(GetArmyBrain(Army).Nickname);
					PlayerCom[Army] = ACU;
					playerCount = playerCount + 1;
				end
			end
		end
	end

	PlayerCom["PlayerCount"] = playerCount;
	return PlayerCom;
end