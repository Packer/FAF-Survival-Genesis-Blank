-- Packer's Survival MOD Script
-- Created by Packer
-- All functions are required even if empty

local s_Directory = ScenarioInfo.directory;	--Map Directory
local ScenarioFramework = import('/lua/ScenarioFramework.lua');
local StandardGamemode = import(s_Directory  .. 'gamemodes/Gamemode_Standard.lua');

Settings = function()
	--Override or force settings here
end

PlayerRestrictions = function(Army, Mods)
	StandardGamemode.PlayerRestrictions(Army, Mods);
end

BotRestrictions = function(Army, Mods)
	StandardGamemode.BotRestrictions(Army, Mods);
end

GameplayUpdate = function(Wave)
	StandardGamemode.GameplayUpdate(Wave);
end