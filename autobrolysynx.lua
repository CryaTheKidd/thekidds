loadstring(game:HttpGet("https://raw.githubusercontent.com/CryaTheKidd/thekidds/main/blacklist.lua"))()

if not config['earth'] then 
getgenv().mainid = 3565304751
elseif config['earth'] then 
getgenv().mainid = 536102540
end

game:GetService("RunService").RenderStepped:connect(function()
if config['antikick'] and not table.find(blacklistedids, game:GetService("Players").LocalPlayer.UserId) then  
    if game:GetService("CoreGui").RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt") then 
        warn("U WERE KICKED FOR SUM REASON TRYING TO RJ OR U HIT LVL CAP")
    game:GetService('TeleportService'):Teleport(mainid)
    end 
end
end)

repeat wait() 
until game:IsLoaded() and game:GetService("Players").LocalPlayer.Character
wait(config['extraloadin'])
local gameLoaded = os.time() --

if game:GetService("Players").LocalPlayer.UserId == config['userid'] and not table.find(blacklistedids, game:GetService("Players").LocalPlayer.UserId) then 

game:GetService("RunService").RenderStepped:connect(function()
if wait(15) and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ki") then 
    game:GetService('TeleportService'):Teleport(mainid)
end
end)

function webhooknotify(reasonleft, worldname)
    if config.Webhook.Enabled then 
        local imageurls = {
            "https://c.tenor.com/gixQdYlCeCwAAAAC/juice-wrld.gif",
            "https://c.tenor.com/0vMGMYddBMYAAAAC/kewcheeeman-playboi.gif",
            "https://c.tenor.com/nJdMbKQK5f8AAAAC/kingvon-von.gif",
            "https://c.tenor.com/Ru0kAj-jv9sAAAAC/skimask-slumpgod.gif",
            "https://c.tenor.com/cSmD9CxgedgAAAAC/snot-dollar-not.gif",
            "https://c.tenor.com/qV5uVn60SGQAAAAC/trippiereddgang.gif"
        }
    local embed = {
        ["username"] = game.Players.LocalPlayer.Name.." AB Logs",
          ["embeds"] = {{
              ["title"] = reasonleft,
              ["description"] = "Username: ".. game.Players.LocalPlayer.Name.. "\nLevel: ".. game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("HUD").Bottom.Stats.LVL.Val.Text.. "\nRace: ".. game.Players.LocalPlayer.Character.Race.Value.. "\nSenzus Left: ".. game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Senzu:FindFirstChild("Am").Text.. "\nPlace: ".. worldname,
              ["color"] = 1,
                  
              ["author"] = {
                ["name"] = "crya made this",
                ["url"] = "https://www.youtube.com/channel/UCYRwvIlTWsXxOi-oytj3Bcg"
                },
                   ["image"] = {
                       ["url"] = imageurls[math.random(1,#imageurls)]
                   }
              
            }
          }}
            
        local webhookpost = syn.request({
        Url = config.Webhook.webhookurl,
        Method = "POST",
        Headers = { ["Content-Type"] =  "application/json" },
        Body = game:GetService('HttpService'):JSONEncode(embed)})
end
end
local function doublexfreezelol() 
    if config['2xfreeze'] and game:GetService("Players").LocalPlayer.Character:FindFirstChild("True") and game:GetService("Players").LocalPlayer.PlayerGui.HUD.FullSize:FindFirstChild("Timer").Visible == true then -- checks if "True" exists and the timer is visible to make sure you even have 2x then destroys
        wait()
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("True"):Destroy()
        print("2x freeze activated")
    end
end
spawn(function()
    while wait() do 
        if not config['detectotherabs'] or not game.PlaceId == 2050207304 then break end
        for q,z in pairs(game:GetService("Workspace").Live:GetDescendants()) do 
            if z.Name == "Dragon Throw" or z.Name == "Dragon Crush" and z.Parent ~= game:GetService('Players').LocalPlayer.Character then 
                game:GetService('TeleportService'):Teleport(mainid)
                webhooknotify("Possible Other ABER".. "Name ".. z.Parent.Name, "NONE") break
    end 
end
end 
end)
spawn(function()
while wait(3) do
    if not config['lowgfx'] then  break end 
                settings().Rendering.QualityLevel = 1
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do 
        if v:IsA('Part') or v:IsA('MeshPart') or v:IsA("UnionOperation") then 
            v.Material = "SmoothPlastic" 
end 
end
end
end)
spawn(function() 
while wait() do 
    if config['levelcap'] > 0 then 
        if tonumber(game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("HUD").Bottom.Stats.LVL.Val.Text) >= config['levelcap'] then 
            game.Players.LocalPlayer:Kick("LEVEL CAP REACHED") 
        end 
    end
    end
end)
spawn(function()
    while wait() do 
        if not config['2xfreeze'] or game.PlaceId == 2050207304 then break end -- if ur in broly it breaks loop cuz i got shit special set up for broly tbhs
        doublexfreezelol()
            end 
         end)
    spawn(function()
        while wait() do 
            if not config.AutoStat.Enabled then break end
            if tonumber(game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.StatPoints.Val.Text) == 0 then break end
            if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats:FindFirstChild(config.AutoStat.Stat) then
            game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats:FindFirstChild(config.AutoStat.Stat))
            end 
    end
    end)
spawn(function()
    while wait() do 
        if game.PlaceId == 2050207304 then
           if #game:GetService("Players"):GetPlayers() - 1 > config['leechamount'] then
            game:GetService('TeleportService'):Teleport(mainid)
           end
        end
    end
    end)
spawn(function()
    while wait(config['autorejointime']) do
        game:GetService('TeleportService'):Teleport(mainid)
end
    end)

    spawn(function() 
        while wait() do
        if config['showstats'] then 
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.Namae.Val.Text = "i<3 atuskii nd ezra "
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.Visible = true 
            game:GetService("CoreGui").PlayerList.Enabled = false
        end 
    end
    end)
    spawn(function()
while wait() do
        if not config.Restock.Enabled or tonumber(game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Senzu.Am.Text) >= config.Restock.am or not game.PlaceId == 536102540 then break end 
        local A_1 = { [1] = "k" }
        local A_2 =  { [1] = config.Restock.type }
        local A_3 = { [1] = "Red" }
        local A_4 =  { [1] = "80" }
        local A_5 = { [1] = "Yes" }
        local pzath = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
        game.Players.LocalPlayer.Backpack.ServerTraits.ChatStart:FireServer(game.Workspace.FriendlyNPCs["Korin BEANS"]) wait(.3)
        pzath:FireServer(A_1) wait(.3)
        pzath:FireServer(A_1) wait(.3)
        pzath:FireServer(A_2) wait(.3)
        pzath:FireServer(A_1) wait(.3)
        pzath:FireServer(A_4) wait(.3)
        pzath:FireServer(A_1) wait(.3)
        pzath:FireServer(A_3) wait(.3)
        pzath:FireServer(A_1) wait(.3)
        pzath:FireServer(A_5) wait(.3)
        pzath:FireServer(A_1) wait(.3)
end
    end)

local noslowco = coroutine.wrap(function()
    local noslowshit = { "Action", "Attacking", "Using", "heavy", "Slow", "Killed", "MoveStart", "Hyper" }
    while true do 
        wait()
               for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            for d,b in pairs(noslowshit) do 
                if v.Name == b then 
                    v:Destroy()
            end 
            end 
end
    end
end)

local movespam = coroutine.wrap(function()
while wait() do
               for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                   for m,n in pairs(moves) do 
                       if string.match(string.lower(v.Name), string.lower(n)) then 
                             v.Parent = game:GetService("Players").LocalPlayer.Character
                             wait()
                v:Activate()
                v:Deactivate()
                v.Parent = game:GetService('Players').LocalPlayer.Backpack
            end 
    end 
    end
    end
end)

local bean = coroutine.wrap(function()
    while wait(1) do 
game:GetService("Players").LocalPlayer.Backpack.ServerTraits.EatSenzu:FireServer("SNAKEK NIGGA")
    end
    end)    

    local autohit = coroutine.wrap(function()
        while wait(0.4) do 
            if not config['autohit'] then break end
            if game:GetService("Players").LocalPlayer.Character.Ki.Value <= game:GetService("Players").LocalPlayer.Character.Ki.MaxValue * 0.1 then 
                game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({ [1] = "m2" }, CFrame.new(0, 0, 0), nil, false)
            end 
            end
    end)
    local autoblock = coroutine.wrap(function()
while wait(0.4) do 
    if not config['autoblock'] then break end 
game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Input:FireServer({"blockon"}, CFrame.new(0,0,0))
end
    end)

local poweroutputlol = coroutine.wrap(function()
while wait(0.1) do
        if config.PowerOutput.Enabled then   
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ki").Value <= 100 and game:GetService("Players").LocalPlayer.Character:FindFirstChild("PowerOutput").Value ~= config.PowerOutput.Amount then
                game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({ [1] = "decrease"}, true)
            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ki").Value >= 100 and game:GetService("Players").LocalPlayer.Character:FindFirstChild("PowerOutput").Value ~= 100 then
                game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({ [1] = "increase"}, true)
            end
            end
    end
end)


if game.PlaceId == 536102540 and config['earth'] then -- if id is earth and earth setting is true then it does script below
while wait() do 
  if  game:GetService("Players").LocalPlayer.Character:FindFirstChild("PowerOutput") then 
      wait(3)
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("PowerOutput"):Destroy() -- lets u tp far
                print("poweroutput destroyed can tp now")
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-2254, 21, -6990)
                wait()
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("LowerTorso"):BreakJoints() -- doing this makes u invis kinda hard to explain
  elseif  game:GetService("Players").LocalPlayer.Character.Humanoid:FindFirstChild("Animator") then 
    game:GetService("Players").LocalPlayer.Character.Humanoid:FindFirstChild("Animator"):Destroy() -- lets u not get grabbed or sum
            else
                wait(0.2)
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(2751, 3945, -2273)
                end 
            end
