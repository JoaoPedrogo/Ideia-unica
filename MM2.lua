local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Murder Mystery 2", "Ocean")
    local customColors = {
        SchemeColor = Color3.fromRGB(0,255,255),
        Background = Color3.fromRGB(0, 0, 0),
        Header = Color3.fromRGB(0, 0, 0),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(20, 20, 20)
    }


    -- MAIN

    local noclip = false

    local Main = Window:NewTab("Menu")
    local MainSection = Main:NewSection("Menu")

    MainSection:NewToggle("Noclip",false, function(t)
        noclip = t
    end) 
    
    
    game:GetService("RunService").RenderStepped:Connect(function()
        if noclip == true then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end)

    MainSection:NewToggle("Autopick Gun",false, function(t)
        if t then
            sheriff.Character.Humanoid.Died:Connect(function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = sheriff.Character.HumanoidRootPart.CFrame end)
        end
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


    PlayerSection:NewSlider("Gravity","a ",500,0, function(t)
        workspace.Gravity = t
    end)
    --Teleport

    local tele = Window:NewTab("Teleportes")
    local TeleSelec = tele:NewSection("Teleportes")

    TeleSelec:NewButton("Lobby", "Teleporte para o Lobby", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108.220894, 138.34993, -8.00693607, -0.998759985, 5.47697177e-09, 0.0497849509, -5.04570205e-11, 1, -1.11024846e-07, -0.0497849509, -1.1088968e-07, -0.998759985)

    end)

    TeleSelec:NewButton("Sala de Votos", "Teleporte para á Sala de Votação", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108.300034, 140.699936, 83.0500946, -0.999918878, 0, -0.0127105247, 0, 1, 0, 0.0127105247, 0, -0.999918878)

    end)


    

    TeleSelec:NewButton("Mapa", "Teleporte ao Mapa", function()
        local Workplace = workspace:GetChildren()
			
			for i, Thing in pairs(Workplace) do
			
			    local ThingChildren = Thing:GetChildren()
			    for i, Child in pairs(ThingChildren) do
			        if Child.Name == "Spawns" then
			           
			           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Child.Spawn.CFrame
			
			        end
			    end
			end
        
    end)


    --Emoticons

    local EmotesTab = Window:NewTab("Emotes")
    local EmotesSelect = EmotesTab:NewSection("Emotes")



    EmotesSelect:NewToggle("Desloquei os Emotes", "aa", function(emojis)
        getgenv().unlokemojis = emojis
        while wait(.50) do
        if getgenv().unlokemojis then

        local emote = require(game:GetService("ReplicatedStorage").Modules.EmoteModule).GeneratePage

        local target = game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Game:FindFirstChild("Emotes")
        local emotelist = {"headless","zombie","zen","ninja","floss","dab"}
        emote(emotelist,target,'Zp1Hub')

        wait(5)

        local emote = require(game:GetService("ReplicatedStorage").Modules.EmoteModule).GeneratePage

        local target = game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Game:FindFirstChild("Emotes")
        local emotelist = {"headless","zombie","zen","ninja","floss","dab"}
        emote(emotelist,target,'Zp1Hub')

        wait(5)
        else
            break
            
        end
        
        end
    end)







    --SCRITPS




    local scriptsTab = Window:NewTab("Scripts")
    local ScritpsSelect = scriptsTab:NewSection("Scritps")

    ScritpsSelect:NewToggle("Chuva de Neve [Lobby]", false, function(t)
        getgenv().trinkets = t
        while wait(.50) do
        if getgenv().trinkets then
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-93.0485687, 135.349854, 32.291275, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-88.2016983, 214.949646, 26.0045185))
        wait(.15)
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-135.913986, 135.927429, 32.2448158, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-139.395325, 199.530563, 31.4863529))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-148.305725, 135.299973, 0.77532959, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-149.205017, 241.627182, 1.82075))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-93.0485687, 135.349854, 32.291275, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-88.2016983, 214.949646, 26.0045185))
        wait(.20)
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-134.343765, 135.34993, -6.17374468, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-138.80513, 191.064224, -14.889327))
        wait(.25)
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-93.980957, 137.314133, 51.5695686, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-91.2855988, 181.802811, 55.2736893))
        wait(.30)
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-144.681091, 135.299973, 21.4473381, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-143.589325, 199.925827, 23.1932049))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-104.170914, 135.34993, -13.5782242, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-103.82811, 207.518036, -12.2987804))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-110.845703, 137.249939, 19.4613647, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-104.201996, 213.790588, 18.4110184))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-94.0307693, 135.299973, -5.85320091, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-89.7315369, 195.047073, -9.37215042))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-136.762802, 135.299973, 12.4914198, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-133.715988, 178.571854, 11.5002613))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-109.4217, 135.34993, -2.62724876, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-111.584511, 201.841965, -4.91439819))
        wait(.35)
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-123.258858, 135.299973, 9.14574909, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-123.320435, 199.480331, 4.68139601))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-124.436897, 135.299973, -8.30159378, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-126.420258, 207.703918, -8.54559708))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-148.146545, 135.299973, 0.815302849, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-148.218887, 200.730118, 7.59676218))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-66.9346848, 135.34993, 3.48529744, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-68.5078354, 205.184204, 3.31624126))
        wait(.35)
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-128.355438, 135.348938, 37.3748932, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-123.581474, 216.089569, 35.5691566))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-148.305725, 135.299973, 0.77532959, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-149.205017, 241.627182, 1.82075))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-125.051964, 135.299973, 55.2797737, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-132.086563, 211.508621, 57.7867546))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-80.8262024, 135.348938, 37.2293434, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-80.6500778, 194.846375, 37.0665588))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-80.8262024, 135.348938, 37.2293434, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-80.6500778, 194.846375, 37.0665588))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-91.7409439, 137.035278, 56.6473045, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-88.4661331, 201.670441, 52.1185226))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-118.790657, 135.882645, 48.8661499, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-127.558113, 207.564026, 46.3921127))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-96.3198776, 135.34993, 22.5395145, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-98.6172104, 194.361588, 25.4049129))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-89.0555191, 135.347931, 10.9356031, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-91.5897827, 205.626358, 8.75068665))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-124.035576, 135.349945, 33.5994377, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-122.495781, 220.867508, 34.1040573))
        wait(.30)
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-96.3198776, 135.34993, 22.5395145, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-98.6172104, 194.361588, 25.4049129))
        wait(.30)
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-76.2730713, 135.299973, 29.1378193, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-77.831398, 186.719025, 31.6790524))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-103.630791, 135.34993, 48.9078827, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-101.520714, 201.264191, 46.8644028))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-114.087357, 137.710724, 26.4584332, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-112.803642, 203.646988, 33.1113472))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-104.17189, 135.34993, 32.6308212, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-100.724457, 201.454025, 29.4685001))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-92.1135406, 137.690704, 4.44717121, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-98.6469955, 189.057877, 1.61088514))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-133.468567, 138.895584, 47.3663788, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-138.840683, 192.962646, 47.5225449))
        workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-148.146545, 135.299973, 0.815302849, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-148.218887, 200.730118, 7.59676218))
        else
            break
            
        end
        
        end
    end)

    ScritpsSelect:NewToggle("Chuva de Faca [Lobby]", false, function(t)
        getgenv().faquinha = t
        while wait(.50) do
        if getgenv().faquinha then
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-93.0485687, 135.349854, 32.291275, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-88.2016983, 214.949646, 26.0045185))
        wait(.15)
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-135.913986, 135.927429, 32.2448158, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-139.395325, 199.530563, 31.4863529))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-148.305725, 135.299973, 0.77532959, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-149.205017, 241.627182, 1.82075))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-93.0485687, 135.349854, 32.291275, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-88.2016983, 214.949646, 26.0045185))
        wait(.20)
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-134.343765, 135.34993, -6.17374468, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-138.80513, 191.064224, -14.889327))
        wait(.25)
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-93.980957, 137.314133, 51.5695686, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-91.2855988, 181.802811, 55.2736893))
        wait(.30)
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-144.681091, 135.299973, 21.4473381, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-143.589325, 199.925827, 23.1932049))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-104.170914, 135.34993, -13.5782242, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-103.82811, 207.518036, -12.2987804))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-110.845703, 137.249939, 19.4613647, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-104.201996, 213.790588, 18.4110184))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-94.0307693, 135.299973, -5.85320091, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-89.7315369, 195.047073, -9.37215042))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-136.762802, 135.299973, 12.4914198, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-133.715988, 178.571854, 11.5002613))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-109.4217, 135.34993, -2.62724876, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-111.584511, 201.841965, -4.91439819))
        wait(.35)
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-123.258858, 135.299973, 9.14574909, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-123.320435, 199.480331, 4.68139601))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-124.436897, 135.299973, -8.30159378, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-126.420258, 207.703918, -8.54559708))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-148.146545, 135.299973, 0.815302849, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-148.218887, 200.730118, 7.59676218))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-66.9346848, 135.34993, 3.48529744, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-68.5078354, 205.184204, 3.31624126))
        wait(.35)
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-128.355438, 135.348938, 37.3748932, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-123.581474, 216.089569, 35.5691566))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-148.305725, 135.299973, 0.77532959, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-149.205017, 241.627182, 1.82075))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-125.051964, 135.299973, 55.2797737, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-132.086563, 211.508621, 57.7867546))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-80.8262024, 135.348938, 37.2293434, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-80.6500778, 194.846375, 37.0665588))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-80.8262024, 135.348938, 37.2293434, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-80.6500778, 194.846375, 37.0665588))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-91.7409439, 137.035278, 56.6473045, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-88.4661331, 201.670441, 52.1185226))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-118.790657, 135.882645, 48.8661499, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-127.558113, 207.564026, 46.3921127))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-96.3198776, 135.34993, 22.5395145, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-98.6172104, 194.361588, 25.4049129))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-89.0555191, 135.347931, 10.9356031, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-91.5897827, 205.626358, 8.75068665))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-124.035576, 135.349945, 33.5994377, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-122.495781, 220.867508, 34.1040573))
        wait(.30)
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-96.3198776, 135.34993, 22.5395145, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-98.6172104, 194.361588, 25.4049129))
        wait(.30)
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-76.2730713, 135.299973, 29.1378193, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-77.831398, 186.719025, 31.6790524))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-103.630791, 135.34993, 48.9078827, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-101.520714, 201.264191, 46.8644028))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-114.087357, 137.710724, 26.4584332, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-112.803642, 203.646988, 33.1113472))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-104.17189, 135.34993, 32.6308212, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-100.724457, 201.454025, 29.4685001))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-92.1135406, 137.690704, 4.44717121, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-98.6469955, 189.057877, 1.61088514))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-133.468567, 138.895584, 47.3663788, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-138.840683, 192.962646, 47.5225449))
        workspace[game.Players.LocalPlayer.Name].Knife.Throw:FireServer(CFrame.new(-148.146545, 135.299973, 0.815302849, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-148.218887, 200.730118, 7.59676218))
        else
            break
            
        end
        
        end
    end)

    
     -- UI

     local themeTab = Window:NewTab("UI Settings")
     local themeSection = themeTab:NewSection("Theme")
     local settingsSection = themeTab:NewSection("UI")
     
     settingsSection:NewKeybind("Alterar UI", "Ligue ou deslige o UI", Enum.KeyCode.T , function()
         Library:ToggleUI()
     end)
     
     for theme, color in pairs(customColors) do
         themeSection:NewColorPicker(theme, "Change your "..theme, Color3.fromRGB(255,255,255), function(color3)
             Library:ChangeColor(theme, color3)
         end)
     end
