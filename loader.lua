repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local player = Players.LocalPlayer

repeat task.wait() until player
repeat task.wait() until player.Character
repeat task.wait() until player.Character:FindFirstChild("HumanoidRootPart")

task.wait(2)

loadstring(game:HttpGet("https://raw.githubusercontent.com/phuoculi1810-hub/scan_travell/refs/heads/main/scan_travel.lua"))()
