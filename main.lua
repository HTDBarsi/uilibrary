local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/OxyHub/main/documentation", true))()

local Window = Lib:Create();

local Trolling = Window:CreateSection("Trolling")
local Farm = Window:CreateSection("Farming")

Trolling:CreateButton("Fire All", "Sets everyone on fire", function()
pcall(function()
game:GetService("ReplicatedStorage").RemoteFunctions.PurchaseTemporaryItem:InvokeServer("Club Red", "Dragonbreath Potion")
game.Players.LocalPlayer.Backpack["Dragonbreath Potion"].Parent = game.Players.LocalPlayer.Character
for i,v in pairs(game.Players:GetChildren()) do 
game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name)["Dragonbreath Potion"].GenerateEffect:FireServer(game.Workspace:FindFirstChild(v.Name).Head)
game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name)["Dragonbreath Potion"].GenerateEffect:FireServer(game.Workspace:FindFirstChild(v.Name).HumanoidRootPart)
end
game.Players.LocalPlayer.Character["Dragonbreath Potion"].Parent = game.Players.LocalPlayer.Backpack
end)
end)

Trolling:CreateButton("Crash", "Crash players", function()
local face = game.Players.LocalPlayer.Character.Head:FindFirstChild("face") or game.Players.LocalPlayer.Character.Head:FindFirstChild("Face") or nil
if face ~= nil then
	face:Destroy()
end
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
pcall(function()
while wait() do
	for i = 1,250 do
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Model") then
				v:Destroy()
			end
		end
		spawn(function()
			game:GetService("ReplicatedStorage").RemoteFunctions.NameChangerRequest:InvokeServer("a", "");
		end)
	end
end
end)
end)

Trolling:CreateButton("Spawn", "Spawn heads", function()
pcall(function()
local face = game.Players.LocalPlayer.Character.Head:FindFirstChild("face") or game.Players.LocalPlayer.Character.Head:FindFirstChild("Face") or nil
if face ~= nil then
face:Destroy()
end
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
for i = 1,500 do
spawn(function()
game:GetService("ReplicatedStorage").RemoteFunctions.NameChangerRequest:InvokeServer("a", "");
end)
end
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end)
end)

Trolling:CreateButton("spam", "rainbow name / spam leaderboard", function()
pcall(function()
while wait() do
	for i,v in pairs(game.Teams:GetChildren()) do wait()
		if v.Name ~= "Principal" then
			game:GetService("ReplicatedStorage").RemoteFunctions.ChangeTeam:FireServer(v.Name);
		end
	end
end
end)
end)

Farm:CreateButton("Start", "Moneyfarm", function()
pcall(function()
while wait(2.6) do
	game:GetService("ReplicatedStorage").RemoteFunctions.NotIdle:FireServer();
	game.ReplicatedStorage.RemoteFunctions.fishUpdate:InvokeServer(game.Players.LocalPlayer.userId + 420)
end
end)
end)