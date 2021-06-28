
local l__ReplicatedStorage__1 = game:GetService("ReplicatedStorage");
local l__Bindable__9 = l__ReplicatedStorage__1:WaitForChild("Bindable");

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
	Title = "Anime Fighters Simulator",
	Style = 1,
	SizeX = 400,
	SizeY = 350,
	Theme = "Light",
	ColorOverrides = {
		MainFrame = Color3.fromRGB(235,235,235)
	}
})

local Page = X.New({
	Title = "Auto-Farm"
})
local Page2 = X.New({
	Title = "Teleports"
})
local mobs = {}
local mob = nil
local farm = false

for i,v in pairs(game:GetService("Workspace").Worlds:GetDescendants()) do
	if v.Parent.Name == "Enemies" and not table.find(mobs,v.DisplayName.Value) then
		table.insert(mobs,v.DisplayName.Value)
	end
end


Page.Toggle({
	Text = "On or Off",
	Callback = function(value)
		farm = value
	end,
	Enabled = false
})
Page.Dropdown({
	Text = "Choose an option",
	Callback = function(value)
		mob = value
	end,
	Options = mobs
})


game:GetService('RunService').Stepped:connect(function()
	if farm then
		pcall(function()
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end)		
	end
end)
spawn(function()
	while wait() do
		if farm then
			for i,v in pairs(game:GetService("Workspace").Worlds:GetDescendants()) do
				if v:FindFirstChild("DisplayName") and v.DisplayName.Value == mob and v:FindFirstChild("HumanoidRootPart") and farm then
					pcall(function()
						for i,v in pairs(game:GetService("Workspace").Effects:GetDescendants()) do
							if v.Name == "Base" then
								v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
							end
						end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.CFrame.Position + Vector3.new(0,0,0))
wait(.2)
						repeat wait()
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.CFrame.Position + Vector3.new(0,0,0))
							for i,k in pairs(game:GetService("Workspace").Pets:GetDescendants()) do
								if k.Name == "Owner" and k.Value == game.Players.LocalPlayer and not k.Parent.Attacking.Value then
									l__Bindable__9.SendPet:Fire(v, false);
								end
							end	
							game:GetService("ReplicatedStorage").Remote.ClickerDamage:FireServer()
						until v.Health.Value <= 0 or v == nil or v.HumanoidRootPart == nil or v.DisplayName.Value ~= mob or not farm
						
					end)
				end
			end
		end
	end
end)



Page2.Button({
	Text = "Auto Farm",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-1988.17688, -166.017609, 2195.2522, -0.345323771, 1.29102871e-08, 0.938483596, -5.01178254e-09, 1, -1.56006728e-08, -0.938483596, -1.00907585e-08, -0.345323771)
	end
})
	Text = "DBZ",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-2382,-185,435)
	end
})

Page2.Button({
	Text = "Naruto",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-91,-183,2606)

	end
})
Page2.Button({
	Text = "JoJo",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(174,-183,-1458)

	end
})

Page2.Button({
	Text = "One Piece",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(1711, -182,297)

	end
})
Page2.Button({
	Text = "Hero Academy",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-1985.85352, -183.701065, 2034.69934, -0.999461949, 2.55725539e-08, -0.0327994302, 2.55913903e-08, 1, -1.54471727e-10, 0.0327994302, -9.93771621e-10, -0.999461949)

	end
})