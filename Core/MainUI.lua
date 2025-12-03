local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "RLXHubUI"
ScreenGui.Parent = game.CoreGui

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 480, 0, 310)
Main.Position = UDim2.new(0.5, -240, 0.5, -155)
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)

local UIStroke = Instance.new("UIStroke", Main)
UIStroke.Color = Color3.fromRGB(255, 120, 0)
UIStroke.Thickness = 1

local UICorner = Instance.new("UICorner", Main)
UICorner.CornerRadius = UDim.new(0, 12)

local TabHolder = Instance.new("Frame", Main)
TabHolder.Size = UDim2.new(0, 140, 1, 0)
TabHolder.BackgroundColor3 = Color3.fromRGB(15, 15, 15)

Instance.new("UICorner", TabHolder).CornerRadius = UDim.new(0, 12)

local TabContent = Instance.new("Frame", Main)
TabContent.Size = UDim2.new(1, -150, 1, -10)
TabContent.Position = UDim2.new(0, 150, 0, 5)
TabContent.BackgroundTransparency = 1

local Tabs = {}

function AddTab(name)
    local btn = Instance.new("TextButton", TabHolder)
    btn.Size = UDim2.new(1, -10, 0, 35)
    btn.Position = UDim2.new(0, 5, 0, (#TabHolder:GetChildren() * 38))
    btn.Text = name
    btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)

    local frame = Instance.new("Frame", TabContent)
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.Visible = false
    frame.BackgroundTransparency = 1

    Tabs[name] = frame

    btn.MouseButton1Click:Connect(function()
        for _, fr in pairs(Tabs) do fr.Visible = false end
        frame.Visible = true
    end)

    return frame
end

return AddTab
