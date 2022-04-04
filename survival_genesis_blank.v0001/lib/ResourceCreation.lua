-- Create Resource
-- Created by Packer

--Mass Creation
CreateResource = function(type, x, y, z)

	local POS = {x, y, z};

	if(type == "Mass") then
		--Create the Resource
		CreateResourceDeposit(type, x , y, z, 1);
		-- Map Prop
		CreatePropHPR("/env/common/props/massDeposit01_prop.bp", x, y, z, Random(0,360), 0, 0);
		-- Map Icon
		CreateSplat(POS, 0, "/env/common/splats/mass_marker.dds", 2, 2, 100, 0, -1, 0);
	elseif(type == "Hydrocarbon") then
		--Create the Resource
		CreateResourceDeposit(type, x , y, z, 3);
		-- Map Prop
		CreatePropHPR("/env/common/props/hydrocarbonDeposit01_prop.bp", x, y, z, Random(0,360), 0, 0);
		-- Map Icon
		CreateSplat(POS, 0, "/env/common/splats/hydrocarbon_marker.dds", 6, 6, 200, 0, -1, 0);
	end
end


GetResourceBlueprint = function(Army, FastEco)

	local Hydro = nil;
	local Power = nil;
	local Mexe = nil;
	local FactionID = GetArmyBrain(Army):GetFactionIndex();

	--Spawn Faction Resources
	if (FactionID == 1) then -- uef
		Hydro = 'UEB1102';
		Power = 'UEB1201';
		if(FastEco == 3) then
			Mexe = 'UEB1302';	--T3
		elseif(FastEco == 2) then
			Mexe = 'UEB1202';	--T2
		else
			Mexe = 'UEB1103';	--T1
		end
	elseif (FactionID == 2) then -- aeon
		Hydro = 'UAB1102';
		Power = 'UAB1201';
		if(FastEco == 3) then
			Mexe = 'UAB1302';	--T3
		elseif(FastEco == 2) then
			Mexe = 'UAB1202';
		else
			Mexe = 'UAB1103';
		end
	elseif (FactionID == 3) then -- cybran
		Hydro = 'URB1102';
		Power = 'URB1201';
		if(FastEco == 3) then
			Mexe = 'URB1302';	--T3
		elseif(FastEco == 2) then
			Mexe = 'URB1202';
		else
			Mexe = 'URB1103';
		end
	elseif (FactionID == 4) then -- seraphim
		Hydro = 'XSB1102';
		Power = 'XSB1201';
		if(FastEco == 3) then
			Mexe = 'XSB1302';	--T3
		elseif(FastEco == 2) then
			Mexe = 'XSB1202';
		else
			Mexe = 'XSB1103';
		end
	elseif (FactionID == 5) then -- nomads
		Hydro = 'XNB1102';
		Power = 'XNB1201';
		if(FastEco == 3) then
			Mexe = 'XNB1302';	--T3
		elseif(FastEco == 2) then
			Mexe = 'XNB1202';
		else
			Mexe = 'XNB1103';
		end
	end

	return {Hydro, Power, Mexe};
end