-- Packer's SpawnACU script
-- Created by Packer
-- Inspired by Survival

local ArmyToInt = import(ScenarioInfo.directory .. 'lib/ArmyToInt.lua');
local ScenarioUtils = import('/lua/sim/ScenarioUtilities.lua');

--Custom ACU Spawn with All Factions as options
SpawnACUs = function(Mods)

	--Setup Armies
	InitializeArmies();
    --ScenarioUtils.InitializeArmies();

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

	--SCTAFix
	if(Mods[23][1]) then
		Commanders = {'MAS0001', 'MAS0001', 'MAS0001', 'MAS0001', 'MAS0001'};
	end
		
	for i, Army in ListArmies() do

		if (ArmyToInt.GetInt(Army) > 0) then 

			FactionID = GetArmyBrain(Army):GetFactionIndex();

			MarkerRef =  Scenario.MasterChain._MASTERCHAIN_.Markers[Army];
			
			if (MarkerRef != nil) then
			
				POS = MarkerRef.position;

				--SCTAFix
				if(Mods[23][1]) then
					POS[3] = POS[3] - 2;
				end

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
					
					--SCTA
					if(Mods[23][1]) then
						CreateUnitHPR('ARMCA', Army, POS[1] + 6, POS[2], POS[3] - 2, 0,0,0);
						CreateUnitHPR('CORCA', Army, POS[1] - 6, POS[2], POS[3] - 2, 0,0,0);
						CreateUnitHPR('ARMCV', Army, POS[1] + 8, POS[2], POS[3] - 2, 0,0,0);
						CreateUnitHPR('CORCV', Army, POS[1] - 8, POS[2], POS[3] - 2, 0,0,0);
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

					--SCTA
					if(Mods[23][1]) then
						CreateUnitHPR('ARMACA', Army, POS[1] + 6, POS[2], POS[3] - 2, 0,0,0);
						CreateUnitHPR('CORACA', Army, POS[1] - 6, POS[2], POS[3] - 2, 0,0,0);
						CreateUnitHPR('ARMACV', Army, POS[1] + 8, POS[2], POS[3] - 2, 0,0,0);
						CreateUnitHPR('CORACV', Army, POS[1] - 8, POS[2], POS[3] - 2, 0,0,0);
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

					--SCTA
					if(Mods[23][1]) then
						CreateUnitHPR('ARMCH', Army, POS[1] + 6, POS[2], POS[3] - 2, 0,0,0);
						CreateUnitHPR('CORCH', Army, POS[1] - 6, POS[2], POS[3] - 2, 0,0,0);
						CreateUnitHPR('ARMCSA', Army, POS[1] + 8, POS[2], POS[3] - 2, 0,0,0);
						CreateUnitHPR('CORCSA', Army, POS[1] - 8, POS[2], POS[3] - 2, 0,0,0);
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

					--SCTA
					if(Mods[23][1]) then
						CreateUnitHPR('ARMDECOM', Army, POS[1] + 6, POS[2], POS[3] - 2, 0,0,0);
						CreateUnitHPR('CORDECOM', Army, POS[1] - 6, POS[2], POS[3] - 2, 0,0,0);
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
				
				--ACU 4 Clones
				if (spawnID == 8) then
				
						PlayerCom[Army] = CreateUnitHPR(Commanders[FactionID], Army, POS[1], POS[2], POS[3] - 2, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
						playerCount = playerCount + 1;
						CreateUnitHPR(Commanders[FactionID], Army, POS[1] + 2, POS[2], POS[3] - 2, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
						CreateUnitHPR(Commanders[FactionID], Army, POS[1] + 4, POS[2], POS[3] - 2, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
						CreateUnitHPR(Commanders[FactionID], Army, POS[1] - 2, POS[2], POS[3] - 2, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
				end
				
				--ACU Clone
				if (spawnID == 9) then
				
						PlayerCom[Army] = CreateUnitHPR(Commanders[FactionID], Army, POS[1], POS[2], POS[3] - 2, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
						playerCount = playerCount + 1;
						CreateUnitHPR(Commanders[FactionID], Army, POS[1] + 2, POS[2], POS[3] - 2, 0,0,0):SetCustomName(GetArmyBrain(Army).Nickname);
				end
				
				--Fatboy and Megalith
				if (spawnID == 7) then

					if (FactionID == 1) then -- uef
						ACU = CreateUnitHPR('UEL0401', Army, POS[1], POS[2], POS[3], 0,3.1,0);
					end
					if (FactionID == 2) then -- aeon
						CreateUnitHPR('UAB0301', Army, POS[1] - 7, POS[2], POS[3] - 3, 0,0,0);
						ACU = CreateUnitHPR('UAL0401', Army, POS[1], POS[2], POS[3] - 10, 0,3.1,0);
					end
					if (FactionID == 3) then -- cybran
						ACU = CreateUnitHPR('XRL0403', Army, POS[1], POS[2], POS[3], 0,3.1,0);
					end
					if (FactionID == 4) then -- seraphim
						CreateUnitHPR('XSB0301', Army, POS[1] - 7, POS[2], POS[3] - 3, 0,0,0);
						ACU = CreateUnitHPR('XSL0401', Army, POS[1], POS[2], POS[3] - 10, 0,0,0);
					end
					if (Mods[2][1] and FactionID == 5) then -- nomads
						CreateUnitHPR('XNB0301', Army, POS[1] - 7, POS[2], POS[3] - 3, 0,3.1,0);
						ACU = CreateUnitHPR('XNL0403', Army, POS[1], POS[2], POS[3] - 10, 0,3.1,0);
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
				if(spawnID ~= 5 and spawnID ~= 6 and spawnID ~= 7 and spawnID ~= 8 and spawnID ~= 9) then
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


--Custom InitializeArmies
function InitializeArmies()
    -- globals to locals
    local GetArmyBrain = GetArmyBrain
    local SetArmyEconomy = SetArmyEconomy
    local SetArmyColor = SetArmyColor
    --local CreateInitialArmyGroup = CreateInitialArmyGroup
    local FindUnitGroup = ScenarioUtils.FindUnitGroup
    local CreatePlatoons = ScenarioUtils.CreatePlatoons
    local CreateWreckageUnit = ScenarioUtils.CreateWreckageUnit
    --local LocalSetAlliance = SetAlliance

    local armySetups = ScenarioInfo.ArmySetup
    local civOpt = ScenarioInfo.Options.CivilianAlliance
    local revealCivilians = ScenarioInfo.Options.RevealCivilians == "Yes"
    local scenarioArmies = Scenario.Armies
    local tblArmy = ListArmies()
    local shouldCreateInitial = ShouldCreateInitialArmyUnits()

    local tblGroups = {}

    for iArmy, strArmy in tblArmy do
        local tblData = scenarioArmies[strArmy]

        tblGroups[strArmy] = {}

        if tblData then
            local setup = armySetups[strArmy]
            local brain = GetArmyBrain(strArmy)

            local econ = tblData.Economy
            SetArmyEconomy(strArmy, econ.mass, econ.energy)

            -- If an actual starting position is defined, overwrite the randomly generated one
            if brain.SkirmishSystems then
                brain:InitializeSkirmishSystems()
            end

            local armyIsCiv = setup.Civilian

            if armyIsCiv and civOpt ~= "neutral" and strArmy ~= "NEUTRAL_CIVILIAN" then -- give enemy civilians darker color
                SetArmyColor(strArmy, 255, 48, 48) -- non-player red color for enemy civs
            end

            --if (not armyIsCiv and shouldCreateInitial) or (armyIsCiv and civOpt ~= "removed") then
            --    local commander = not armyIsCiv
            --    local cdrUnit
            --    tblGroups[strArmy], cdrUnit = CreateInitialArmyGroup(strArmy, commander)
            --    brain.CDR = cdrUnit
            --    if commander and cdrUnit and brain.Nickname then
            --        cdrUnit:SetCustomName(brain.Nickname)
            --    end
            --end

            local wreckageGroup = FindUnitGroup("WRECKAGE", tblData.Units)
            if wreckageGroup then
			    local _, tblResult = CreatePlatoons(strArmy, wreckageGroup)
                for _, unit in tblResult do
                    CreateWreckageUnit(unit)
                end
            end

            ----[ irumsey                                                         ]--
            ----[ Temporary defaults.  Make sure some fighting will break out.    ]--
            for iEnemy, _ in tblArmy do
                -- only do it once for each pair
                if iEnemy >= iArmy then
                    continue
                end
                local state = "Enemy"
                if armyIsCiv then
                    if civOpt == "neutral" or strArmy == "NEUTRAL_CIVILIAN" then
                        state = "Neutral"
                    end

                    if revealCivilians then
                        ForkThread(function(civ, army)
                            WaitSeconds(0.1)

                            local real_state = IsAlly(civ, army) and "Ally" or IsEnemy(civ, army) and "Enemy" or "Neutral"
                            GetArmyBrain(army):SetupArmyIntelTrigger({
                                Category = categories.ALLUNITS,
                                Type = "LOSNow",
                                Value = true,
                                OnceOnly = true,
                                TargetAIBrain = GetArmyBrain(civ),
                                CallbackFunction = function()
                                    SetAlliance(civ, army, real_state)
                                end,
                            })
                            SetAlliance(civ, army, "Ally")
                        end, iArmy, iEnemy)
                    end
                end
                SetAlliance(iArmy, iEnemy, state)
            end
        end
    end

    return tblGroups
end

