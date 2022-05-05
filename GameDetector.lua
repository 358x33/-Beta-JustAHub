repeat wait() until game:IsLoaded()

local PlayerService = game:GetService("Players")
local plr = PlayerService.LocalPlayer
local CoreGui = game:GetService("StarterGui")

local function getexploit()
    local exploit =
        (syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or
        (secure_load and "Sentinel") or
        (is_sirhurt_closure and "Sirhurt") or
        (pebc_execute and "ProtoSmasher") or
        (KRNL_LOADED and "Krnl") or
        (WrapGlobal and "WeAreDevs") or
        (isvm and "Proxo") or
        (shadow_env and "Shadow") or
        (jit and "EasyExploits") or
        (getreg()['CalamariLuaEnv'] and "Calamari") or
        (unit and "") or
        (IS_VIVA_LOADED and "VIVA") or
        (IS_COCO_LOADED and "Coco") or
        ("Undetectable")
 
    return exploit
end

function GetExploit()
    if getexploit() then
        local Exploit = getexploit()
        if Exploit == "Synapse" or "Sentinel" or "Sirhurt" or "ProtoSmasher" or "Calmari" then
           return "PaidExploit"
        elseif Exploit == "Krnl" then
           return "KRNL"
        elseif Exploit == "WeAreDevs" or "EasyExploits" or "VIVA" or "Coco" then
           return "Free Exploit"
        end
    end
end

GetExploit()

local GamesSupported = {
      [6753141554] = {
         ["name"] = "Collect Simulator Recreated";
         ["function"] = function()
           --loadstring(game:HttpGet("https://raw.githubusercontent.com/358x33/JustAHub/main/LuckSimulatorBetter.lua"))()
         end
    },
};

if GamesSupported[game.PlaceId] then
      pcall(GamesSupported[game.PlaceId]["function"])
      CoreGui:SetCore("SendNotification", {
          Title = (GamesSupported[game.PlaceId]["name"]) .. "\n is supported";
          Text = "Executing script to it!";
          Duration = 5;
      })
      pcall(GamesSupported[game.PlaceId]["function"])
  else
      pcall(GamesSupported[game.PlaceId]["function"])
      CoreGui:SetCore("SendNotification", {
          Title = "Your game is not supported";
          Text = "executing Universal script";
          Duration = 5;
      })
end
