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

return OtherFunctions
