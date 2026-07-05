repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")

repeat task.wait() until Players.LocalPlayer
repeat task.wait() until Players.LocalPlayer.Character
repeat task.wait() until Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

local SCRIPT_URL = "https://raw.githubusercontent.com/phuoculi1810-hub/scan_travell/refs/heads/main/scan_travel.lua"

while true do
    print("[Loader] Đang tải script...")

    local ok, err = pcall(function()
        loadstring(game:HttpGet(SCRIPT_URL))()
    end)

    if ok then
        print("[Loader] Script đã khởi chạy.")
        break
    else
        warn("[Loader] Lỗi: " .. tostring(err))
        warn("[Loader] Thử lại sau 10 giây...")
        task.wait(10)
    end
end
