-- Packer's Survival Map Script
-- Created by Packer
-- Inspired by Survival

-- Import Functionality
--------------------------------------------------------------------------
local s_Directory = ScenarioInfo.directory;	--Map Directory
local ScenarioUtils = import('/lua/sim/ScenarioUtilities.lua');
local ScenarioFramework = import('/lua/ScenarioFramework.lua');
local Utilities = import('/lua/utilities.lua');
local ArmyToInt = import(s_Directory .. 'lib/ArmyToInt.lua');
local ResourceCreation = import(s_Directory .. 'lib/ResourceCreation.lua');
local UnitMods = import(s_Directory .. 'lib/T4UnitMods.lua');
local Nuke = import(s_Directory .. 'lib/Nuke.lua');
--------------------------------------------------------------------------
--Editable - Easily accessible values to change the Dynamic of the map
--------------------------------------------------------------------------
local s_BossPerPlayer = false;		--true = bosses spawn per player, false = Only one of each boss will spawn.
local s_SpawnRadius = 5;			--How far can enemies spawn from their marker, keep low to stop outside spawning (5 Default).
local s_BossSpawnRadius = 10;		--How far can Bosses spawn from their marker, keep low to stop outside spawning (10 Default).
local s_WaypointRadius = 5;			--Random position around Waypoints to stop clogging
local s_Assassination = false;		--Does killing the player's ACU cause them to be defeated?
local s_WaveBalance = true;			--If more than 1 category (Land,Air,Navy) is enabled, spawn the reduced ratio of units. If Disabled, spawn 100% of units on table
local s_EnemyBaseVictory = true;	--If true, when the enemy bases are destroyed the players win, even before the waves have ended.

--------------------------------------------------------------------------
-- Mass
local s_AutoResources = true;	--If true the resources table below will be used, if false a manual import is needed
-- 1 = Mass, 0 = Empty, {0} = Space
local s_MassResources =
{
	{0,1,0,1,0},
	{0},
	{1,0,1,0,1,0,1},
	{0},
	{1,0,1,0,1,0,1},
}
-- 1 = Hydro, 0 = Empty
local s_HydroResources =
{
	{1,0,1},
	{0,1,0},
}

-- Debug - For Testing purposes only
local s_DebugMode = false;	--Makes the Defense Objective on the enemy team and spawns one of every single unit on the unit table

--------------------------------------------------------------------------
--Messages
--------------------------------------------------------------------------
--A place to put version update infomation
local s_VersionMessages = 
{
	"| * This is an example of your version message!",
	"| * Added: New Version messages at the top of the script for easy access!",
	--Add as many lines as you need for your new version
}

local s_InstructionMessage = 
{
	"|         Build your defenses and protect the defense structure.",
	"|         More Example text can go here to explain additional infomation"
}

local s_TitleCredits =
{
	"Created By YOUR NAME HERE",
}

local s_EndMessage =
{
	"You have won!",	--Victory Message
	"You have lost!",	--Loss Message
	"The enemy structures have been destroyed,",	--Enemy Base Destruction Victory Message
	"The defense structure has been destroyed.",	--When the defense structure is destroyed
	"The defense structure was destroyed, but the waves were defeated!",	--When the defense structure is destroyed during endless waves
}
--------------------------------------------------------------------------
-- Gamemodes
--------------------------------------------------------------------------
local s_Gamemodes = 
{
	["Standard"] = 'Gamemode_Standard.lua',
	["RNG"] = 'Gamemode_RNG.lua',
}

-- Mod Support
local s_Mods = 
{
	{true,  "Base", 'Units_Base.lua'},											--1
	{false, "Nomads", 'Units_Nomads.lua'},										--2
	{false, "BrewLAN", 'Units_BrewLAN.lua'},									--3
	{false, "Total Mayhem", 'Units_TotalMayhem.lua'},							--4
	{false, "BlackOps FAF: Unleashed", 'Units_BlackOps.lua'},					--5
	{false, "BlackOps FAF: ACUs", nil},											--6
	{false, "Marlo's mod Compilation", 'Units_Marlo.lua'},						--7
	{false, "SupremeUnitPackV6Official", 'Units_SupremeUnit.lua'},				--8
	{false, "Extreme Wars", 'Units_ExtremeWars.lua'},							--9
	{false, "Survival Mayhem&BO balance", 'Units_SurvivalMayhemBO.lua'},		--10
	{false, "Total Mayhem Lite", 'Units_TotalMayhemLite.lua'},					--11
	{false, "Wyvern Unit Battle Pack", 'Units_Wyvern.lua'},						--12
	{false, "Orbital Wars", 'Units_OrbitalWars.lua'},							--13
	{false, "GGA Cybran T4 Crusher", 'Units_GGA.lua'},							--14
	{false, "Research & Daiquiris", 'Units_BrewLAN_RnD.lua'},					--15
	{false, "New SupCom  Annihilation", 'Units_BrewLAN_RnD.lua'},				--16
	{false, "BlackOps FAF: EXUnits", 'Units_BlackOpsEXUnits.lua'},				--17
	{false, "Antares Unit Pack (Preservation)", 'Units_AntaresUnitPack.lua'},	--18	
	{false, "(F.B.P.) Future Battlefield Pack: Legends", 'Units_FBPL.lua'},		--19	
	{false, "Experimentals Wars", 'Units_ExperimentalsWars.lua'},				--20	
	{false, "Annihilation New SupCom", 'Units_AnnihilationSupCom.lua'},			--21		
	{false, "SCTABalance", 'Units_SCTABalance.lua'},							--22		
	{false, "SCTAFix", 'Units_SCTAFix.lua'},									--23	
	{false, "Hyper Experimental Tier", 'Units_HyperET.lua'},					--24
}

--------------------------------------------------------------------------
--Editable - end
--------------------------------------------------------------------------
local s_GamemodeSettings = nil;
local DebugTools = nil;		--Only imports when we DebugMode is enabled, this will spawn EVERY SINGLE UNIT on every mod Table

local s_UnitTables =	--Table of all Spawnable Units, dont modify
{
	["Land T1"] =	{ {}, {}, {}, {}, {}, {}  },			--1 Scout	  / 2 Assault / 3 Support / 4 Ranged / 5 Custom  / 6 Experimental
	["Air T1"] =	{ {}, {}, {}, {}, {}, {}, {}, {}, },	--1 Spy		  / 2 Fighter / 3 Support / 4 Ranged / 5 Custom  / 6 Experimental / 7 Bomber / 8 Gunship
	["Navy T1"] =	{ {}, {}, {}, {}, {}, {}, },			--1 Submarine / 2 Assault / 3 Support / 4 Ranged / 5 Custom  / 6 Experimental
	["Land T2"] =	{ {}, {}, {}, {}, {}, {}, },			--vvv Same as T1
	["Air T2"] =	{ {}, {}, {}, {}, {}, {}, {}, {}, },
	["Navy T2"] =	{ {}, {}, {}, {}, {}, {}, },
	["Land T3"] =	{ {}, {}, {}, {}, {}, {}, },
	["Air T3"] =	{ {}, {}, {}, {}, {}, {}, {}, {}, },
	["Navy T3"] =	{ {}, {}, {}, {}, {}, {}, },
	["Land T4"] = 	{ {}, {}, {}, {}, {}, {}, },
	["Air T4"] = 	{ {}, {}, {}, {}, {}, {}, {}, {}, },
	["Navy T4"] =	{ {}, {}, {}, {}, {}, {}, },
};

local s_EndlessWave =	--Used to track endless wave, dont modify
{
	{
		["Land T1"] =	{ 0, 0, 0, 0, 0, 0, },			--1 Scout	  / 2 Assault / 3 Support / 4 Ranged / 5 Custom  / 6 Experimental
		["Air T1"] =	{ 0, 0, 0, 0, 0, 0, 0, 0, },	--1 Spy		  / 2 Fighter / 3 Support / 4 Ranged / 5 Custom  / 6 Experimental / 7 Bomber / 8 Gunship
		["Navy T1"] =	{ 0, 0, 0, 0, 0, 0, },			--1 Submarine / 2 Assault / 3 Support / 4 Ranged / 5 Custom  / 6 Experimental
		["Land T2"] =	{ 0, 0, 0, 0, 0, 0, },			--vvv Same as T1
		["Air T2"] =	{ 0, 0, 0, 0, 0, 0, 0, 0, },
		["Navy T2"] =	{ 0, 0, 0, 0, 0, 0, },
		["Land T3"] =	{ 0, 0, 0, 0, 0, 0, },
		["Air T3"] =	{ 0, 0, 0, 0, 0, 0, 0, 0, },
		["Navy T3"] =	{ 0, 0, 0, 0, 0, 0, },
		["Land T4"] = 	{ 0, 0, 0, 0, 0, 0, },
		["Air T4"] = 	{ 0, 0, 0, 0, 0, 0, 0, 0, },
		["Navy T4"] =	{ 0, 0, 0, 0, 0, 0, },
	}
};

-- Enemy Data - Automatic
local s_TableFile = nil;
local s_WavesTable = nil;				--The data for selecting units to be spawned
local s_EndlessTable = nil;
local s_NukeLaunchers = {};
local s_NukeMarkers = {};
local s_EnemyBases = {};
local s_EnemyBaseMarkers = {};
local s_EnemyBasesSpawned = false;
--------------------------------------------------------------------------

-- Variables - Automatic
local s_Tick = 1;			--Update Rate, Higher values reduce lag
local s_WaveTick = 1;		--How often does the wave tick trigger, should always be 1 sec unless certain circumstances
local s_GameStage = 0;		--0 Build Time, 1 Gameplay, 2 Endless, 3 Player Win, 4 Player Loss
local s_PlayerCount = 0;	--How many slots filled
--------------------------------------------------------------------------

