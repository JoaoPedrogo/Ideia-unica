if game.PlaceId == 142823291 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Murder Mystery 2", "Sentinel")
    local customColors = {
        SchemeColor = Color3.fromRGB(0,255,255),
        Background = Color3.fromRGB(0, 0, 0),
        Header = Color3.fromRGB(0, 0, 0),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(20, 20, 20)
    }



    

    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    


    MainSection:NewButton("Emojis Unlocker", "Desbloque os todos emojis", function()
        local emote = require(game:GetService("ReplicatedStorage").Modules.EmoteModule).GeneratePage


        local target = game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Game:FindFirstChild("Emotes")

        local emotelist = {"headless","zombie","zen","ninja","floss","dab","sit"}

        emote(emotelist,target,'- Zp1Hub -')
        return(0)
    
    end)
    MainSection:NewButton("Back Flip", " De Black Flip , Utilize 'z' ou 'x' ", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/FvPmQFb3", true))()
    
    end)

    MainSection:NewButton("Rejoin", "Rejoin Rapido!", function()
        local A_1 = "Irei Relogar!!!" 
        local A_2 = "normalchat"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Joaotipo/Ideia-unica/master/Teste1.lua", true))()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)

    end)

    MainSection:NewButton("Xbox Knife", "Ganhe 1 faca do Xbox(Uso apenas 1 vez)", function()
        local Event = game:GetService("ReplicatedStorage").IsXbox
        Event:FireServer(A_1)
    end)

    -- PLAYER

    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)

    PlayerSection:NewSlider("Jumppower", "Mude seu jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)



    --Teleport
    local tele = Window:NewTab("Teleport")
    local TeleSelec = tele:NewSection("Teleport")

    TeleSelec:NewButton("Lobby", "Teleporte para o Lobby", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108.555397, 138.34993, -2.0568428, -0.999821842, 7.74865825e-08, 0.0188788231, 7.67478809e-08, 1, -3.98527256e-08, -0.0188788231, -3.83967098e-08, -0.999821842)

    end)
    
    TeleSelec:NewButton("Sala de Votos", "Teleporte para a Votação", function() 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108.623703, 140.699936, 82.8541107, -0.99929136, 4.58146481e-08, -0.03764062, 4.44958062e-08, 1, 3.58754484e-08, 0.03764062, 3.41751729e-08, -0.99929136)
    end)

    TeleSelec:NewButton("Sala de Votos", "Teleporte para a Votação", function() 
        local FrontflipKey = Enum.KeyCode.Z
local BackflipKey = Enum.KeyCode.X
local ca = game:GetService("ContextActionService")
local Zp1 = game:GetService("Players").LocalPlayer
local h = 0.0174533
local antigrav
wait(1)
function Zp1Frontflip(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		Zp1.Character.Humanoid:ChangeState("Jumping")
		wait()
		Zp1.Character.Humanoid.Sit = true
		for i = 1,360 do 
			delay(i/720,function()
			Zp1.Character.Humanoid.Sit = true
				Zp1.Character.HumanoidRootPart.CFrame = Zp1.Character.HumanoidRootPart.CFrame * CFrame.Angles(-h,0,0)
			end)
		end
		wait(0.55)
		Zp1.Character.Humanoid.Sit = false
	end
end
wait(1)
function Zp1Backflip(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		Zp1.Character.Humanoid:ChangeState("Jumping")
		wait()
		Zp1.Character.Humanoid.Sit = true
		for i = 1,360 do
			delay(i/720,function()
			Zp1.Character.Humanoid.Sit = true
				Zp1.Character.HumanoidRootPart.CFrame = Zp1.Character.HumanoidRootPart.CFrame * CFrame.Angles(h,0,0)
			end)
		end
		wait(0.55)
		Zp1.Character.Humanoid.Sit = false
	end
end

function Zp1Airjump(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		Zp1.Character:FindFirstChildOfClass'Humanoid':ChangeState("Seated")
		wait()
		Zp1.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")	
	end
end


ca:BindAction("Zp1Frontflip",Zp1Frontflip,false,FrontflipKey)
ca:BindAction("Zp1Backflip",Zp1Backflip,false,BackflipKey)

    end)
     -- UI

     local themeTab = Window:NewTab("UI Settings")

     local themeSection = themeTab:NewSection("Theme")
     local settingsSection = themeTab:NewSection("UI")
     
     settingsSection:NewKeybind("Toggle UI", "Toggle UI off/on", Enum.KeyCode.F, function()
         Library:ToggleUI()
     end)
     
     for theme, color in pairs(customColors) do
         themeSection:NewColorPicker(theme, "Change your "..theme, Color3.fromRGB(255,255,255), function(color3)
             Library:ChangeColor(theme, color3)
         end)
     end
end


-- OUTRO JOGO PORRA
