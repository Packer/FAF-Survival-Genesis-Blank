-- Packer's Survival MOD Script
-- Created by Packer

ModUnit = function(CustomUnit, UnitID, unitMods, Wave)
	
	if(unitMods == nil or CustomUnit == nil or UnitID == nil) then
		return;
	end


	--Loop through each mod
	for x = 1, table.getn(unitMods) do

		--Set mods to upper always incase
		unitMods[x] = string.upper(unitMods[x]);

		--LOG("Modding Unit!");
		local Wep = {nil, nil, nil,nil};
		local WepPos = {0,0,0,0};
		local count = 0;
	
		--Fatboy 'UEL0401'
		if(UnitID == 'UEL0401' or UnitID == 'uel0401') then
			count = 4;
			WepPos = {3, 4, 5, 6}
		end
	
		--Monkeylord URL0402
		if(UnitID == 'URL0402' or UnitID == 'url0402') then
			count = 2;
			WepPos = {2, 3, 0, 0}
		end
	
		--Megalith XRL0403
		if(UnitID == 'XRL0403' or UnitID == 'xrl0403') then
			count = 3;
			WepPos = {20, 15, 16, 0}
		end
	
		--Galactic Colossus UAL0401
		if(UnitID == 'UAL0401' or UnitID == 'ual0401') then
			count = 2;
			WepPos = {5, 2, 0, 0}
		end
	
		--Ythotha XSL0401
		if(UnitID == 'XSL0401' or UnitID == 'xsl0401') then
			count = 2;
			WepPos = {18, 21, 0, 0}
		end

		--AIR
		--Reaper URA0401
		if(UnitID == 'URA0401' or UnitID == 'ura0401') then
			count = 4;
			WepPos = {7, 9, 10, 11}
		end
		

		--NAVY
		--Atlantis UES0401
		if(UnitID == 'UES0401' or UnitID == 'ues0401') then
			count = 2;
			WepPos = {1, 2, 0, 0}	--TODO Find right bones
		end

		--UNKNOWN Assume first bone and only spawn one mod
		if(count == 0) then
			LOG("Unknown Mod Unit");
			WepPos = {1, 0, 0, 0}
		end
	
		for i = 1, count do
	
			--Anti Air
			if(unitMods[x] == "AA") then
				Wep[i] = CreateUnitHPR('URB2304', "ARMY_SURVIVAL_ENEMY", 0,0,0,0,0,0);
			end

			--Heavy Point Defense T3
			if(unitMods[x] == "HPD") then
				Wep[i] = CreateUnitHPR('XEB2306', "ARMY_SURVIVAL_ENEMY", 0,0,0,0,0,0);
			end

			--Tatical Defense
			if(unitMods[x] == "TMD") then
				Wep[i] = CreateUnitHPR('UAB4201', "ARMY_SURVIVAL_ENEMY", 0,0,0,0,0,0);
			end

			--Shield 
			if(unitMods[x] == "SHIELD") then
				local ShieldSpecs = {
					ImpactEffects = 'SeraphimShieldHit01',
					ImpactMesh = '/effects/entities/ShieldSection01/ShieldSection01_mesh',
					Mesh = '/effects/entities/SeraphimShield01/SeraphimShield01_mesh',
					MeshZ = '/effects/entities/Shield01/Shield01z_mesh',
					RegenAssistMult = 60,
					ShieldEnergyDrainRechargeTime = 60,
					ShieldMaxHealth = 21000 + (Wave * 750),
					ShieldRechargeTime = 15,
					ShieldRegenRate = 600,
					ShieldRegenStartTime = 1,
					ShieldSize = 32,
					ShieldVerticalOffset = -9,
				};

				Wep[i] = CreateUnitHPR('UEL0307', "ARMY_SURVIVAL_ENEMY", 0,0,0,0,0,0);

				Wep[i]:CreateShield(ShieldSpecs);
			end

			--Attach Unit to Our Exp
			if(Wep[i] ~= nil) then
				Wep[i]:AttachTo(CustomUnit, CustomUnit:GetBoneName(WepPos[i]));

				--Increase health on weapons so they dont instantly explode
				Wep[i]:SetMaxHealth(15000);
				Wep[i]:SetHealth(nil, 15000);
				Wep[i]:AdjustHealth(nil, 15000);
			end
		end
	end
end