-- Game Settings - Automatic
local s_Wave = 0;			--Current Wave
local s_WaveEndless = 1;	--Current Endless Wave
local s_WaveTotalCount = 0;	--Current Wave
local s_TotalWaves = 24;	--Dynamic Wave Count
local s_NextSpawnTime = 0;	--Time index when next wave spawns
local s_CurrentTime = 0;	--Current Time
local s_GameTimeTotal = 60;	--TotalWaves * WaveTime + 60 + BuildTime - Total Game Time
local s_WarnTime = 90;		--When the warning message will show
local s_LandEnabled = false;
local s_AirEnabled = false;
local s_NavyEnabled = false;
--------------------------------------------------------------------------

-- Enemy Setup - Automatic
local s_AttackObjectiveMarkers = {};	--Enemy base spawn Positions
local s_DamageScale = 0.04;				--Damage Increase Per Wave
local s_HealthScale = 0.04;				--Health Increase Per Wave
local s_SpeedScale = 0.004;				--Speed Increase Per Wave
--------------------------------------------------------------------------

local s_PathsIndex = 
{
	["LAND"] = 0, ["AIR"] = 0, ["NAVY"] = 0, ["LANDBOSS"] = 0, ["AIRBOSS"] = 0, ["NAVYBOSS"] = 0, ["ENEMY"] = 0,
}
local s_MoveMarkers = --TYPE / PATHS / Path POINTS
{
	["LAND"] = 
	{	--PATHS
		["SPAWN"] = {},	--Spawn positions for Paths
		{}, --1 Path POINTS
		{}, --2 Path POINTS etc
	},
	["AIR"] = { {}, {}, },
	["NAVY"] = { {}, {}, },
	["LANDBOSS"] = { {}, {}, },
	["AIRBOSS"] = { {}, {}, },
	["NAVYBOSS"] = { {}, {}, },
	["ENEMY"] = { {}, {}, },
}

-- Wave Data - Automatic
--------------------------------------------------------------------------
local s_WaveActive = false;

-- Tracking
local s_DefenseObjectiveUnit = nil;
local s_DefenseHP = 1;
local s_DefenseHPLast = 1;
local s_PlayerACUs = {};

-- Score
local s_ScoreModifier = 1;
local s_ScoreTotal = 0;
--------------------------------------------------------------------------

--Pregame Setup
function OnPopulate()
	LOG("----- Survival MODE: OnPopulate()");
		
	--Settings Check
	SetupSettings();

	--Spawn Resources
	CreateResources();
	
	--Spawn ACU Units
	s_PlayerACUs = import(s_Directory .. 'lib/SpawnACUs.lua').SpawnACUs(s_Mods);
	s_PlayerCount = s_PlayerACUs["PlayerCount"];
	--ACU Assassination
	--SetupACUs();

	--Spawn Defense Objective
	SpawnDefenseObjective();

	--Setup Markers
	SetupMarkers();

	--Setup Game
	SetupGame();

end

--Called at Start of Game
function OnStart(self)
	LOG("----- Survival MODE: OnStart");

	--Debug Tools
	if(s_DebugMode) then
		DebugGame();
	end

	--Game Loop
	ForkThread(GameUpdate);

end

SetupGame = function()
	LOG("----- Survival MODE: Setup Game");

	--Sandbox for our own Gamemode
	ScenarioInfo.Options.Victory = 'sandbox';

	-- Setup Alliances and Restrictions
	SetAlliance("ARMY_SURVIVAL_ALLY", "ARMY_SURVIVAL_ENEMY", 'Enemy');
	SetIgnoreArmyUnitCap('ARMY_SURVIVAL_ENEMY', true);
	SetArmyColor('ARMY_SURVIVAL_ENEMY', 72, 32, 48); --Old Color 48, 32, 48

	--Restrictions();

	for i, Army in ListArmies() do

		-- Player Army Check
		if (ArmyToInt.GetInt(Army) > 0) then 

			--Setup Alliances
			SetAlliance(Army, "ARMY_SURVIVAL_ALLY", 'Ally');	--Survival ALLY
			SetAlliance(Army, "ARMY_SURVIVAL_ENEMY", 'Enemy');  --Survival ENEMY

			--Set all players as Alliance
			for x, ArmyX in ListArmies() do
				-- Player Army Check
				if (ArmyToInt.GetInt(ArmyX) > 0) then 
					SetAlliance(Army, ArmyX, 'Ally'); 
				end
			end
		end
	end
end

Restrictions = function()
	LOG("----- Survival MODE: Restrictions");

	for i, Army in ListArmies() do
		-- Player Army Check
		if (ArmyToInt.GetInt(Army) > 0) then 
		
			if(ScenarioInfo.Options.opt_Survival_Restrict == 0) then
				--Restrictions (LAND and AIR is always enabled)
				if(s_NavyEnabled == false) then
					ScenarioFramework.AddRestriction(Army, categories.NAVAL);
					ScenarioFramework.RemoveRestriction(Army, categories.DEFENSE);
				end
				--Gamemode Restrictions override
				s_GamemodeSettings.PlayerRestrictions(Army, s_Mods);
			end

			--Nukes enabled, let defenders build anti nukes
			if(ScenarioInfo.Options.opt_Survival_Nuke == true) then
				ScenarioFramework.RemoveRestriction(Army, categories.ANTIMISSILE);
			end
		else
			s_GamemodeSettings.BotRestrictions(Army, s_Mods);
		end
	end
end

SetGameStage = function(stage)

	if(stage == 0)then		--Build Time
		s_GameStage = 0;
	elseif(stage == 1)then	--Gameplay
		s_GameStage = 1;
	elseif(stage == 2) then --Endless
		s_GameStage = 2;
	elseif(stage == 3) then --Player Win
		s_GameStage = 3;
	elseif(stage == 4) then --Player loss
		s_GameStage = 4;
	elseif(stage == 5) then	--Game end
		s_GameStage = 5;
	end

end

GameUpdate = function(self)
	IntroMessage();
	ModMessage();
	VersionMessage();
	Restrictions();	--Do here incase mods force enable units

	--0 Build Time, 1 Gameplay, 2 Endless, 3 Player Win, 4 Player Loss
	while (s_GameStage < 5) do

		s_CurrentTime = GetGameTimeSeconds();
	
		if(s_GameStage == 0) then								--Build Time--

			--Post Build Time
			if (s_CurrentTime >= s_NextSpawnTime) then

				LOG("----- Survival MODE: Build Time Over");
				BroadcastMSG("Genesis has begun!", 4);
				Sync.ObjectiveTimer = 0;
				SetGameStage(1);

				--Spawn first Wave
				SpawnWave();
				s_NextSpawnTime = s_CurrentTime + ScenarioInfo.Options.opt_Survival_WaveFrequency;	--Time to Next Wave

			else	--During Build Time

				Sync.ObjectiveTimer = math.floor(s_NextSpawnTime - s_CurrentTime);
				s_DefenseObjectiveUnit:SetCustomName(SecondsToTime(Sync.ObjectiveTimer)); -- Classic name as timer


				if (s_WarnTime > 0) then

					--Warning Message
					if(s_NextSpawnTime - s_CurrentTime <= s_WarnTime) then

						BroadcastMSG(s_WarnTime .. " SECOND WARNING", 3);

						if(s_WarnTime == 90) then
							s_WarnTime = 60;
						elseif(s_WarnTime == 60) then
							s_WarnTime = 30;
						elseif(s_WarnTime == 30) then
							s_WarnTime = 0;
						end
					end
				end
			end
		elseif(s_GameStage == 1) then							--Gameplay--
		
			--Objective Timer
			if(ScenarioInfo.Options.opt_Survival_Endless == 1) then
				Sync.ObjectiveTimer =  math.floor(s_CurrentTime);
			else
				Sync.ObjectiveTimer = math.floor(s_GameTimeTotal - s_CurrentTime);
			end

			s_DefenseObjectiveUnit:SetCustomName("Wave: " .. s_WaveTotalCount .. "/" .. table.getn(s_WavesTable)); -- Classic defense object with wave count

			--Gamemode Hook
			s_GamemodeSettings.GameplayUpdate(s_WaveTotalCount);

			--Base Destruction Victory
			EnemyBaseVictoryCheck();

			--end of Game, into Win / Endless Mode
			if(s_CurrentTime >= s_GameTimeTotal) then

				Sync.ObjectiveTimer = 0;

				--If endless is enabled
				if(ScenarioInfo.Options.opt_Survival_Endless == 1) then
					SetGameStage(2);	--Endless
					s_Wave = 1;	--Reset
					s_WavesTable = s_EndlessWave;	--Swap to the Endless Table

					--Completed Basic Waves, endless does double scaling for challenge
					if (ScenarioInfo.Options.opt_Survival_Scale ~= 1) then
						s_DamageScale = s_DamageScale * 2;				--Damage Increase Per Wave
						s_HealthScale = s_HealthScale * 2;				--Health Increase Per Wave
						--s_SpeedScale = s_SpeedScale * 2;				--Speed Increase Per Wave
					end
					s_NextSpawnTime = s_CurrentTime;	--Next Wave Time
				else
					Sync.ObjectiveTimer = 0;
					SetGameStage(3);	--Victory
				end
			else
				--Wave Spawning
				if (s_CurrentTime >= s_NextSpawnTime and s_Wave <= table.getn(s_WavesTable)) then
					SpawnWave();
					s_NextSpawnTime = s_CurrentTime + ScenarioInfo.Options.opt_Survival_WaveFrequency;	--Next Wave Time
				end
			end
		elseif(s_GameStage == 2) then							--Endless--

			---Update Timer
			Sync.ObjectiveTimer = math.floor(s_CurrentTime);
			
			s_DefenseObjectiveUnit:SetCustomName("Endless Wave: " .. s_WaveTotalCount); -- Classic objective with wave count on it

			--Gamemode Hook
			s_GamemodeSettings.GameplayUpdate(s_WaveTotalCount);
			
			--Base Destruction Victory
			EnemyBaseVictoryCheck();

			--Wave Spawning
			if (s_CurrentTime >= s_NextSpawnTime) then

				--end of the Endless Table
				if(s_WaveEndless > table.getn(s_TableFile.GetEndlessTable())) then
					s_WaveEndless = 0;
				else 
					--Spawn Wave
					SpawnWave();
					s_NextSpawnTime = s_CurrentTime + ScenarioInfo.Options.opt_Survival_WaveFrequency;	--Next Wave Time
				end

			end

		elseif(s_GameStage == 3) then							--Player Victory--
		
			--Show Stats!
			GetArmyBrain("ARMY_SURVIVAL_ENEMY"):OnDefeat();
			GetArmyBrain("ARMY_SURVIVAL_ALLY"):OnVictory();
			for i, Army in ListArmies() do
				-- Player Army Check
				if (ArmyToInt.GetInt(Army) > 0) then 
					GetArmyBrain(Army):OnVictory();
				end
			end		
			SetGameStage(5);
			PrintText(s_EndMessage[1], 35, 'ffCBFFFF', 600, 'center')
			CalculateFinalScore();
		
		elseif(s_GameStage == 4) then							--Player Loss--
			GetArmyBrain("ARMY_SURVIVAL_ENEMY"):OnVictory();
			GetArmyBrain("ARMY_SURVIVAL_ALLY"):OnDefeat();
			for i, Army in ListArmies() do
				-- Player Army Check
				if (ArmyToInt.GetInt(Army) > 0) then 
					GetArmyBrain(Army):OnDefeat();
				end
			end
			SetGameStage(5);
			PrintText(s_EndMessage[2], 35, 'ffCBFFFF', 600, 'center')
			CalculateFinalScore();
		end
		WaitSeconds(s_Tick);
	end
	KillThread(self);
