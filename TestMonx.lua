local function CreateGUI(guiName)
    local gui = Instance.new("ScreenGui")
    gui.Name = "gdg"
    local ENB = Instance.new("ScrollingFrame")
    gui.Parent = game.CoreGui
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 190, 0, 350)
    Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    local color = 17295526026
    local selectedColor = Color3.fromRGB(255, 255, 255)
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    local Top = Instance.new("ImageLabel")
    Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Frame.BackgroundTransparency = 0
    local TextJanHub = Instance.new("TextLabel")
    Frame.BorderSizePixel = 0
    Frame.Active = true
    Frame.Draggable = true
    Frame.Parent = gui
    ENB.Name = "ENB"
    ENB.Parent = Frame
    ENB.BackgroundTransparency = 0
    Frame.BorderColor3 = Color3.fromRGB(40, 40, 40)
    Top.Size = UDim2.new(0, 190, 0, 30)
    ENB.BorderSizePixel = 0
    Top.Parent = Frame
    Top.BackgroundTransparency = 1
    ENB.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TextJanHub.Name = "TextJanHub"
    TextJanHub.Archivable = true
    TextJanHub.ClipsDescendants = false
    TextJanHub.Font = Enum.Font.SourceSans
    TextJanHub.Text = guiName
    TextJanHub.TextColor3 = selectedColor
    TextJanHub.TextSize = 18
    Top.Name = "Top"
    ENB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextJanHub.Parent = Top
    TextJanHub.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TextJanHub.BackgroundTransparency = 1
    local Line = Instance.new("Frame")
    Line.Size = UDim2.new(1, 0, 0, 1)
    Line.Position = UDim2.new(0, 0, 1, 0)
    Line.BackgroundColor3 = Color3.fromRGB(135, 135, 135)
    Line.BorderSizePixel = 0
    Line.Parent = Top
    TextJanHub.BorderColor3 = Color3.fromRGB(20, 20, 20)
    TextJanHub.BorderMode = Enum.BorderMode.Outline
    TextJanHub.BorderSizePixel = 1
    TextJanHub.Position = UDim2.new(0, -50, 0.033, 0)
    TextJanHub.Size = UDim2.new(0, 200, 0, 28)
    TextJanHub.Visible = true
    TextJanHub.ZIndex = 1
    Top.Image = "rbxassetid://" .. color
    ENB.Position = UDim2.new(0, -1, 0, 50)
    Top.BorderSizePixel = 0
    ENB.Size = UDim2.new(0, 190, 0, 300)
    Top.Position = UDim2.new(0, 0, 0, -2)
    ENB.ScrollBarImageTransparency = 1
    ENB.ScrollingDirection = Enum.ScrollingDirection.Y

    local function createButton(buttonName, buttonFunction)
        local button = Instance.new("TextButton")
        button.Size = UDim2.new(0, 180, 0, 30)
        button.Position = UDim2.new(0.5,0,0,135)
        button.AnchorPoint = Vector2.new(0.5, 0.5)
        button.Text = buttonName
        button.Parent = ENB
        button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.TextSize = 18
        button.MouseButton1Click:Connect(buttonFunction)
    end

    return {createButton = createButton}
end

return CreateGUI
