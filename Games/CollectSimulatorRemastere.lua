-->> Waiting to game Load <<--
repeat wait() until game:IsLoaded()
-->> Tables for Future uses <<--
local GameTables = {
    __ = 6753141554;
    ___ = false;
    Services = {
        Workspace = game:GetService("Workspace");
        ReplicatedStorage = game:GetService("ReplicatedStorage");
        Players = game:GetService("Players");
        LPlayer = game:GetService("Players")["LocalPlayer"]
    },
    _Players_ = 0;
}
-->> Services <<--
Workspace = GameTables.Services.Workspace
ReplicatedStorage = GameTables.Services.ReplicatedStorage
Players = GameTables.Services.Players
LPlayer = GameTables.Services.LPlayer

-->> Functions <<--
function CheckForGameId(gameId)
    if gameId == GameTables.__ then
        GameTables.___ = true;
        return "true"
    else
        GameTables.___ = false;
        return "false"
    end
end

-->> Kick System <<--
if CheckForGameId(game.PlaceId) then
   if GameTables.___ == false then
     for i = 50000, 1500000 do
         warn("Game Not Found");
     end
wait(2)
LPlayer:Kick("Game not whitelisted")
end
end

local WorkspaceElements = #Workspace:GetChildren()
local ReplicatedStorageElements = #ReplicatedStorage:GetChildren()

function PlayerCount()
    GameTables._P_ = #Players:GetPlayers()
    return #Players:GetPlayers()
end
local ElementsToLoad = WorkspaceElements + ReplicatedStorageElements + PlayerCount()
for i,v in pairs(Players:GetPlayers()) do
   -- You can check something or do something
end
local Event = game:GetService("Workspace").Events.TSAH.RemoteEvent
Event:FireServer()
--// Auto spawn tycoon. A little help when u get kicked \\--
function SpawnTycoonAndUpdatePosition()
    local OldPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local PlayerUser = LPlayer.Name
    if Workspace:FindFirstChild("Tycoon2") and PlayerCount() == 1 then
        if game.Players.LocalPlayer.Character.HumanoidRootPart.Position == Workspace["Tycoon2"]["Base"].Position then
            return "Anchored"
        else
            Workspace[game:GetService("Players").LocalPlayer.Name].HumanoidRootPart.CFrame = Workspace["Tycoon2"]["Base"].CFrame
        end
    elseif Workspace:FindFirstChild("Tycoon2") and PlayerCount() >= 2 then
        for i,v in pairs(Workspace:GetChildren()) do
            if v:IsA("Model") and v.Name == "Tycoon2" then
                for i2,v2 in pairs(v:GetChildren()) do
                    if v:IsA("StringValue") and v.Name == "pName" and v.Value == PlayerUser then
                        if game.Players.LocalPlayer.Character.HumanoidRootPart.Position == v.Base.CFrame then
                            return "Anchored"
                        else
                            Workspace[game:GetService("Players").LocalPlayer.Name].HumanoidRootPart.CFrame = v.Base.CFrame
                        end
                    end
                end
            end
        end
    elseif not Workspace:FindFirstChild("Tycoon2") and PlayerCount() == 1 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-372, 4, -368, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
        wait (4)
        local Event = game:GetService("Workspace").Events.SpawnTycoon.RemoteEvent
        Event:FireServer()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-372, 4, -368, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
    elseif Workspace:FindFirstChild("Tycoon2") and PlayerCount() >= 2 then
        for i,v in pairs(Workspace:GetChildren()) do
            if v:IsA("Model") and v.Name == "Tycoon2" then
                for i2,v2 in pairs(v:GetChildren()) do
                    if v2:IsA("StringValue") and v2.Name == "pName" then
                        if not v2.Value == PlayerUser then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-372, 4, -368, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
                            wait (4)
                            local Event = game:GetService("Workspace").Events.SpawnTycoon.RemoteEvent
                            Event:FireServer()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-372, 4, -368, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
                        end
                    end
                end
            end
        end
    elseif not Workspace:FindFirstChild("Tycoon2") and PlayerCount() >= 2 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-372, 4, -368, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
        wait (4)
        local Event = game:GetService("Workspace").Events.SpawnTycoon.RemoteEvent
        Event:FireServer()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-372, 4, -368, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
    end