end

SpawnWave = function()

	--Wave Increment
	s_Wave = s_Wave + 1;
	s_WaveTotalCount = s_WaveTotalCount + 1;

	--Endless
	if(s_GameStage == 2) then
		s_Wave = 1;	--Set to 1 for Endless table
		s_WaveEndless = s_WaveEndless + 1;
		ImportEndlessTable(s_WaveEndless);
	end

	--Text
	LOG("----- Survival MODE: Spawning Wave: " .. s_WaveTotalCount);
	print("Wave: " .. s_WaveTotalCount);

	if(s_WavesTable[s_Wave]["Title"] ~= nil) then
		--Offset from center
		PrintText(" ", 30, 'fff4f4f4', 3, 'center')	
		PrintText(" ", 30, 'fff4f4f4', 3, 'center')	
		PrintText(" ", 30, 'fff4f4f4', 3, 'center')	
		PrintText(" ", 30, 'fff4f4f4', 3, 'center')	
		PrintText(s_WavesTable[s_Wave]["Title"], 30, 'fff4f4f4', 4, 'center')
		
	end

	--Nuke
	if(ScenarioInfo.Options.opt_Survival_Nuke == true and s_WavesTable[s_Wave]["Nuke"] ~= nil) then

		--Spawn Nuke Launchers
		if(s_WavesTable[s_Wave]["Nuke"]["Spawn"] == true and table.getn(s_NukeLaunchers) == 0) then
			for i = 1, table.getn(s_NukeMarkers) do
				table.insert(s_NukeLaunchers, i, Nuke.SpawnNukeLauncher(s_NukeMarkers[i], s_Mods));
			end
		end

		--Fire as many nukes as we have
		if(s_WavesTable[s_Wave]["Nuke"]["Fire"] ~= nil) then
			ForkThread(NukeWave);
		end
	end

	--Base
	if(ScenarioInfo.Options.opt_Survival_Bases == true and s_WavesTable[s_Wave]["Base"] ~= nil) then

		--Spawn Enemy Base
		if(table.getn(s_EnemyBases) == 0) then
			local position = {};
			for i = 1, table.getn(s_EnemyBaseMarkers) do
				position = s_EnemyBaseMarkers[i].position;
				base = CreateUnitHPR(s_WavesTable[s_Wave]["Base"][1], "ARMY_SURVIVAL_ENEMY", position[1], position[2], position[3], 0,0,0);
				base:SetRegenRate(s_WavesTable[s_Wave]["Base"][3] * s_PlayerCount);
				base:SetMaxHealth(s_WavesTable[s_Wave]["Base"][2]);
				base:AdjustHealth(nil, base:GetMaxHealth());
				base:SetHealth(nil, base:GetMaxHealth());
				table.insert(s_EnemyBases, i, base);
			end
			s_EnemyBasesSpawned = true;
		end
	end
	
	--Check if Boss wave
	if(ScenarioInfo.Options.opt_Survival_Boss == 1 and s_WavesTable[s_Wave]["Boss"] ~= nil) then
		SpawnBossWave();
	end

	s_WaveActive = true;

	--Start Wave Update
	ForkThread(WaveUpdate);
	--Start Custom Wave Update
	if(s_WavesTable[s_Wave]["Custom"] ~= nil) then
		ForkThread(CustomWave);
	end
end


CustomWave = function(self)

	local spawnEnabled = true;
	local MarkerData = nil;
	local PlatoonList = {};
	local type = "LAND";
	local unitSpawn = 0;
	local waveCount = 0;
	local categoryCount = 0;
	local position = {};
	
	while (spawnEnabled == true) do

		--Loop through each category
		for v = 1, 3 do

			--Category
			if(v == 1) then
				type = "LAND";
			elseif(v == 2) then
				type = "AIR"
			elseif(v == 3) then
				type = "NAVY"
			end
			
			--Category not used
			if(s_WavesTable[s_Wave]["Custom"][type] == nil
				or v == 1 and s_LandEnabled == false
				or v == 2 and s_AirEnabled == false
				or v == 3 and s_NavyEnabled == false) then
				categoryCount = categoryCount + 1;
				continue;
			end

			--Loop Through all the custom Unit groups
			for x = 1, table.getn(s_WavesTable[s_Wave]["Custom"][type]) do

				--If all units have been spawned in this group
				if(s_WavesTable[s_Wave]["Custom"][type][x][1] <= 0) then
					waveCount = waveCount + 1;
					continue;
				end
				
				--Spawn Rate
				if(ScenarioInfo.Options.opt_Survival_SpawnRate == 1) then
					--Spawn at Once
					unitSpawn = s_WavesTable[s_Wave]["Custom"][type][x][1];
				else
					--Spawn over the Wave
					unitSpawn = math.ceil(s_WavesTable[s_Wave]["Custom"][type][x][1] / ScenarioInfo.Options.opt_Survival_WaveFrequency);
				end
				
				--Remaining Unit count from Wave Table
				for w = 1, unitSpawn do

					--Loop Through Blueprints for this group
					for y = 2, table.getn(s_WavesTable[s_Wave]["Custom"][type][x]) do

						--Make sure its valid
						if(s_WavesTable[s_Wave]["Custom"][type][x][y] ~= nil) then
				
							--Per Player Army
							for z, Army in ListArmies() do
								if (ArmyToInt.GetInt(Army) > 0) then
							
									--Spawn Several Times for Multiplier
									for u = 1, ScenarioInfo.Options.opt_Survival_WaveMultiplier do

										MarkerData = GetSpawnMarker(type, ArmyToInt.GetInt(Army) , false);
										position[1] = MarkerData[1].position[1];
										position[2] = MarkerData[1].position[2];
										position[3] = MarkerData[1].position[3];

										--If random range is not zero
										if(s_SpawnRadius ~= 0) then
											position[1] = MarkerData[1].position[1] + math.random(-s_SpawnRadius, s_SpawnRadius);
											position[3] = MarkerData[1].position[3] + math.random(-s_SpawnRadius, s_SpawnRadius);
										end

										table.insert(PlatoonList, SpawnUnit(s_WavesTable[s_Wave]["Custom"][type][x][y], type, position));

										--Give Orders
										if(PlatoonList ~= nil and table.getn(PlatoonList) ~= 0) then

											--AIR or Ranged
											if(type == "AIR") then
												order = 2;	--Attack Move
											else
												order = 1;	--Move
											end

											PlatoonOrder("ARMY_SURVIVAL_ENEMY", PlatoonList, order, type, MarkerData[2]);
											PlatoonList = {};
										end
									end
								end
							end
						end
					end
					s_WavesTable[s_Wave]["Custom"][type][x][1] = s_WavesTable[s_Wave]["Custom"][type][x][1] - 1;
				end
			end
			if(waveCount == table.getn(s_WavesTable[s_Wave]["Custom"][type])) then
				categoryCount = categoryCount + 1;
			end
		end
		--Finished spawning
		if(categoryCount == 3) then
			spawnEnabled = false;
		else
			--Reset
			categoryCount = 0;
			waveCount = 0;
			WaitSeconds(s_WaveTick);	--One Sec Wave Tick
		end
	end
	--LOG("---Survival: Kill Custom Spawning Thread---");
	KillThread(self);
end

