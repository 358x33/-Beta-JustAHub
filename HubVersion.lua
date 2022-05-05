local HubVersion = {}

  local Version = "1.0.5"
  local function HubVersion.GetScriptVersion(scriptVersion)
  if scriptVersion == Version then
  return "True"
  else
  loadstring(game:HttpGet("https://github.com/358x33/BetaJustAHub/blob/main/GameDetector.lua"))()
  print("Test")
  end
  end
  
return HubVersion
