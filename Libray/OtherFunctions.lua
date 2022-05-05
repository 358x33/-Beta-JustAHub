local OtherFunctions = {}

local function OtherFunctions.getexploit()
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
local function OtherFunctions.GetExploit(EXPLOIT)
    if EXPLOIT then
        local Exploit = EXPLOIT
        if Exploit == "Synapse" or "Sentinel" or "Sirhurt" or "ProtoSmasher" or "Calmari" then
           return "PaidExploit"
        elseif Exploit == "Krnl" then
           return "KRNL"
        elseif Exploit == "WeAreDevs" or "EasyExploits" or "VIVA" or "Coco" then
           return "Free Exploit"
        end
    end
end
local function OtherFunctions.BlackListCheck(UserId,plr)
    if table.finc(UserId,BlackListedIds) then
        plr:kick("Blacklisted")
  end
end

return OtherFunctions
