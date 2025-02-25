
_G.repo = "https://raw.githubusercontent.com/TheLuaFox86/TerminalFox-Launcher/main/"
_G.TLFR = "https://raw.githubusercontent.com/TheLuaFox86/TerminalFox-Roblox/main/"
_G.wget = function(url)
  return game:GetService("HttpService"):GetAsync(url, true)
end
local player = owner or game.Players.LocalPlayer
local gui = {}
gui.body = Instance.new("ScreenGui")
gui.body.Parent = player.PlayerGui
loadstring(wget(TLFR .. "TerminalFox.lua"))(player, gui)
