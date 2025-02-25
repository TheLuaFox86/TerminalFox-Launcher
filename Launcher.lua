
repo = "https://raw.githubusercontent.com/TheLuaFox86/TerminalFox-Launcher/main/"
TLFR = "https://raw.githubusercontent.com/TheLuaFox86/TerminalFox-Roblox/main/"
_G.wget = function(url)
  return game:GetService("HttpService"):GetAsync(url, true)
end
local player = owner or game.Players.LocalPlayer
local gui = {}
gui.body = Instance.new("ScreenGui")
gui.body.Parent = player.PlayerGui
a = wget(TLFR .. "TerminalFox.lua")
print(a)
loadstring(a)(player, gui, repo, TLFR, wget)