end
function RemoveAFK()
    if Workspace[LPlayer.Name]:FindFirstChild("AFK") then 
        Workspace[LPlayer.Name]:FindFirstChild("AFK"):Destroy()
        Workspace[LPlayer.Name]:FindFirstChild("AFKHandler"):Destroy()
        Workspace[LPlayer.Name].Head:FindFirstChild("AFKTag"):Destroy()
        game:GetService("StarterPlayer")["StarterCharacterScripts"]:WaitForChild("AFK"):Destroy()
        game:GetService("StarterPlayer")["StarterCharacterScripts"]:WaitForChild("AFKHandler"):Destroy()
        ReplicatedStorage:WaitForChild("AFK"):Destroy()
        local Event = game:GetService("Workspace").Events.TSAH.RemoteEvent
        Event:FireServer()
    end
end
function JoinOnKick()
    getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
        if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
            game:GetService("TeleportService"):Teleport(game.PlaceId)
        end
    end)
end
SpawnTycoonAndUpdatePosition()
JoinOnKick()
RemoveAFK()
local Event = game:GetService("Workspace").Event.Aura.Aura
Event:FireServer()

-->> Ui <<--

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Collect Simulator Recreated", "Synapse")

local Tab = Window:NewTab("Main")
local Tab1 = Window:NewTab("Auto Farm")
local Tab2 = Window:NewTab("Settings")
local Tab3 = Window:NewTab("Credits")

local Section = Tab:NewSection("Auto Gems")

local AutoRuby
local AutoSapphire
local AutoDiamond
local DoubleCashSkillTree
local DoubleEXPtree
local DoubleMultiTree
local DoubleWork
local SkillPoint
local Junkyard1
local Junkyard2
local Junkyard3
local Junkyard4
local Junkyard5
local Junkyard6
local AutoOpal
local SteelBeamOpal
local TireOpal
local IncreaseTireSteel
local IncreaseMultiBagSteel
local IncreaseVTires
local IncreaseSteelVTires
local AutoTar
local AutoClicks
local AutoCircle
local OmegaChance
local MaxRuby
local MaxSapphire
local MaxDiamond
local MaxUpgradedSquare
local MaxOpalUpgrades
local MaxSteelUpgrades
local MaxTiresUpgrades
local AutoGemMines
local ZanUpgrades
local AutoJadeUpgrades
local DiamondOneExp
local DiamondMultiUltra

