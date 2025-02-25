local luaSandboxMode = false
if not _G then
  _G = Shared
  luaSandboxMode = true
end
local player
do
  if luaSandboxMode then
    player = owner
  else
    player = game.Players.LocalPlayer
  end
end
_G.LSM = luaSandboxMode
_G.repo = "https://raw.githubusercontent.com/TheLuaFox86/TerminalFox-Launcher/main/"
_G.TLFR = "https://raw.githubusercontent.com/TheLuaFox86/TerminalFox-Roblox/main/"
_G.wget = function(url)
  return game:GetService("HttpService"):GetAsync(url, true)
end
local gui = {}
gui.body = Instance.new("ScreenGui")
gui.body.Parent = player.PlayerGui
a = wget(TLFR .. "TerminalFox.lua")
print(a)
loadstring(a)(player, gui)
if luaSandboxMode then
  shared = _G
end
