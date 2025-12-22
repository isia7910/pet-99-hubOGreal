-- SCRIPT: ĐỒ TỂ COIN GÓC NHÌN THỨ 3 (LUAU) --
-- Vibe: Vả sạch coin từ xa như cách mày nhìn crush từ phía sau 😭💔 --

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local remote = ReplicatedStorage.Network.Click
local camera = workspace.CurrentCamera

-- [THÔNG TIN MÀY CẦN CHECK] --
local coinFolder = workspace:WaitForChild("Coins") -- Thay "Coins" bằng tên Folder chứa Coin của mày

print("Script 'Pháp sư góc nhìn thứ 3' đã lên nòng! 🤡")

while task.wait(0.1) do
    local playerPos = game.Players.LocalPlayer.Character.PrimaryPart.Position
    
    for _, coin in pairs(coinFolder:GetChildren()) do
        -- Kiểm tra xem cái Coin có gần mày không (Bán kính 50 mét)
        local coinPos = (coin:IsA("Model") and coin.PrimaryPart or coin).Position
        if (coinPos - playerPos).Magnitude < 50 then
            
            -- TẠO TIA TỪ CAMERA ĐẾN COIN (Góc nhìn thứ 3 chuẩn bài)
            local origin = camera.CFrame.Position
            local direction = (coinPos - origin).Unit * 100
            local fakeRay = Ray.new(origin, direction)
            
            -- Bơm lệnh 'vả' lên Server
            remote:FireServer(fakeRay)
            -- print("Đang vả Coin: " .. coin.Name .. " từ xa! ✨")
        end
    end
end