--> Toggles <<--
Section:NewToggle("Auto Ruby", "Automaticly buys \n Rubies", function(state)
    if state then
        AutoRuby = state
    end
end)
Section:NewToggle("Auto Sapphire", "Automaticly buys \n Sapphire", function(state)
    if state then
        AutoSapphire = state
    end
end)
Section:NewToggle("Auto Diamond", "Automaticly buys \n Diamonds", function(state)
    if state then
        AutoDiamond = state
    end
end)
local Section2 = Tab:NewSection("Auto Skill Upgrades")
Section2:NewToggle("Auto Double Cash", "Automaticly buys \n Double Cash Upgrade", function(state)
    if state then
        DoubleCashSkillTree = state
    end
end)
Section2:NewToggle("Auto Double EXP", "Automaticly buys \n Double EXP Upgrade", function(state)
    if state then
        DoubleEXPtree = state
    end
end)
Section2:NewToggle("Auto Double Multi", "Automaticly buys \n Double Multi Upgrade", function(state)
    if state then
        DoubleMultiTree = state
    end
end)
Section2:NewToggle("Auto Double Miners Work", "Automaticly buys \n Double Miners Upgrade", function(state)
    if state then
        DoubleWork = state
    end
end)
Section2:NewToggle("Auto Double SkillPoints Work", "Automaticly buys \n Double SP Upgrade", function(state)
    if state then
        SkillPoint = state
    end
end)
local Section3 = Tab:NewSection("Auto Junkyards Upgrades")
Section3:NewToggle("Auto Double J1 Work", "Automaticly buys \n Double J1 Upgrade", function(state)
    if state then
        Junkyard1 = state
    end
end)
Section3:NewToggle("Auto Double J2 Work", "Automaticly buys \n Double J2 Upgrade", function(state)
    if state then
        Junkyard2 = state
    end
end)
Section3:NewToggle("Auto Double J3 Work", "Automaticly buys \n Double J3 Upgrade", function(state)
    if state then
        Junkyard3 = state
    end
end)
Section3:NewToggle("Auto Double J4 Work", "Automaticly buys \n Double J4 Upgrade", function(state)
    if state then
        Junkyard4 = state
    end
end)
Section3:NewToggle("Auto Double J5 Work", "Automaticly buys \n Double J5 Upgrade", function(state)
    if state then
        Junkyard5 = state
    end
end)
Section3:NewToggle("Auto Double J6 Work", "Automaticly buys \n Double J6 Upgrade", function(state)
    if state then
        Junkyard6 = state
    end
end)
local Section4 = Tab:NewSection("Auto Opal Upgrades")
Section4:NewToggle("Auto Opal", "Automaticly buys \n Opal", function(state)
    if state then
        AutoOpal = state
    end
end)
Section4:NewToggle("Auto Steal Beam", "Automaticly buys \n Steel Beam Opal Upgrade", function(state)
    if state then
        SteelBeamOpal = state
    end
end)
Section4:NewToggle("Auto Tire", "Automaticly buys \n Tires", function(state)
    if state then
        TireOpal = state
    end
end)
local Section5 = Tab:NewSection("Auto Steel Upgrades")
Section5:NewToggle("Auto Increase Tire", "Automaticly buys \n Tire at steels Upgrade", function(state)
    if state then
        IncreaseTireSteel = state
    end
end)
Section5:NewToggle("Auto Increase Multi", "Automaticly buys \n Multi at bag", function(state)
    if state then
        IncreaseMultiBagSteel = state
    end
end)
local Section6 = Tab:NewSection("Auto V-Tires Upgrades")
Section6:NewToggle("Auto Increase V-Tires", "Automaticly buys \n V-Tires Production", function(state)
    if state then
        IncreaseVTires = state
    end
end)
Section6:NewToggle("Auto Increase Steel V-Tires", "Automaticly buys \n V-Tires Production", function(state)
    if state then
        IncreaseSteelVTires = state
    end
end)
local Section7 = Tab:NewSection("Auto Other Upgrades")
Section7:NewToggle("Auto Tar", "Automaticly buys \n Tar", function(state)
    if state then
        AutoTar = state
    end
end)
Section7:NewToggle("Auto Clicks", "Automaticly Clicks \n in Clicks", function(state)
    if state then
        AutoClicks = state
    end
end)
Section7:NewToggle("Auto Circle", "Automaticly buys \n Circles", function(state)
    if state then
        AutoCircle = state
    end
end)
Section7:NewToggle("Auto Omega Chance", "Automaticly buys \n Omega Chances in square upgrades", function(state)
    if state then
        OmegaChance = state
    end
end)
Section7:NewButton("Max Ruby Upgrades", "Max Ruby Upgrades", function()
    print("Clicked")
end)
Section7:NewButton("Max Sapphires Upgrades", "Max Sapphires Upgrades", function()
    print("Clicked")
end)
Section7:NewButton("Max Diamonds Upgrades", "Max Diamonds Upgrades", function()
    print("Clicked")
end)
Section7:NewButton("Max Upgraded Square", "Max Upgraded Square", function()
    print("Clicked")
end)
Section7:NewButton("Max Opal Upgrades", "Max Opal Upgrades", function()
    print("Clicked")
end)
Section7:NewButton("Max Steel Upgrades", "Max Steel Upgrades", function()
    print("Clicked")
end)
Section7:NewButton("Max Tires Upgrades", "Max Tires Upgrades", function()
    print("Clicked")
end)
Section7:NewToggle("Auto Gem Mines", "Automaticly buys \n Gem Mines", function(state)
    if state then
        AutoGemMines = state
    end
end)
Section7:NewToggle("Auto Zan Upgrades", "Automaticly buys \n Zan Upgrades", function(state)
    if state then
        ZanUpgrades = state
    end
end)
Section7:NewToggle("Auto Jade Upgrades", "Automaticly buys \n Jade Upgrades", function(state)
    if state then
        AutoJadeUpgrades = state
    end
end)
Section7:NewToggle("Auto Diamond Player Level Exp Upgrades", "Automaticly buys \n Upgrade nil", function(state)
    if state then
        DiamondOneExp = state
    end
end)
Section7:NewToggle("Auto Diamond Ultra Multi Upgrades", "Automaticly buys \n Upgrade nil", function(state)
    if state then
        DiamondMultiUltra = state
    end
end)
