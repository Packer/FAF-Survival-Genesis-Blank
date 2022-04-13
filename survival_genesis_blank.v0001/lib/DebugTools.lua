-- Packer's Survival MOD Script
-- Created by Packer


SpawnModUnits = function(UnitList)

	local count = 0;
	local position = Scenario.MasterChain._MASTERCHAIN_.Markers["ARMY_1"].position

	--Loop through each mod
	--Tier
	for i = 1, 4 do																
		--LAND
		for x = 1, table.getn(UnitList["Land T" .. i]) do	--Type
			for y = 1, table.getn(UnitList["Land T" .. i][x]) do			--Unit
				CreateUnitHPR(UnitList["Land T" .. i][x][y], "ARMY_1", position[1] + count, position[2], position[3], 0,0,0);
			end
		end
		--AIR
		for x = 1, table.getn(UnitList["Air T" .. i]) do	--Type
			for y = 1, table.getn(UnitList["Air T" .. i][x]) do			--Unit
				CreateUnitHPR(UnitList["Air T" .. i][x][y], "ARMY_1", position[1] + count, position[2], position[3], 0,0,0);
			end
		end
		--NAVY
		for x = 1, table.getn(UnitList["Navy T" .. i]) do	--Type
			for y = 1, table.getn(UnitList["Navy T" .. i][x]) do			--Unit
				CreateUnitHPR(UnitList["Navy T" .. i][x][y], "ARMY_1", position[1] + count, position[2], position[3], 0,0,0);
			end
		end
		count = count + 1;
	end
end