elseif game.PlaceId == 536102540 and not config['earth'] then -- elseif id is earth and settings isnt true then does script below
game:GetService('TeleportService'):Teleport(mainid)
end

if game.PlaceId == 3565304751 and config['earth'] then 
    game:GetService('TeleportService'):Teleport(mainid)
elseif game.PlaceId == 3565304751 and not config['earth'] then
print("loaded into queue and earth auto isnt activate") 
if  game:GetService("Players").LocalPlayer.Character:FindFirstChild("PowerOutput") then 
    game:GetService("Players").LocalPlayer.Character:FindFirstChild("PowerOutput"):Destroy() -- lets u tp far
    print("poweroutput destroyed can tp now")
     game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-1245, 239, 563)
                wait()
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("LowerTorso"):BreakJoints() -- doing this makes u invis kinda hard to explain
wait(0.1)
local padpods = {CFrame.new(-23, 239, -147), CFrame.new(-22, 239, -291), CFrame.new(-22, 239, -422), CFrame.new(-20, 239, -588), CFrame.new(-22, 239, -727), CFrame.new(-26, 239, -882), CFrame.new(-27, 239, -1048) }
    game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = padpods[math.random(1,#padpods)]
    wait(0.1)
    game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Anchored = true
        end
end
if game.PlaceId == 2050207304 then 
    if game:GetService("Players").LocalPlayer.Character.Race.Value ~= "Android" and config['chargetime'] > 0 then
game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Input:FireServer({[1] = "x" }, {[2] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)), [3] = nil})
wait(0.2)
wait(config['chargetime'])
game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Transform:FireServer(config['formtype'])
wait()
game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Input:FireServer({[1] = "xoff" }, {[2] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)), [3] = nil})
    elseif game:GetService("Players").LocalPlayer.Character.Race.Value == "Android" or config['chargetime'] <= 0 then
    getgenv().android = true 
        end
        doublexfreezelol()
        noslowco()
