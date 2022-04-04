-- Packer's Nuke Launcher Script
-- Created by Packer
local launcherBlueprints = {'UEB2305','UAB2305','URB2305','XSB2305','XNB2305'}

SpawnNukeLauncher = function(Marker, Mods)

	local position = Marker.position;
	local random = 4;
	--Nomads
	if(Mods[2][1]) then
		random = 5;
	end
	random = math.random(1, random);

	local unit = CreateUnitHPR(launcherBlueprints[random], "ARMY_SURVIVAL_ENEMY", position[1],position[2],position[3],0,0,0);
	
	--Cannot be destroyed or targeted
	unit:SetDoNotTarget(true);
	unit:SetUnSelectable(true);
	unit:SetReclaimable(false);
	unit:SetCapturable(false);
	unit:SetCanTakeDamage(false);
	unit:SetCanBeKilled(false);
	unit:SetMaxHealth(69420); --Funny number
	unit:SetHealth(nil, 69420);
	unit:AdjustHealth(nil, 69420);
	unit:SetConsumptionPerSecondMass(0); --Stop resource drain
	unit:SetConsumptionPerSecondEnergy(0);

	return unit;
end

LaunchNuke = function(launcher, target)
	launcher:GiveNukeSiloAmmo(1);
	IssueNuke({launcher}, target:GetPosition());
end