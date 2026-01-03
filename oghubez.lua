local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- Cấu hình cửa sổ (Tên nghiêm túc vcl luôn)
local Window = Fluent:CreateWindow({
    Title = "NEXUS PRIME EXECUTIVE v1.0",
    SubTitle = "Advanced Automation System",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- Hiệu ứng mờ ảo đốn tim
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Nhấn Ctrl trái để ẩn/hiện
})

-- Tạo các Tab
local Tabs = {
    Main = Window:AddTab({ Title = "Dashboard", Icon = "home" }),
    Settings = Window:AddTab({ Title = "System Settings", Icon = "settings" })
}

-- Thông báo khởi tạo
Fluent:Notify({
    Title = "System Authenticated",
    Content = "Welcome, Executive User. Nexus Prime is ready.",
    Duration = 5
})

-- Thêm tính năng vào Tab Main
Tabs.Main:AddParagraph({
    Title = "Account Statistics",
    Content = "Status: Operational\nRAM Usage: Stable (16GB Environment)"
})

Tabs.Main:AddButton({
    Title = "Execute Enchant Decryption (100x)",
    Description = "High-speed server invoke for Enchant Bundles",
    Callback = function()
        Window:Dialog({
            Title = "Confirm Action",
            Content = "Are you sure you want to process 100x bundles?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        -- Dán lệnh InvokeServer của mày vào đây
                        game:GetService("ReplicatedStorage").Network.GiftBag_Open:InvokeServer("Enchant Bundle", 100)
                    end
                },
                { Title = "Cancel" }
            }
        })
    end
})

local Toggle = Tabs.Main:AddToggle("AutoConsume", {Title = "Auto Cocktail Consumption", Default = false })

Toggle:OnChanged(function()
    print("Auto Consume State:", Toggle.Value)
end)

-- Chốt hạ
Fluent:SelectTab(1)
