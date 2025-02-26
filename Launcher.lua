local luaSandboxMode = false
--if owner then
  luaSandboxMode = true
--end
local player
do
  if luaSandboxMode then
    player = owner
  else
    player = game.Players.LocalPlayer
  end
end
LSM = luaSandboxMode
print(_G.LSM, _G)
repo = "https://raw.githubusercontent.com/TheLuaFox86/TerminalFox-Launcher/main/"
TLFR = "https://raw.githubusercontent.com/TheLuaFox86/TerminalFox-Roblox/main/"
wget = function(url)
  return game:GetService("HttpService"):GetAsync(url, true)
end
gui = Instance.new("ScreenGui")
print(gui)
gui.Parent = player.PlayerGui
a = wget(TLFR .. "TerminalFox.lua")
print(a)
loadstring(a)(player, gui, wget, TLFR, repo)