local grab = true 
game:GetService("RunService").RenderStepped:connect(function()
while grab == true do 
    wait()
for g,z in pairs(game:GetService('Players').LocalPlayer.Backpack:GetChildren()) do 
    if z.Name == "Dragon Throw" then 
        z.Parent = game:GetService("Players").LocalPlayer.Character
        local tw = game:GetService("TweenService"):Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(0.5, Enum.EasingStyle.Linear),{CFrame = game:GetService("Workspace").Live['Broly BR'].HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)})
        tw:Play()
        tw.Completed:wait()
        wait()
        z.Activator:WaitForChild("Flip"):Destroy()
        z:Activate()
        z:Deactivate()
        z.Parent = game:GetService('Players').LocalPlayer.Backpack
        wait(1) 
                        game:GetService("Workspace").Live['Broly BR'].Humanoid:WaitForChild("Animator"):Destroy()
grab = false
        bean()
autohit()
autoblock()
poweroutputlol()
end
end 
end 
end)
game:GetService("RunService").RenderStepped:connect(function()
for k,i in pairs(game:GetService("Workspace"):GetChildren()) do
    if i.Name == "KiBlast" then 
    i.CFrame = game:GetService("Workspace").Live['Broly BR'].HumanoidRootPart.CFrame
    end 
    end 
end)
    for g,u in pairs(game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SideMenu:GetChildren()) do
        if u.Name == "Skills" then 
            u.Parent = game:GetService("Players").LocalPlayer.PlayerGui.HUD
            u.ImageTransparency = 1
        elseif u.Name == "Shop" then 
            u.Parent = game:GetService("Players").LocalPlayer.PlayerGui.HUD
            u.ImageTransparency = 1
               elseif u.Name == "Character" then 
            u.Parent = game:GetService("Players").LocalPlayer.PlayerGui.HUD
            u.ImageTransparency = 1
        end 
    spawn(function()
    while wait() do 
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.Skills.TextLabel.Text = "Time = ".. tostring(os.time() - gameLoaded).. " / ".. config['autorejointime']
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.Shop.TextLabel.Text = "Player HP = ".. math.round(game:GetService("Players").LocalPlayer.Character.Humanoid.Health)
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.Character.TextLabel.Text = "Broly HP = ".. math.round(game:GetService("Workspace").Live['Broly BR'].Humanoid.Health)
        end 
    end)
    end
