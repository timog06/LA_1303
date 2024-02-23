local DataStoreService = game:GetService("DataStoreService")
local playerDataStore = DataStoreService:GetDataStore("PlayerData")
local module = {}

local tempPlayerData = {}

function module.updatePlayerData(player, silverToAdd, killsToAdd)
	local userId = tostring(player.UserId)
	tempPlayerData[userId] = tempPlayerData[userId] or {Silver = 0, Kills = 0}
	tempPlayerData[userId].Silver = tempPlayerData[userId].Silver + (silverToAdd or 0)
	tempPlayerData[userId].Kills = tempPlayerData[userId].Kills + (killsToAdd or 0)
	
	if player:FindFirstChild("leaderstats") then
		local leaderstats = player.leaderstats
		if leaderstats:FindFirstChild("Silver") then
			leaderstats.Silver.Value = tempPlayerData[userId].Silver
			print("Silver Updated")
		end
		if leaderstats:FindFirstChild("Kills") then
			leaderstats.Kills.Value = tempPlayerData[userId].Kills
			--print("Kills Updated")
		end
	end
end

function module.savePData(player)
	local userId = tostring(player.UserId)
	local playerData = tempPlayerData[userId] or {Silver = 0, Kills = 0}
	local success, errorMessage = pcall(function()
		playerDataStore:SetAsync(userId, playerData)
		print("Player Data saved successfully")
	end)
	if not success then
		warn("Failed to save data for " .. player.Name .. ": " .. errorMessage)
	end
end

function module.LoadPData(player)
	local userId = tostring(player.UserId)
	local success, data = pcall(function()
		return playerDataStore:GetAsync(userId)
	end)
	if success and data then
		tempPlayerData[userId] = data
		print("Successfully loaded Player Data")
	else
		tempPlayerData[userId] = {Silver = 0, Kills = 0}
		warn("Failed to load data for " .. player.Name)
	end
	return tempPlayerData[userId]
end

return module
