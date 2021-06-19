if game.PlaceId == 6833753645 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()
    local Window = Library.CreateLib("Murder Mystery 2", "Ocean")
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


    MainSection:NewButton("Lobby", "Teleporte para o Lobby", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Workspace.LotteryBalls.LotteryBall.position)

    end)
 
    -- PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
 
    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
 
    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)

    local themeTab = Window:NewTab("UI Settings")
     local themeSection = themeTab:NewSection("Theme")
     local settingsSection = themeTab:NewSection("UI")
     
     settingsSection:NewKeybind("Alterar UI", "Ligue ou deslige o UI", Enum.KeyCode.Tab , function()
         Library:ToggleUI()
     end)
     
     for theme, color in pairs(customColors) do
         themeSection:NewColorPicker(theme, "Change your "..theme, Color3.fromRGB(255,255,255), function(color3)
             Library:ChangeColor(theme, color3)
         end)
     end




     ---2 GAME  

elseif game.PlaceId == 142823291  then
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

    local Main = Window:NewTab("Menu")
    local MainSection = Main:NewSection("Menu")
    

    MainSection:NewButton("Pegue a arma", "Utilize para pegar a arma", function()
        game.Workspace.GunDrop.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(2,0,0)
    end)

    MainSection:NewButton("Pegue o Player", "Utilize um Gear ", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Joaotipo/Ideia-unica/master/Pega.lua", true))()
    end)

    MainSection:NewKeybind("Esp", "KeybindInfo", Enum.KeyCode.Z, function ()
        function getChance()
            local Event = game:GetService("ReplicatedStorage").GetChance
            chance = Event:InvokeServer()[1]
            return chance
            end
            
            
            function setESP(part, good)
            if part:FindFirstChild("BoxHandleAdornment") then else
                local ESP = Instance.new("BoxHandleAdornment")
                if good then
                    ESP.Color3 = Color3.fromRGB(17, 164, 255)
                else
                    ESP.Color3 = Color3.fromRGB(255, 0, 0)
                end
                ESP.ZIndex = 1
                ESP.AlwaysOnTop = true
                ESP.Size = part.Size
                ESP.Transparency = 0.5
                ESP.Adornee = part
                ESP.Parent = part
            end
            end
            
            function getMurderer()
            
            local Event = game:GetService("ReplicatedStorage").GetPlayerData
            local info = Event:InvokeServer()
            
            
            
            for i,v in pairs(game.Players:GetChildren()) do
            if info[v.Name] ~= nil then
            if info[v.Name]["Role"] == "Murderer" then
            return v
            end
            end
            end
            end
            
            function getSheriff()
            local Event = game:GetService("ReplicatedStorage").GetPlayerData
            local info = Event:InvokeServer()
            
            
            
            for i,v in pairs(game.Players:GetChildren()) do
            if info[v.Name] ~= nil then
            if info[v.Name]["Role"] == "Sheriff" then
            return v
            end
            end
            end
            end
            
            function espMurderer()
            if getMurderer() ~= nil then
                for i,v in pairs(getMurderer().Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        setESP(v,false)
                    end
                end
            end
            end
            
            function espSheriff()
            if getSheriff() ~= nil then
                for i,v in pairs(getSheriff().Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        setESP(v,true)
                    end
                end
            end
            end
            
            espSheriff()
            espMurderer()

    end)


    -- PLAYER

    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewToggle("Noclip", false, function(npca)
        getgenv().oxi = npca
    game:GetService("RunService").RenderStepped:Connect(function()
    if getgenv().oxi then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end)
end)




    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)

    PlayerSection:NewSlider("Jumppower", "Mude seu jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)

    PlayerSection:NewToggle("Desloquei os Emotes", "aa", function(flyzin)
        getgenv().flyzao = flyzin
        while wait(.50) do
        if getgenv().flyzao then
            local plr = game.Players.LocalPlayer
            local mouse = plr:GetMouse()
 
        localplayer = plr
       
        if workspace:FindFirstChild("Core") then
            workspace.Core:Destroy()
        end
       
        local Core = Instance.new("Part")
        Core.Name = "Core"
        Core.Size = Vector3.new(0.05, 0.05, 0.05)
 
        spawn(function()
            Core.Parent = workspace
            local Weld = Instance.new("Weld", Core)
            Weld.Part0 = Core
            Weld.Part1 = localplayer.Character.LowerTorso
            Weld.C0 = CFrame.new(0, 0, 0)
        end)
       
        workspace:WaitForChild("Core")
       
        local torso = workspace.Core
        flying = true
        local speed=10
        local keys={a=false,d=false,w=false,s=false}
        local e1
        local e2
        local function start()
            local pos = Instance.new("BodyPosition",torso)
            local gyro = Instance.new("BodyGyro",torso)
            pos.Name="EPIXPOS"
            pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            pos.position = torso.Position
            gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            gyro.cframe = torso.CFrame
            repeat
                wait()
                localplayer.Character.Humanoid.PlatformStand=true
                local new=gyro.cframe - gyro.cframe.p + pos.position
                if not keys.w and not keys.s and not keys.a and not keys.d then
                    speed=5
                end
                if keys.w then
                    new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+0
                end
                if keys.s then
                    new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+0
                end
                if keys.d then
                    new = new * CFrame.new(speed,0,0)
                    speed=speed+0
                end
                if keys.a then
                    new = new * CFrame.new(-speed,0,0)
                    speed=speed+0
                end
                if speed>10 then
                    speed=5
                end
                pos.position=new.p
                if keys.w then
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
                elseif keys.s then
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
                else
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame
                end
            until flying == false
            if gyro then gyro:Destroy() end
            if pos then pos:Destroy() end
            flying=false
            localplayer.Character.Humanoid.PlatformStand=false
            speed=10
        end
        e1=mouse.KeyDown:connect(function(key)
            if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
            if key=="w" then
                keys.w=true
            elseif key=="s" then
                keys.s=true
            elseif key=="a" then
                keys.a=true
            elseif key=="d" then
                keys.d=true
            elseif key=="x" then
                if flying==true then
                    flying=false
                else
                    flying=true
                    start()
                end
            end
        end)
        e2=mouse.KeyUp:connect(function(key)
            if key=="w" then
                keys.w=false
            elseif key=="s" then
                keys.s=false
            elseif key=="a" then
                keys.a=false
            elseif key=="d" then
                keys.d=false
            end
        end)


        else
            break   
        end
        
        end
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
end