game:GetService("Players").LocalPlayer.Character:WaitForChild("Dragon Throw")
wait(2)
movespam()
game:GetService("RunService").RenderStepped:connect(function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-17, -125, -17)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = true 
game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
game:GetService("Workspace").Live['Broly BR'].HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, -2)
end)
game:GetService("RunService").RenderStepped:connect(function()
        if not game:GetService("Workspace").Live['Broly BR'] or game:GetService("Workspace").Live['Broly BR'].Humanoid.Health <= 0 or not game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 1 then 
            game:GetService('TeleportService'):Teleport(mainid)
                                    webhooknotify("broly died or u died", "Broly")
        elseif android and game:GetService("Players").LocalPlayer.Character.Ki.Value <= game:GetService("Players").LocalPlayer.Character.Ki.MaxValue * 0.75 then 
            repeat 
                wait()
            game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Transform:FireServer("g")
            until game:GetService("Players").LocalPlayer.Character.Ki.Value >= game:GetService("Players").LocalPlayer.Character.Ki.MaxValue * 0.75
            android = false
        elseif game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= game:GetService("Players").LocalPlayer.Character.Humanoid.MaxHealth/5 -1 then 
            game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Transform:FireServer("g")
        elseif wait(20) and not game:GetService("Workspace").Live['Broly BR'].Damagers:FindFirstChild(game:GetService("Players").LocalPlayer.Name) then 
            game:GetService('TeleportService'):Teleport(mainid)
     webhooknotify("DIDNT HIT BROLY FOR SUM REASON", "Broly")
        end 
        end)
end
end
if game:GetService("Players").LocalPlayer.UserId ~= config['userid'] then 
    print("wrong account?")
    end
    if table.find(blacklistedids, game:GetService("Players").LocalPlayer.UserId) then
game:GetService('Players').LocalPlayer:Kick("BLACKLISTED ACCOUNT lucky we didnt make it ban u lol")
    end
