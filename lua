local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Force create the GUI directly in PlayerGui to bypass CoreGui blocks
local controlGui = Instance.new("ScreenGui")
controlGui.Name = "TrollControlPanel"
controlGui.ResetOnSpawn = false
controlGui.DisplayOrder = 999999999
controlGui.Enabled = true
controlGui.Parent = PlayerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 240, 0, 300)
mainFrame.Position = UDim2.new(0.5, -120, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = controlGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 8)
mainCorner.Parent = mainFrame

local mainStroke = Instance.new("UIStroke")
mainStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
mainStroke.Color = Color3.fromRGB(100, 100, 255)
mainStroke.Thickness = 2.5
mainStroke.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "m0_3a on discord (PC Fix)"
titleLabel.Font = Enum.Font.FredokaOne
titleLabel.TextSize = 14
titleLabel.TextColor3 = Color3.fromRGB(240, 240, 255)
titleLabel.Parent = mainFrame

local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, -20, 0, 40)
statusLabel.Position = UDim2.new(0, 10, 0, 40)
statusLabel.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
statusLabel.BackgroundTransparency = 0.2
statusLabel.Text = "GUI loaded successfully!"
statusLabel.Font = Enum.Font.SourceSans
statusLabel.TextSize = 13
statusLabel.TextColor3 = Color3.fromRGB(120, 255, 160)
statusLabel.Parent = mainFrame

local statusCorner = Instance.new("UICorner")
statusCorner.CornerRadius = UDim.new(0, 5)
statusCorner.Parent = statusLabel

local testButton = Instance.new("TextButton")
testButton.Size = UDim2.new(1, -20, 0, 40)
testButton.Position = UDim2.new(0, 10, 0, 100)
testButton.BackgroundColor3 = Color3.fromRGB(100, 50, 150)
testButton.Text = "Click to Test Action"
testButton.Font = Enum.Font.FredokaOne
testButton.TextSize = 14
testButton.TextColor3 = Color3.fromRGB(255, 255, 255)
testButton.Parent = mainFrame

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 5)
btnCorner.Parent = testButton

testButton.MouseButton1Click:Connect(function()
    statusLabel.Text = "Button clicked! Working properly."
    print("[mm2run] Test button clicked successfully.")
end)

print("[mm2run] Universal PC fix GUI loaded into PlayerGui.")
