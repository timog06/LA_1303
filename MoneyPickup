local TweenService = game:GetService('TweenService')
local Part = script.Parent
local ProximityPrompt = Part:FindFirstChild("ProximityPrompt")
local PlayerDataModule = require(game.ServerStorage.modules.PlayerData)

TweenService:Create(Part, TweenInfo.new(5.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1), {Orientation = Part.Orientation + Vector3.new(0, 360, 0)}):Play()

local function despawnPart()
	if Part and Part.Parent then
		Part:Destroy()
		print("Silver Despawned")
	end
end

if ProximityPrompt then
	ProximityPrompt.Triggered:Connect(function(player)
		PlayerDataModule.updatePlayerData(player, math.random(10, 200), 0)
		Part:Destroy()
		print("Silver added to Player balance")
	end)

	delay(300, despawnPart)
else
	warn("ProximityPrompt not found")
end