--Used in each wave
WaveUpdate = function(self)
	
	local s_WaveCount = 0;

	--LOG("WAVE " .. s_Wave .. " Started"):
	while (s_WaveActive) do
		
		s_WaveCount = 0;
	
		for i = 1, 4 do

			-- LAND
			if(s_LandEnabled) then
				if(SpawnCategory("Land T" .. i, "LAND")) then
					s_WaveCount = s_WaveCount + 1;
				end
			else
				s_WaveCount = s_WaveCount + 1;
			end
			-- AIR
			if(s_AirEnabled) then
				if(SpawnCategory("Air T" .. i, "AIR")) then
					s_WaveCount = s_WaveCount + 1;
				end
			else
				s_WaveCount = s_WaveCount + 1;
			end
			-- NAVY
			if(s_NavyEnabled) then
				if(SpawnCategory("Navy T" .. i, "NAVY")) then
					s_WaveCount = s_WaveCount + 1;
				end
			else
				s_WaveCount = s_WaveCount + 1;
			end
		end

		--Check if all units have been spawned
		if(s_WaveCount >= 12) then
			s_WaveActive = false;
		else
			WaitSeconds(s_WaveTick);	--One Sec Wave Tick
		end
	end

	--print("Wave Complete: " .. Wave);
	KillThread(self);
end


NukeWave = function(self)

	local fireNukes = true;
	local VolleyTimer = ScenarioInfo.Options.opt_Survival_WaveFrequency / (s_WavesTable[s_Wave]["Nuke"]["Fire"] / table.getn(s_NukeLaunchers));

	while(fireNukes) do

		--Nuke Volley
		for i = 1,table.getn(s_NukeLaunchers) do
			if(s_WavesTable[s_Wave]["Nuke"]["Fire"] > 0) then
				Nuke.LaunchNuke(s_NukeLaunchers[i], s_DefenseObjectiveUnit);
				s_WavesTable[s_Wave]["Nuke"]["Fire"] = s_WavesTable[s_Wave]["Nuke"]["Fire"] - 1;
			else
				KillThread(self);
			end
		end
			
		WaitSeconds(VolleyTimer);	--Time till next Volley
	end
	KillThread(self);
end

--Spawn Boss Wave
SpawnBossWave = function()

	--Temp Vars
	local Spawn = false;
	local MarkerData = {};
	local position = {0,0,0};
	local PlatoonList = {};
	local BossWave = {};
	
	--Spawn for Each player (list through all armies and find players)
	for z, Army in ListArmies() do
		--Make sure this is a player
		if (ArmyToInt.GetInt(Army) > 0) then
			for i = 1, table.getn(s_WavesTable[s_Wave]["Boss"]) do

				--Shorthand the Boss infomation
				BossWave = s_WavesTable[s_Wave]["Boss"][i];

				--Reset
				Spawn = false;

				--Check if enabled
				if(BossWave["Type"] == "LAND" and s_LandEnabled) then
					Spawn = true;
				elseif(BossWave["Type"] == "AIR" and s_AirEnabled) then
					Spawn = true;
				elseif(BossWave["Type"] == "NAVY" and s_NavyEnabled) then
					Spawn = true;
				end

				--Check this Unit Spawn is enabled
				if(Spawn) then

					--Unit count should be at least
					if(BossWave["Count"] <= 0) then
						LOG("ERROR - Wave " .. s_Wave .. " Boss Unit count is not a postive number!");
						BossWave["Count"] = 1;	--Set to 1 incase
					end
					
					--Each Blueprint
					for y = 1, table.getn(BossWave["Blueprint"]) do

						--Unit Count
						for x = 1, BossWave["Count"] do
					
							MarkerData = GetSpawnMarker(BossWave["Type"] .. "BOSS", z, true);
							position[1] = MarkerData[1].position[1];
							position[2] = MarkerData[1].position[2];
							position[3] = MarkerData[1].position[3];

							--If random range is not zero
							if(s_SpawnRadius ~= 0) then
								position[1] = MarkerData[1].position[1] + math.random(-s_SpawnRadius, s_SpawnRadius);
								position[3] = MarkerData[1].position[3] + math.random(-s_SpawnRadius, s_SpawnRadius);
							end

							table.insert(PlatoonList, SpawnUnit(BossWave["Blueprint"][y], BossWave["Type"] .. "BOSS", position, BossWave["Mods"], true, BossWave["HP"], BossWave["Speed"], BossWave["Vet"]));
						end
					end
				end
				if(PlatoonList ~= nil and table.getn(PlatoonList) ~= 0) then
					PlatoonOrder("ARMY_SURVIVAL_ENEMY", PlatoonList, 1, BossWave["Type"] .. "BOSS", MarkerData[2]);
					PlatoonList = {};
				end
			end
		end

		--If NOT per player, just return as we only spawn the boss units ONCE
		if(s_BossPerPlayer == false) then
			return;
		end
	end
end

SpawnCategory = function(prefix, type)
	local count = 0;
	local bp;
	local ref;
	local PlatoonList = {};
	local order = 2;
	local unitCount = 0;
	local MarkerData = {};
	local newUnit = nil;
	local position = {0,0,0};
	local UnitSpawn = 0;

	--Make sure table isn't empty
	if(s_WavesTable[s_Wave][prefix] ~= nil) then

		--Loop Through Tier Table
		for x = 1, table.getn(s_WavesTable[s_Wave][prefix]) do
			
			--If we have no unit blueprints for this table, Disable it
			if(table.getn(s_UnitTables[prefix][x]) == 0) then
				s_WavesTable[s_Wave][prefix][x] = 0;
			end

			unitCount = s_WavesTable[s_Wave][prefix][x];

			--Has units left on the table
			if(s_WavesTable[s_Wave][prefix][x] > 0) then
				
				if(ScenarioInfo.Options.opt_Survival_SpawnRate == 1) then
					--Spawn at Once
					UnitSpawn = s_WavesTable[s_Wave][prefix][x];
				else
					--Spawn over the Wave
					UnitSpawn = math.ceil(s_WavesTable[s_Wave][prefix][x] / ScenarioInfo.Options.opt_Survival_WaveFrequency);
				end

				--Remaining Unit count from Wave Table
				for y = 1, UnitSpawn do
					
					--Get Random Blueprint from Unit Table
					ref = s_UnitTables[prefix][x];

					--Mod / Tier & Category / Type / Unit
					if(ref ~= nil) then

						--IF RNG mode, use RNG unit!
						if(ScenarioInfo.Options.opt_Survival_Gamemode == "RNG") then
							bp = GetRandomUnit(type);
						else
							bp = ref[math.random(1, table.getn(ref))];
						end

						if(bp ~= nil) then
							
							--Spawn for Each player (list through all armies and find players)
							for z, Army in ListArmies() do

								--Make sure this is a player
								if (ArmyToInt.GetInt(Army) > 0) then

									--Spawn Several Times for Multiplier
									for u = 1, ScenarioInfo.Options.opt_Survival_WaveMultiplier do

										MarkerData = GetSpawnMarker(type, ArmyToInt.GetInt(Army) , false);
										position[1] = MarkerData[1].position[1];
										position[2] = MarkerData[1].position[2];
										position[3] = MarkerData[1].position[3];

										--If random range is not zero
										if(s_SpawnRadius ~= 0) then
											position[1] = MarkerData[1].position[1] + math.random(-s_SpawnRadius, s_SpawnRadius);
											position[3] = MarkerData[1].position[3] + math.random(-s_SpawnRadius, s_SpawnRadius);
										end

										table.insert(PlatoonList, SpawnUnit(bp, type, position));

										--Give Orders
										if(PlatoonList ~= nil and table.getn(PlatoonList) ~= 0) then

											--AIR or Ranged
											if(type == "AIR" or x == 4 or type == "AIRBOSS") then
												order = 2;	--Attack Move
											elseif(bp == 'UAL0303') then --Hack fix for Reclaim unit
												order = 1;
											else
												order = 1;	--Move
											end

											PlatoonOrder("ARMY_SURVIVAL_ENEMY", PlatoonList, order, type, MarkerData[2]);
											PlatoonList = {};
										end
									end
								end
							end
						end
					end					
					--Progress Wave
					s_WavesTable[s_Wave][prefix][x] = s_WavesTable[s_Wave][prefix][x] - 1;
				end
			else
				count = count + 1;
			end
		end

		if(count >= table.getn(s_WavesTable[s_Wave][prefix])) then
			return true;
		end
	else
		return true;
	end
	return false;
end

