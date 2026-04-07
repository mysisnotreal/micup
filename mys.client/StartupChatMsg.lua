local TCS = game:GetService("TextChatService")
local PlrName = game:GetService("Players").LocalPlayer.Name
local Char = game.Players.LocalPlayer.Character

if StartupChatMsg == true then
TCS:DisplayBubble(Char,"Welcome " .. "@" .. PlrName .. "! To mys.client" .. "\n\n #1 mic up script!")
else
    warn("Startup Chat Message Disabled")
end
