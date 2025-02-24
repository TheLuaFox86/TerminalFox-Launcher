_G.repo = "https://raw.githubusercontent.com/TheLuaFox86/TerminalFox-Launcher/main/"
_G.TLFR = "https://raw.githubusercontent.com/TheLuaFox86/TerminalFox-Roblox/main/"
_G.wget = function(url)
  return game:GetService("HttpService"):GetAsync(url)
end
local gui = {}
gui.body = instance.new("ScreenGui")
gui.body.Parent = game.Players.LocalPlayer.PlayerGui
loadstring(wget(TLFR .. "TerminalFox.lua"), true)(game.Players.LocalPlayer, gui)