SpawnUnit = function(blueprint, type, position, mods, boss, addHP, addSpeed, vet)

	if(blueprint == nil or not __blueprints[blueprint:lower()]) then
		LOG("-- Missing Blueprint: " .. blueprint);
		return nil;
	end

	if(addHP == nil) then
		addHP = 0;
	end

	if(addSpeed == nil) then
		addSpeed = 0;
	end

	local Unit = CreateUnitHPR(blueprint, "ARMY_SURVIVAL_ENEMY", position[1], position[2], position[3], 0,0,0);
	
	--Settings
	Unit:SetReclaimable(false);
	Unit:SetCapturable(false);
	Unit:SetConsumptionPerSecondEnergy(0);
	Unit:SetProductionPerSecondEnergy(325);

	if(boss) then
		Unit:SetCustomName("BOSS");
		
		--Set Veterancy (Challenge)
		if(vet ~= nil) then
			for i = 1, vet do
				Unit:SetVeterancy(1);
			end
		end

		--Boss Health = Base unit HP * Health Multiplier Option * Health Scaling * (Player Count * 75%) + Additional HP
		Unit:SetMaxHealth((
			  Unit:GetMaxHealth() *
			  ScenarioInfo.Options.opt_Survival_Health *
			  (1 + (s_HealthScale * s_WaveTotalCount)) *
			  (1 + (s_PlayerCount * 0.75))
			   ) + addHP);
	else
		--Health Multiplier
		Unit:SetMaxHealth((Unit:GetMaxHealth() * ScenarioInfo.Options.opt_Survival_Health * (1 + (s_HealthScale * s_WaveTotalCount))) + addHP);
	end

	Unit:AdjustHealth(nil, Unit:GetMaxHealth());
	Unit:SetHealth(nil, Unit:GetMaxHealth());

	--Speed Multiplier
	if(boss) then
		Unit:SetSpeedMult(addSpeed + 1.05 + (s_WaveTotalCount * s_SpeedScale));	--Bosses move faster
	else
		Unit:SetSpeedMult(addSpeed + 1 + (s_WaveTotalCount * s_SpeedScale));
	end
	
	--T4 Unit Modding
	UnitMods.ModUnit(Unit, blueprint, mods, s_WaveTotalCount);

	--Damage Multiplier
	if(ScenarioInfo.Options.opt_Survival_Damage > 1 or ScenarioInfo.Options.opt_Survival_Scale ~= 1) then
		local wep;
		local damage = 0;

		for i = 1, Unit:GetWeaponCount() do
			wep = Unit:GetWeapon(i);
			if (wep ~= nil and wep.Label ~= 'DeathWeapon' and wep.Label ~= 'DeathImpact') then
				wep:AddDamageMod(wep:GetBlueprint().Damage * ScenarioInfo.Options.opt_Survival_Damage * (1 + (s_DamageScale * s_WaveTotalCount)));
			end
		end
	end

	-- Prevent Wreckage option or Boss
	if(ScenarioInfo.Options.opt_Survival_Wreckage == 0 or boss) then
		local BP = Unit:GetBlueprint();
		if (BP != nil) then
			BP.Wreckage = nil;
		end
	end
	return Unit;
end


--Setup Map Markers
SetupMarkers = function()

	LOG("----- Survival MODE: Setup Markers");

	local MarkerRef = nil;
	local prefix = "LAND";
	local x = 1;
	local y = 1;
	local u = 1;
	local v = 1;
	local BreakX = false;
	local BreakY = false;
	local markerLoop = false;
	local n = 1;

	--Get all nuke markers
	while(markerLoop == false) do

		MarkerRef = GetMarker("NUKE" .. n);

		--Add all existing Nuke#
		if(MarkerRef != nil) then
			table.insert(s_NukeMarkers, n, MarkerRef);
		else
			markerLoop = true;
		end
		n = n + 1;
	end

	markerLoop = false;
	n = 1;
	--Get Enemy Base Markers
	while(markerLoop == false) do

		MarkerRef = GetMarker("BASE" .. n);

		--Add all existing Base#
		if(MarkerRef != nil) then
			table.insert(s_EnemyBaseMarkers, n, MarkerRef);
		else
			markerLoop = true;
		end
		n = n + 1;
	end


	s_AttackObjectiveMarkers[0] = GetMarker("ENEMY_GATE");

	--All Spawn points and Paths
	for x = 1, 7 do
		BreakX = false;
		u = 1;
		v = 1;

		if(x == 1) then
			prefix = "LAND";
		elseif(x == 2) then
			prefix = "AIR";
		elseif(x == 3) then
			prefix = "NAVY";
		elseif(x == 4) then
			prefix = "LANDBOSS";
		elseif(x == 5) then
			prefix = "AIRBOSS";
		elseif(x == 6) then
			prefix = "NAVYBOSS";
		elseif(x == 7) then
			prefix = "ENEMY";
		end

		--Get all Paths
		while(BreakX == false) do
			v = 1;
			BreakY = false;

			--Setup Spawn Markers
			MarkerRef = GetMarker(prefix .. "_SPAWN_" .. u);
			
			if (MarkerRef != nil) then
				--LOG(prefix .. "_SPAWN_" .. u);
				if(s_MoveMarkers[prefix]["SPAWN"] == nil) then
					s_MoveMarkers[prefix]["SPAWN"] = {};
				end
				table.insert(s_MoveMarkers[prefix]["SPAWN"], u, MarkerRef);
			end

			--Setup Path Markers
			while(BreakY == false) do

				MarkerRef = GetMarker(prefix .. "_PATH_" .. u .. "_" .. v);

				if (MarkerRef != nil) then
					--LOG(prefix .. "_PATH_" .. u .. "_" .. v);
					--Create missing Table
					if(s_MoveMarkers[prefix][u] == nil) then
						s_MoveMarkers[prefix][u] = {};
					end
					--Insert to it
					table.insert(s_MoveMarkers[prefix][u], v, MarkerRef);
					v = v + 1;
				else
					BreakY = true;
					--LOG("Break Y True");
				end
			end
			u = u + 1;
			--If V hasn't changed, nothing to add
			if(v == 1) then
				--LOG("Break X True");
				BreakX = true;
			end
		end
	end
end
--Pathing
GetPathMarkerPosition = function(type, point)
	--LOG("POS " .. type .. " " .. point);
	return s_MoveMarkers[type][s_PathsIndex[type]][point].position;
end

--Spawning E.G. GetSpawnMarker("LAND", 5) - returns Path for LAND player 5 enemy spawn position
GetSpawnMarker = function(type, playerID, boss)

	--Spawn per Player Lane
	if(not boss and ScenarioInfo.Options.opt_Survival_AllLanes == true) then
		return {s_MoveMarkers[type]["SPAWN"][playerID], playerID};
	else	--Spread spawns over all spawn points
		--Increment
		s_PathsIndex[type] = s_PathsIndex[type] + 1;
	
		--[LAND][PATH][POINT]
		if(s_PathsIndex[type] > table.getn(s_MoveMarkers[type]["SPAWN"])) then
			s_PathsIndex[type] = 1;
		end

		--LOG("Get SPAWN " .. type .. " i " .. s_PathsIndex[type]);
		--LOG("A " .. s_PathsIndex[type]);

		return {s_MoveMarkers[type]["SPAWN"][s_PathsIndex[type]], s_PathsIndex[type]};
	end
end

-- test platoon order function
--------------------------------------------------------------------------
PlatoonOrder = function(ArmyID, UnitList, OrderID, type, pathID)	

	if (UnitList == {} or table.getn(UnitList) == 0) then
		return;
	end

	local position = {0,0,0};
	local aiBrain = GetArmyBrain(ArmyID);
	local aiPlatoon = aiBrain:MakePlatoon('','');
	aiBrain:AssignUnitsToPlatoon(aiPlatoon, UnitList, 'Attack', 'None'); -- platoon, unit list, "mission" and formation
	
	--Loop through all POINTS in PATHS
	if(s_MoveMarkers[type][pathID] ~= nil) then
		for i = 1, table.getn(s_MoveMarkers[type][pathID]) do
	
			--[LAND][PATHS][POINTS]
			position[1] = s_MoveMarkers[type][pathID][i].position[1];
			position[2] = s_MoveMarkers[type][pathID][i].position[2];
			position[3] = s_MoveMarkers[type][pathID][i].position[3];
			--LOG("POS X: " .. position[1]);
			if(s_WaypointRadius ~= 0) then
				position[1] = s_MoveMarkers[type][pathID][i].position[1] + math.random(-s_WaypointRadius, s_WaypointRadius)
				position[3] = s_MoveMarkers[type][pathID][i].position[3] + math.random(-s_WaypointRadius, s_WaypointRadius)
			end

			if(position == nil) then
				LOG("Missing Position");
				position = {255, 8, 480};	--Roughly the defense position
			end

			if(OrderID == 1) then		-- 1 - Move
				aiPlatoon:MoveToLocation(position, false);
			elseif(OrderID == 2) then	-- 2 Attack Move
				aiPlatoon:AggressiveMoveToLocation(position);
			elseif(OrderID == 3) then	-- 3 Patrol
				aiPlatoon:MoveToLocation(position, false);
				aiPlatoon:Patrol(position);
			end
			--Reset
			position = {};
		end
		if(type == "AIR") then
			aiPlatoon:MoveToLocation(s_DefenseObjectiveUnit:GetPosition(), false);
			aiPlatoon:Patrol(s_DefenseObjectiveUnit:GetPosition());
		else
			aiPlatoon:AggressiveMoveToLocation(s_DefenseObjectiveUnit:GetPosition());
		end
	end
end

-- misc functions
--------------------------------------------------------------------------

-- returns hh:mm:ss from second count
-- taken from original survival script
SecondsToTime = function(Seconds)
	return string.format("%02d:%02d", math.floor(Seconds / 60), math.mod(Seconds, 60));
end

function GetMarker(MarkerName)
	return Scenario.MasterChain._MASTERCHAIN_.Markers[string.upper(MarkerName)]
end

-- For RNG mode
GetRandomUnit = function(prefix)

	local tier = math.random(1, 3);

	--Random Chance for T4 Exp, increases with each wave. 1/200 chance of spawning
	local chance = math.random(1, 200);

	--If Chance number is under the Total Wave count, spawn T4 EXP
	if(chance <= s_WaveTotalCount) then
		tier = 4;
	end

	--Setup Naming
	if(prefix == "LAND") then
		prefix = ("Land T" .. tier);
	elseif(prefix == "AIR") then
		prefix = ("Air T" .. tier);
	elseif(prefix == "NAVY") then
		prefix = ("Navy T" .. tier);
	end

	local category = math.random(1, table.getn(s_UnitTables[prefix]));
	local unit = math.random(1, table.getn(s_UnitTables[prefix][category]));

	return s_UnitTables[prefix][category][unit];
