local Players = game:GetService("Players")
local PlayerDataModule = require(game.ServerStorage.modules.PlayerData)

Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local silver = Instance.new("IntValue")
	silver.Name = "Silver"
	silver.Parent = leaderstats

	local kills = Instance.new("IntValue")
	kills.Name = "Kills"
	kills.Parent = leaderstats

	local data = PlayerDataModule.LoadPData(player)
	silver.Value = data.Silver
	kills.Value = data.Kills
end)

Players.PlayerRemoving:Connect(PlayerDataModule.savePData)
game:BindToClose(function()
	for _, player in Players:GetPlayers() do
		PlayerDataModule.savePData(player)
		-- print("PlayerData saved successfully")
	end
end)
