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
--// Ui \\-- Finally lol 
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Collect Simulator Recreated", "Synapse")
local Tab = Window:NewTab("Main")
local Tab1 = Window:NewTab("Auto Farm")
local Tab2 = Window:NewTab("Settings")
local Tab3 = Window:NewTab("Credits")
