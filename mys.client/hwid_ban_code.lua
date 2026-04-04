local HttpService = game:GetService("HttpService")

local success, result = pcall(function()
    return game:HttpGet(hwid_banned_list)
end)

if not success then
    warn("Failed to fetch blacklist.")
    return
end

local blacklist = HttpService:JSONDecode(result)
local hwid = gethwid()

for _, banned_hwid in ipairs(blacklist.blacklisted) do
    if hwid == banned_hwid then
        game:GetService("Players").LocalPlayer:Kick("You are blacklisted from mys.client.")
        return
    end
end

warn("Not blacklisted. Continuing...")
