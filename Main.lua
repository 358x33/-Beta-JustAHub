--// Events \\--
local event = game:GetService("ReplicatedStorage").Remotes

--// Event \\--
local Toggle_Setting = event["toggle setting"]
local Bubbler = event["blow bubble"]

--// FPS BOOST \\--
if _G.FPSBOOST == true then
  function Setting_Toggler()
    local v1 = {
      [1] = {
          [1] = "ShowBubbles"
      }, 
      [2] = {
          [1] = false
      }
  }
     local v2 = {
      [1] = {
          [1] = "BubbleFX"
      }, 
      [2] = {
          [1] = false
      }
  }
     local v3 = {
      [1] = {
          [1] = "SFX"
      }, 
      [2] = {
          [1] = false
      }
  }
     local v4 = {
      [1] = {
          [1] = "HideMyPets"
      }, 
      [2] = {
          [1] = false
      }
  }
     local v5 = {
      [1] = {
          [1] = "ShowOtherPets"
      }, 
      [2] = {
          [1] = false
      }
  }
     local v6 = {
      [1] = {
          [1] = "ShowBoosts"
      }, 
      [2] = {
          [1] = false
      }
  }
    Toggle_Setting:FireServer(v1)
    Toggle_Setting:FireServer(v2)
    Toggle_Setting:FireServer(v3)
    Toggle_Setting:FireServer(v4)
    Toggle_Setting:FireServer(v5)
    Toggle_Setting:FireServer(v6)
  end

  _G.Settings = {
      Players = {
          ["Ignore Me"] = true, -- Ignore your Character
          ["Ignore Others"] = true -- Ignore other Characters
      },
      Meshes = {
          Destroy = false, -- Destroy Meshes
          LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
      },
      Images = {
          Invisible = true, -- Invisible Images
          LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
          Destroy = false, -- Destroy Images
      },
      Other = {
          ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
          ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
          ["No Explosions"] = true, -- Makes Explosion's invisible
          ["No Clothes"] = true, -- Removes Clothing from the game
          ["Low Water Graphics"] = true, -- Removes Water Quality
          ["No Shadows"] = true, -- Remove Shadows
          ["Low Rendering"] = true, -- Lower Rendering
          ["Low Quality Parts"] = true -- Lower quality parts
      }
  }
  loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
end
while _G.AutoBlow then
local c1 = {
    [1] = {
        [1] = false
    }, 
    [2] = {
        [1] = 2
    }
}

Bubbler:FireServer(c1)
wait (0.001)
end
