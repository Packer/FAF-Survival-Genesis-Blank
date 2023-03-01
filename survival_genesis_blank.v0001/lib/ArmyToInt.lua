-- Packer's Lazy conversion from ARMY to INT
-- Created by Packer

local switch =
{
	["ARMY_1"] = 1,
	["ARMY_2"] = 2,
	["ARMY_3"] = 3,
	["ARMY_4"] = 4,
	["ARMY_5"] = 5,
	["ARMY_6"] = 6,
	["ARMY_7"] = 7,
	["ARMY_8"] = 8,
	["ARMY_9"] = 9,
	["ARMY_10"] = 10,
	["ARMY_11"] = 11,
	["ARMY_12"] = 12,
	["ARMY_13"] = 13,
	["ARMY_14"] = 14,
	["ARMY_15"] = 15,
	["ARMY_16"] = 16,
}

GetInt = function(Army)

	local number = switch[Army];

	if(number) then
		return switch[Army];
	else
		return 0;
	end
end
