-- SCRIPT: ĐỒ TỂ CLICK COIN (LUAU) --
-- Vibe: Vả sạch coin như cách mày vả đứa ép ăn chay bằng mồm 😭🥊 --

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local remote = ReplicatedStorage.Network.Click

-- [CÀI ĐẶT NHÂN PHẨM] --
local waitTime = 0.1 -- Tốc độ vả (0.1 là vừa đẹp, đừng ham 0.01 dễ bay acc)

print("Đang khởi động Script... Chuẩn bị húp 2k máu mỗi hit! 🤡")

while task.wait(waitTime) do
    -- Game này nó yêu cầu gửi 1 cái 'Ray' (Tia quét)
    -- Tao sẽ tạo một cái tia ảo từ đầu mày hướng xuống đất để 'đánh lừa' hệ thống
    local p = game.Players.LocalPlayer.Character.PrimaryPart.Position
    local fakeRay = Ray.new(p, Vector3.new(0, -10, 0))
    
    -- Bơm lệnh lên Server
    remote:FireServer(fakeRay)
    
    -- print("Đang vả coin bằng tia ảo... Vibe liêm khiết vcl! ✨")
end