end

--Settings Default
SetupSettings = function()

	import(s_Directory .. 'lib/DefaultOptions.lua').SetDefaults();
	
	if (ScenarioInfo.Options.opt_Survival_BuildTime == 90) then
		s_WarnTime = 90;
	elseif (ScenarioInfo.Options.opt_Survival_BuildTime == 60) then
		s_WarnTime = 60;
	elseif (ScenarioInfo.Options.opt_Survival_BuildTime == 30) then
		s_WarnTime = 30;
	end

	local EnemyType = ScenarioInfo.Options.opt_Survival_EnemyType;

	--LAND
	if(EnemyType == 0 or EnemyType == 1 or EnemyType == 2 or EnemyType == 4) then
		s_LandEnabled = true;
	end
	--AIR
	if(EnemyType == 0 or EnemyType == 2 or EnemyType == 3 or EnemyType == 6) then
		s_AirEnabled = true;
	end
	--NAVY
	if(EnemyType == 0 or EnemyType == 1 or EnemyType == 3 or EnemyType == 5) then
		s_NavyEnabled = true;
	end

	if (ScenarioInfo.Options.opt_Survival_Scale ~= 1) then
		s_DamageScale = s_DamageScale * ScenarioInfo.Options.opt_Survival_Scale;
		s_HealthScale = s_HealthScale * ScenarioInfo.Options.opt_Survival_Scale;
		s_SpeedScale = 1.1;	--Flat rate of speed increase, its too powerful
		--s_SpeedScale  = s_SpeedScale  * ScenarioInfo.Options.opt_Survival_Scale;	--Speed scales linear

	else
		s_DamageScale = 0;
		s_HealthScale = 0;
		s_SpeedScale = 0;
	end	

	--T4 Unit mods
	UnitMods = import(s_Directory .. 'lib/T4UnitMods.lua');

	--Gamemode	------------------------------------------------
	s_GamemodeSettings = import(s_Directory .. 'gamemodes/' .. s_Gamemodes[ScenarioInfo.Options.opt_Survival_Gamemode]);
	s_GamemodeSettings.Settings();

	--Mods
	ImportMods();

	--Wave Table
	s_TableFile = import(s_Directory .. 'waves/' .. ScenarioInfo.Options.opt_Survival_WaveTable .. '.lua')
	s_WavesTable = s_TableFile.GetWaveTable();
	
	--Wave Balancing
	local TypeCount = 0;
	if(s_LandEnabled) then
		TypeCount = TypeCount + 1;
	end
	if(s_AirEnabled) then
		TypeCount = TypeCount + 1;
	end
	if(s_NavyEnabled) then
		TypeCount = TypeCount + 1;
	end

	--Nerf wave depending how many are spawning
	if(s_WaveBalance == true and TypeCount > 1) then
		WaveBalance(TypeCount);
	end
	   
	--Calculate Waves and Time
	s_TotalWaves = table.getn(s_WavesTable);
	if(ScenarioInfo.Options.opt_Survival_StartWave > 0) then
		
		--Check for Last Wave option
		if(ScenarioInfo.Options.opt_Survival_StartWave == 9999) then
			s_Wave = s_TotalWaves;
		else
			s_Wave = ScenarioInfo.Options.opt_Survival_StartWave;
		end
		s_WaveTotalCount = s_Wave;
	else
		s_Wave = 0;	--Default to 0
	end

	if(ScenarioInfo.Options.opt_Survival_Endless == 0) then
		s_GameTimeTotal = (s_TotalWaves - ScenarioInfo.Options.opt_Survival_StartWave) * ScenarioInfo.Options.opt_Survival_WaveFrequency + ScenarioInfo.Options.opt_Survival_BuildTime + 90;	-- 90 secs for post final wave
	else	--Endless
		s_GameTimeTotal = (s_TotalWaves - ScenarioInfo.Options.opt_Survival_StartWave) * ScenarioInfo.Options.opt_Survival_WaveFrequency + ScenarioInfo.Options.opt_Survival_BuildTime;	--Endless has no post game time
	end
	s_CurrentTime = 0;
	s_NextSpawnTime = ScenarioInfo.Options.opt_Survival_BuildTime;
end

--Better Balance Waves when more lanes are enabled
WaveBalance = function(count)

	--Only spawn half the units per category
	local ratio = 0.5;
	if(count == 3) then
		ratio = 0.33334;
	end

	--Loop thorugh each (w)ave
	for w = 1, table.getn(s_WavesTable) do
		for i = 1, 4 do
			if(s_WavesTable[w]["Land T" .. i] ~= nil) then
				for x = 1, table.getn(s_WavesTable[w]["Land T" .. i]) do			--Type
					s_WavesTable[w]["Land T" .. i][x] 
						= math.ceil(s_WavesTable[w]["Land T" .. i][x] * ratio);
				end
			end
			if(s_WavesTable[w]["Air T" .. i] ~= nil) then
				for x = 1, table.getn(s_WavesTable[w]["Air T" .. i]) do			--Type
					s_WavesTable[w]["Air T" .. i][x]
						= math.ceil(s_WavesTable[w]["Air T" .. i][x] * ratio);
				end
			end
			if(s_WavesTable[w]["Navy T" .. i] ~= nil) then
				for x = 1, table.getn(s_WavesTable[w]["Navy T" .. i]) do			--Type
					s_WavesTable[w]["Navy T" .. i][x] 
						= math.ceil(s_WavesTable[w]["Navy T" .. i][x] * ratio);
				end
			end
		end

		--Check for Custom Table
		if(s_WavesTable[w]["Custom"] ~= nil) then
			if(s_WavesTable[w]["Custom"]["LAND"] ~= nil) then
				for x = 1, table.getn(s_WavesTable[w]["Custom"]["LAND"]) do
					if(s_WavesTable[w]["Custom"]["LAND"][x][1] ~= nil) then
						s_WavesTable[w]["Custom"]["LAND"][x][1] = math.ceil(s_WavesTable[w]["Custom"]["LAND"][x][1] * ratio);
					end
				end
			end
			if(s_WavesTable[w]["Custom"]["AIR"] ~= nil) then
				for x = 1, table.getn(s_WavesTable[w]["Custom"]["AIR"]) do
					if(s_WavesTable[w]["Custom"]["AIR"][x][1] ~= nil) then
						s_WavesTable[w]["Custom"]["AIR"][x][1] = math.ceil(s_WavesTable[w]["Custom"]["AIR"][x][1] * ratio);
					end
				end
			end
			if(s_WavesTable[w]["Custom"]["NAVY"] ~= nil) then
				for x = 1, table.getn(s_WavesTable[w]["Custom"]["NAVY"]) do
					if(s_WavesTable[w]["Custom"]["NAVY"][x][1] ~= nil) then
						s_WavesTable[w]["Custom"]["NAVY"][x][1] = math.ceil(s_WavesTable[w]["Custom"]["NAVY"][x][1] * ratio);
					end
				end
			end
		end
	end
end

SetupACUs = function()

	for i, Army in ListArmies() do
		if (ArmyToInt.GetInt(Army) > 0) then

			--Killing the prime ACU will cause that player to be defeated
			if(s_Assassination) then
				--Old OnKilled
				s_PlayerACUs[Army].OldOnKilled = s_PlayerACUs[Army].OnKilled;

				--New OnKilled
				s_PlayerACUs[Army].OnKilled = function(self, instigator, type, overkillRatio)
					self.OldOnKilled(self, instigator, type, overkillRatio);
					GetArmyBrain(self:GetArmy()):OnDefeat();
				end
			end
		end
	end
end

--Spawn the Defense Objective
SpawnDefenseObjective = function()

	LOG("----- Survival MODE: Initializing Spawning Defense Objective");
	
	--Defense Objective blueprint
	local DefenseObjBP = ScenarioInfo.Options.opt_Survival_DefStructure;

	local defMarker = GetMarker("DEFENSE_SPAWN");

	local POS = {0,0,0}; --ScenarioUtils.MarkerToPosition("DEFENSE_SPAWN");
	--Missing Marker Check
	if(defMarker == nil)then
		LOG("----- Survival MODE: ERROR Missing DEFENSE_SPAWN marker!");
		BroadcastMSG("ERROR, Map is missing DEFENSE_SPAWN marker, attempting by pass.", 8);
		POS[1] = 256;
		POS[3] = 480;
	else
		POS = defMarker.position;
	end

	--Create Defense Objective
	if(not s_DebugMode) then
		s_DefenseObjectiveUnit = CreateUnitHPR(DefenseObjBP, "ARMY_SURVIVAL_ALLY", POS[1], POS[2], POS[3], 0,0,0);
	else
		s_DefenseObjectiveUnit = CreateUnitHPR(DefenseObjBP, "ARMY_SURVIVAL_ENEMY", POS[1], POS[2], POS[3], 0,0,0);
	end

	--Stats
	s_DefenseObjectiveUnit:SetReclaimable(false);
	s_DefenseObjectiveUnit:SetCapturable(false);
	s_DefenseObjectiveUnit:SetConsumptionPerSecondEnergy(1);
	--Give the Objective an ACUs worth of production incase players lose resources
	s_DefenseObjectiveUnit:SetProductionPerSecondEnergy(20);
	s_DefenseObjectiveUnit:SetProductionPerSecondMass(1);
	
	local s_DefUnitBP = s_DefenseObjectiveUnit:GetBlueprint();
	s_DefUnitBP.Intel.MaxVisionRadius = 200;
	s_DefUnitBP.Intel.MinVisionRadius = 200;
	s_DefUnitBP.Intel.VisionRadius = 200;
	s_DefenseObjectiveUnit:SetIntelRadius('Vision', 200);

	--Obj Health
	s_DefenseObjectiveUnit:SetMaxHealth(20000 * s_PlayerCount);
	s_DefenseObjectiveUnit:SetHealth(nil, 20000 * s_PlayerCount);
	s_DefenseObjectiveUnit:SetRegenRate(20 * s_PlayerCount);
	s_DefenseObjectiveUnit.OldOnKilled = s_DefenseObjectiveUnit.OnKilled;

	s_DefenseObjectiveUnit.OnKilled = function(self, instigator, type, overkillRatio)

		self.OldOnKilled(self, instigator, type, overkillRatio);

		if(s_GameStage == 2) then
		
			PrintText(s_EndMessage[5], 35, 'ffCBFFFF', 600, 'center')
			SetGameStage(3);	--Player Victory in Endless Stage
		else
		
			PrintText(s_EndMessage[4], 35, 'ffCBFFFF', 600, 'center')
			SetGameStage(4);	--Player Defeat
		end
	end

	--Survival_DefLastHP = s_DefenseObjectiveUnit:GetHealth();
