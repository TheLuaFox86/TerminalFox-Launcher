
repo = "https://raw.githubusercontent.com/TheLuaFox86/TerminalFox-Launcher/main/"
TLFR = "https://raw.githubusercontent.com/TheLuaFox86/TerminalFox-Roblox/main/"
wget = function(url)
  return game:GetService("HttpService"):GetAsync(url, true)
end
local player = owner or game.Players.LocalPlayer
local gui = {}
gui.body = Instance.new("ScreenGui")
gui.body.Parent = player.PlayerGui
a = wget(TLFR .. "TerminalFox.lua")
print(a)
loadstring()(player, gui, repo, TLFR, wget)
