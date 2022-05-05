local UpdateLog = {}

local function UpdateLog.ShowLogs(Version)
   if Version then
        return "Update Log: Added, fixed, removed, List Ui"
   else
      warn("What? How did this not work")
   end
end
return UpdateLog