end

EnemyBaseVictoryCheck = function()

	if(ScenarioInfo.Options.opt_Survival_Bases == false or s_EnemyBaseVictory == false or s_EnemyBasesSpawned == false) then
		return;
	end

	local count = 0;
	for i = 1, table.getn(s_EnemyBases) do
		if(s_EnemyBases[i] == nil or s_EnemyBases[i]:IsDead()) then
			count = count + 1;
		end
	end
	if(count == table.getn(s_EnemyBases)) then
		--Player Victory!
		
		PrintText(s_EndMessage[3], 35, 'ffCBFFFF', 600, 'center')
		SetGameStage(3);
	end

	return false;
end

-- Spawn a custom amount of Mass and Hydro
--------------------------------------------------------------------------
CreateResources = function()

	local MarkerRef = nil;
	
	local MarkerData = {};
	local ArmyPos = {};
	local POS = {};
	local FactionID = nil;
	local Mexe = nil;
	local Hydro = nil;
	local Power = nil;
	local FastEco = ScenarioInfo.Options.opt_Survival_FastEco;
	local Offset = 0;
	local blueprints;

	--Loop Through all players
	for i, Army in ListArmies() do
		if (ArmyToInt.GetInt(Army) > 0) then
		
			--Get ARMY Spawn position
			MarkerData = GetMarker(Army);
			ArmyPos[1] = MarkerData.position[1];
			ArmyPos[2] = MarkerData.position[2];
			ArmyPos[3] = MarkerData.position[3];
			POS[1] = ArmyPos[2];
			POS[2] = ArmyPos[2];
			POS[3] = ArmyPos[3];
			
			if(FastEco ~= 0) then
				blueprints = ResourceCreation.GetResourceBlueprint(Army, FastEco, s_Mods);
			end

			if(s_AutoResources) then

				--Mass
				for x = 1, table.getn(s_MassResources) do

					POS[3] = ArmyPos[3] + (x * 2) ;
					Offset = ((table.getn(s_MassResources[x]) / 2) * 2) + 1;

					--Each element in table
					for z = 1, table.getn(s_MassResources[x]) do
						
						if(s_MassResources[x][z] == 1) then
							POS[1] = (ArmyPos[1] - Offset) + (z * 2);
							ResourceCreation.CreateResource("Mass", POS[1], POS[2], POS[3]);
							if(FastEco ~= 0) then
								CreateUnitHPR(blueprints[3], Army, POS[1], POS[2], POS[3], 0,0,0);
							end
						end
					end
				end

				--Hydro--
				for x = 1, table.getn(s_HydroResources) do

					POS[3] = ArmyPos[3] - (x * 6) - 4; --z

					Offset = ((table.getn(s_HydroResources[x]) * 6) / 2) + 3; --x Offset

					for z = 1, table.getn(s_HydroResources[x]) do
						
						if(s_HydroResources[x][z] == 1) then
							POS[1] = (ArmyPos[1] + Offset) - (z * 6);	--x
							ResourceCreation.CreateResource("Hydrocarbon", POS[1], POS[2], POS[3]);
							if(FastEco ~= 0) then
								CreateUnitHPR(blueprints[1], Army, POS[1], POS[2], POS[3], 0,0,0);
							end
						end
					end
				end

			else --Setup Resources by hand
				POS = ArmyPos;
				
				--Spawn Hydro
				ResourceCreation.CreateResource("Hydrocarbon", POS[1] + 6, POS[2], POS[3] - 10);
				ResourceCreation.CreateResource("Hydrocarbon", POS[1] - 6, POS[2], POS[3] - 10);

				--Spawn MASS acordingly
				if(ScenarioInfo.Options.opt_Survival_Gamemode ~= 4 and ScenarioInfo.Options.opt_Survival_Gamemode ~= 3) then
					ResourceCreation.CreateResource("Mass", POS[1] + 2, POS[2], POS[3] + 2);
					ResourceCreation.CreateResource("Mass", POS[1] - 2, POS[2], POS[3] + 2);
					ResourceCreation.CreateResource("Mass", POS[1] + 2, POS[2], POS[3] + 6);
					ResourceCreation.CreateResource("Mass", POS[1] - 2, POS[2], POS[3] + 6);
					ResourceCreation.CreateResource("Mass", POS[1] + 2, POS[2], POS[3] + 10);
					ResourceCreation.CreateResource("Mass", POS[1] - 2, POS[2], POS[3] + 10);
					ResourceCreation.CreateResource("Mass", POS[1] + 6, POS[2], POS[3] + 6);
					ResourceCreation.CreateResource("Mass", POS[1] - 6, POS[2], POS[3] + 6);
					ResourceCreation.CreateResource("Mass", POS[1] + 6, POS[2], POS[3] + 10);
					ResourceCreation.CreateResource("Mass", POS[1] - 6, POS[2], POS[3] + 10);
				end

				--Instant Mexes and Hydro
				if(FastEco ~= 0) then
					local blueprints = ResourceCreation.GetResourceBlueprint(Army, FastEco);

					--Hydro
					CreateUnitHPR(blueprints[1], Army, POS[1] + 6, POS[2], POS[3] - 10, 0,0,0);
				
					if(FastEco > 1) then
						CreateUnitHPR(blueprints[1], Army, POS[1] - 6, POS[2], POS[3] - 10, 0,0,0);
					end

					--T2 Power
					if(FastEco > 2) then
						CreateUnitHPR(blueprints[2], Army, POS[1], POS[2], POS[3] - 16, 0,0,0);
					end

					--Mass
					CreateUnitHPR(blueprints[3], Army, POS[1] + 2, POS[2], POS[3] + 2, 0,0,0);
					CreateUnitHPR(blueprints[3], Army, POS[1] - 2, POS[2], POS[3] + 2, 0,0,0);
					CreateUnitHPR(blueprints[3], Army, POS[1] + 2, POS[2], POS[3] + 6, 0,0,0);
					CreateUnitHPR(blueprints[3], Army, POS[1] - 2, POS[2], POS[3] + 6, 0,0,0);
					CreateUnitHPR(blueprints[3], Army, POS[1] + 2, POS[2], POS[3] + 10, 0,0,0);
					CreateUnitHPR(blueprints[3], Army, POS[1] - 2, POS[2], POS[3] + 10, 0,0,0);
					CreateUnitHPR(blueprints[3], Army, POS[1] + 6, POS[2], POS[3] + 6, 0,0,0);
					CreateUnitHPR(blueprints[3], Army, POS[1] - 6, POS[2], POS[3] + 6, 0,0,0);
					CreateUnitHPR(blueprints[3], Army, POS[1] + 6, POS[2], POS[3] + 10, 0,0,0);
					CreateUnitHPR(blueprints[3], Army, POS[1] - 6, POS[2], POS[3] + 10, 0,0,0);
				end
			end
		end
	end
end

