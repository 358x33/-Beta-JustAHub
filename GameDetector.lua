repeat wait() until game:IsLoaded()

local PlayerService = game:GetService("Players")
local plr = PlayerService.LocalPlayer
local CoreGui = game:GetService("StarterGui")

local GamesSupported = {
      [6753141554] = {
         ["name"] = "Collect Simulator Recreated";
         ["function"] = function()
           
         end
    },
      ["ID"] = {
         ["name"] = "NAMES";
         ["function"] = function()
           
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