--Import units from supported mods
ImportMods = function()

	--Nomads check
	if(__blueprints['xnl0001']) then
		LOG("----- Survival MODE: Nomads Detected");
		s_Mods[2][1] = true;
	end
	
	
	ModCount = 0;
  
	-- Track mods
	for index, moddata in __active_mods do
		
		--Loop through All Mods for a match
		for i = 1, table.getn(s_Mods) do
			if(moddata.name == s_Mods[i][2]) then
				LOG("---- Survival MODE Mod: " .. s_Mods[i][2] .. " Detected");
				s_Mods[i][1] = true;
				ModCount = ModCount + 1;
			end
		end
		
		-- Make sure the RIGHT version of Extreme Wars is being used
		if(moddata.name == "Extreme Wars.") then	--Damn broken vault version
			LOG("---- Survival MODE: WRONG VERSION OF EXTREME WARS, use Extreme Wars without the dot");
			--PrintText("WRONG VERSION OF EXTREME WARS", 35, 'ffff0000', 6, 'center')	
			s_Mods[9][1] = false;
		end

		LOG('---- Survival Mode: Tracking: '..moddata.name);
	end
	
	
	--Disable Base Game Units
	if(ScenarioInfo.Options.opt_Survival_UnitsLoad == 2 and ModCount > 0) then
		s_Mods[1][1] = false;
	--Disable all mod units
	elseif(ScenarioInfo.Options.opt_Survival_UnitsLoad == 1) then
		for i = 2, table.getn(s_Mods) do
			s_Mods[i][1] = false;
		end
	end

	-- Survival Mayhem&BO balance REQUIRES mayhem
	if(s_Mods[10][1] == true and s_Mods[4][1] == false) then
		s_Mods[10][1] = false;
	end

	-- Total Mayhem Lite REQUIRES mayhem
	if(s_Mods[11][1] == true and s_Mods[4][1] == false) then
		s_Mods[11][1] = false;
	end
	
	local s_ImportTable = {};	--For Importing tables

	-- Apply Mods, hope you like for loops
	for j = 1, table.getn(s_Mods) do
		if(s_Mods[j][1] == true and s_Mods[j][3] ~= nil) then

			--Import Mod Table
			LOG("Importing Unit Table " .. s_Directory .. 'units/' .. s_Mods[j][3]);
			s_ImportTable = import(s_Directory .. 'units/' .. s_Mods[j][3]).GetUnitTable();

			for i = 1, 4 do												--Tier
				--LAND
				for x = 1, table.getn(s_ImportTable["Land T" .. i]) do	--Type
					for y = 1, table.getn(s_ImportTable["Land T" .. i][x]) do			--Unit
						table.insert(s_UnitTables["Land T" .. i][x], s_ImportTable["Land T" .. i][x][y]);
					end
				end
				--AIR
				for x = 1, table.getn(s_ImportTable["Air T" .. i]) do	--Type
					for y = 1, table.getn(s_ImportTable["Air T" .. i][x]) do			--Unit
						table.insert(s_UnitTables["Air T" .. i][x], s_ImportTable["Air T" .. i][x][y]);
					end
				end
				--NAVY
				for x = 1, table.getn(s_ImportTable["Navy T" .. i]) do	--Type
					for y = 1, table.getn(s_ImportTable["Navy T" .. i][x]) do			--Unit
						table.insert(s_UnitTables["Navy T" .. i][x], s_ImportTable["Navy T" .. i][x][y]);
					end
				end
			end
		end
	end
end

CalculateFinalScore = function()

	--Minus Build Time
	s_ScoreModifier = s_ScoreModifier - (ScenarioInfo.Options.opt_Survival_BuildTime * 0.0002);

	s_ScoreModifier = s_ScoreModifier + (ScenarioInfo.Options.opt_Survival_WaveMultiplier - 1);
	s_ScoreModifier = s_ScoreModifier + ScenarioInfo.Options.opt_Survival_SpawnRate;

	if(ScenarioInfo.Options.opt_Survival_SpawnRate ~= 1 ) then
		--Reduce score based on Frequency
		s_ScoreModifier = s_ScoreModifier - ((ScenarioInfo.Options.opt_Survival_WaveFrequency * 0.01) - 0.50);
	end

	s_ScoreModifier = s_ScoreModifier + ScenarioInfo.Options.opt_Survival_Boss;

	if(s_LandEnabled) then
		s_ScoreModifier = s_ScoreModifier + 1;
	end
	if(s_AirEnabled) then
		s_ScoreModifier = s_ScoreModifier + 1;
	end
	if(s_NavyEnabled) then
		s_ScoreModifier = s_ScoreModifier + 1;
	end

	s_ScoreModifier = s_ScoreModifier + (s_PlayerCount * 0.1) - 0.1;
	s_ScoreModifier = s_ScoreModifier - (ScenarioInfo.Options.opt_Survival_FastEco * 0.1);

	if(ScenarioInfo.Options.opt_Survival_AllFactions < 5) then
		s_ScoreModifier = s_ScoreModifier - (ScenarioInfo.Options.opt_Survival_AllFactions * 0.1);
	else
		s_ScoreModifier = s_ScoreModifier - ((ScenarioInfo.Options.opt_Survival_AllFactions * 0.1) - 0.3);
	end

	if(ScenarioInfo.Options.opt_Survival_Wreckage == 0) then
		s_ScoreModifier = s_ScoreModifier + 2;
	end

	s_ScoreModifier = s_ScoreModifier - ScenarioInfo.Options.opt_Survival_Restrict;
	s_ScoreModifier = s_ScoreModifier + ScenarioInfo.Options.opt_Survival_Endless;

	s_ScoreModifier = s_ScoreModifier + ScenarioInfo.Options.opt_Survival_Damage - 1;
	s_ScoreModifier = s_ScoreModifier + ScenarioInfo.Options.opt_Survival_Health - 1;
	s_ScoreModifier = s_ScoreModifier + ScenarioInfo.Options.opt_Survival_Scale - 1;
	
	s_ScoreTotal = math.floor(s_ScoreModifier * (GetGameTimeSeconds() - ScenarioInfo.Options.opt_Survival_BuildTime));
	PrintText("Final Score: " .. s_ScoreTotal, 35, 'ffCBFFFF', 600, 'center')	

end

DebugGame = function()
	DebugTools = import(s_Directory .. 'lib/DebugTools.lua');

	--Loop through mods
	for i = 1, table.getn(s_Mods) do
		if(s_Mods[i][1]) then
			if(s_Mods[i][3] != nil) then	--Not blank mod
				LOG("Importing " .. s_Directory .. 'units/' .. s_Mods[i][3])

				s_ImportTable = import(s_Directory .. 'units/' .. s_Mods[i][3]);
				DebugTools.SpawnModUnits(s_ImportTable.GetUnitTable());
			end
		end
	end
end

--Imports the Endless Wave each Wave to refresh the wave
ImportEndlessTable = function(wave)

	local importTable =  s_TableFile.GetEndlessTable();

	for i = 1, 4 do												--Tier
		--LAND
		for x = 1, table.getn(s_EndlessWave[1]["Land T" .. i]) do	--Type
			if( s_EndlessWave[1]["Land T" .. i][x] ~= nil and importTable[wave]["Land T" .. i][x] ~= nil) then
				s_EndlessWave[1]["Land T" .. i][x] = importTable[wave]["Land T" .. i][x];
			else
				s_EndlessWave[1]["Land T" .. i][x] = 0;
			end
		end
		--AIR
		for x = 1, table.getn(s_EndlessWave[1]["Air T" .. i]) do	--Type
			if( s_EndlessWave[1]["Air T" .. i][x] ~= nil and importTable[wave]["Air T" .. i][x] ~= nil) then
				s_EndlessWave[1]["Air T" .. i][x] = importTable[wave]["Air T" .. i][x];
			else
				s_EndlessWave[1]["Air T" .. i][x] = 0;
			end
		end
		--NAVY
		for x = 1, table.getn(s_EndlessWave[1]["Navy T" .. i]) do	--Type
			if( s_EndlessWave[1]["Navy T" .. i][x] ~= nil and importTable[wave]["Navy T" .. i][x] ~= nil) then
				s_EndlessWave[1]["Navy T" .. i][x] = importTable[wave]["Navy T" .. i][x];
			else
				s_EndlessWave[1]["Navy T" .. i][x] = 0;
			end
		end
	end
end

BroadcastMSG = function(MSG, Fade, TextColor)
	--print(MSG);
	PrintText(MSG, 30, TextColor, Fade, 'center')	
end

-- A lot of Text, lets seperate it
IntroMessage = function()

	--Center Text
	PrintText(ScenarioInfo.name, 35, 'ffCBFFFF', 6, 'center')	
	for i = 1, table.getn(s_TitleCredits) do
		PrintText(s_TitleCredits[i], 20, 'ffffffff', 5, 'center')
	end
	PrintText("Script By Packer", 20, 'ffffffff', 5, 'center')

	--Instructions
	PrintText("|     How to Play", 30, 'ffffffff', 20, 'leftcenter')	
	for i = 1, table.getn(s_InstructionMessage) do
		PrintText(s_InstructionMessage[i], 20, 'fff4f4f4', 21, 'leftcenter')
	end
	--Recommend putting an brief explination of how your map works here

	--Wave Types
	local enemyTypes = "Enemy Wave Types:";

	if(s_LandEnabled) then
		enemyTypes = enemyTypes .. " Land";
	end
	if(s_AirEnabled) then
		enemyTypes = enemyTypes .. " Air";
	end
	if(s_NavyEnabled) then
		enemyTypes = enemyTypes .. " Navy";
	end
	
	PrintText(" ", 64, 'fff4f4f4', 10, 'centertop')	--Top Spacer
	PrintText(" ", 64, 'fff4f4f4', 10, 'centertop')	--Top Spacer
	PrintText(enemyTypes, 20, 'ffCBFFFF', 20, 'centertop')
end

ModMessage = function()

	PrintText("Mods Detected:   ", 20, 'ffffffff', 7, 'rightcenter')	

	for i = 2, table.getn(s_Mods) do
		if(s_Mods[i][1]) then
				PrintText(s_Mods[i][2] .. "   ", 15, 'ff00CC03', 6 + i, 'rightcenter')	
		end
	end
end

VersionMessage = function()

	PrintText(" ", 64, 'fff4f4f4', 21, 'lefttop')	--Top Left Spacer
	PrintText(" ", 64, 'fff4f4f4', 21, 'lefttop')	--Top Left Spacer
	PrintText(" ", 64, 'fff4f4f4', 21, 'lefttop')	--Top Left Spacer
	PrintText("| Version: " .. ScenarioInfo.map_version, 28, 'ffffffff', 20, 'lefttop')

	for i = 1, table.getn(s_VersionMessages) do
		PrintText(s_VersionMessages[i], 21, 'ffffffff', 20 + i, 'lefttop')
	end
end


--Color is in HEX with the prefix ff, e.g fff4f4f4
--DO NOT ADD ; to the end of a PrintText, will bug out and disable messages
--Text Locations
--lefttop
--leftcenter
--leftbottom
--righttop
--rightcenter
--rightbottom
--centertop
--center
--centerbottom
