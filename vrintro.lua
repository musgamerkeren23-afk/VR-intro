local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer

local function playIntroAnimation(onFinished)
    local C_BG = Color3.fromRGB(10, 0, 0)
    local C_RED = Color3.fromRGB(180, 0, 0)
    local C_BRIGHTRED = Color3.fromRGB(220, 0, 0)

    local introGui = Instance.new("ScreenGui")
    introGui.Name = "H4ll0Intro"
    introGui.ResetOnSpawn = false
    introGui.DisplayOrder = 999
    introGui.Parent = player:WaitForChild("PlayerGui")

    local bg = Instance.new("Frame")
    bg.Size = UDim2.new(1, 0, 1, 0)
    bg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    bg.BorderSizePixel = 0
    bg.Parent = introGui

    local container = Instance.new("Frame")
    container.Size = UDim2.new(0, 400, 0, 220)
    container.Position = UDim2.new(0.5, -200, 0.5, -110)
    container.BackgroundColor3 = C_BG
    container.BackgroundTransparency = 1
    container.BorderSizePixel = 0
    container.ZIndex = 3
    container.Parent = bg
    Instance.new("UICorner", container).CornerRadius = UDim.new(0, 12)

    local containerStroke = Instance.new("UIStroke")
    containerStroke.Color = C_RED
    containerStroke.Thickness = 2
    containerStroke.Transparency = 1
    containerStroke.Parent = container

    local skullLabel = Instance.new("TextLabel")
    skullLabel.Size = UDim2.new(1, 0, 0, 60)
    skullLabel.Position = UDim2.new(0, 0, 0, 18)
    skullLabel.BackgroundTransparency = 1
    skullLabel.Text = "💀"
    skullLabel.TextSize = 48
    skullLabel.Font = Enum.Font.GothamBold
    skullLabel.TextTransparency = 1
    skullLabel.ZIndex = 4
    skullLabel.Parent = container

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, -20, 0, 40)
    titleLabel.Position = UDim2.new(0, 10, 0, 82)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = "H4ll0 W0RLD HUB"
    titleLabel.TextColor3 = C_BRIGHTRED
    titleLabel.TextSize = 28
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextTransparency = 1
    titleLabel.TextXAlignment = Enum.TextXAlignment.Center
    titleLabel.ZIndex = 4
    titleLabel.Parent = container

    local subLabel = Instance.new("TextLabel")
    subLabel.Size = UDim2.new(1, -20, 0, 20)
    subLabel.Position = UDim2.new(0, 10, 0, 126)
    subLabel.BackgroundTransparency = 1
    subLabel.Text = "Loading your experience..."
    subLabel.TextColor3 = Color3.fromRGB(120, 120, 120)
    subLabel.TextSize = 12
    subLabel.Font = Enum.Font.Gotham
    subLabel.TextTransparency = 1
    subLabel.TextXAlignment = Enum.TextXAlignment.Center
    subLabel.ZIndex = 4
    subLabel.Parent = container

    local progressBg = Instance.new("Frame")
    progressBg.Size = UDim2.new(1, -40, 0, 6)
    progressBg.Position = UDim2.new(0, 20, 0, 160)
    progressBg.BackgroundColor3 = Color3.fromRGB(30, 0, 0)
    progressBg.BorderSizePixel = 0
    progressBg.ZIndex = 4
    progressBg.Parent = container
    Instance.new("UICorner", progressBg).CornerRadius = UDim.new(1, 0)

    local progressFill = Instance.new("Frame")
    progressFill.Size = UDim2.new(0, 0, 1, 0)
    progressFill.BackgroundColor3 = C_RED
    progressFill.BorderSizePixel = 0
    progressFill.ZIndex = 5
    progressFill.Parent = progressBg
    Instance.new("UICorner", progressFill).CornerRadius = UDim.new(1, 0)

    local statusLabel = Instance.new("TextLabel")
    statusLabel.Size = UDim2.new(1, -40, 0, 16)
    statusLabel.Position = UDim2.new(0, 20, 0, 172)
    statusLabel.BackgroundTransparency = 1
    statusLabel.Text = "Initializing..."
    statusLabel.TextColor3 = Color3.fromRGB(100, 100, 100)
    statusLabel.TextSize = 11
    statusLabel.Font = Enum.Font.Gotham
    statusLabel.TextXAlignment = Enum.TextXAlignment.Left
    statusLabel.ZIndex = 4
    statusLabel.Parent = container

    local versionLabel = Instance.new("TextLabel")
    versionLabel.Size = UDim2.new(1, -40, 0, 16)
    versionLabel.Position = UDim2.new(0, 20, 0, 172)
    versionLabel.BackgroundTransparency = 1
    versionLabel.Text = "v1.0.0"
    versionLabel.TextColor3 = Color3.fromRGB(60, 0, 0)
    versionLabel.TextSize = 11
    versionLabel.Font = Enum.Font.Gotham
    versionLabel.TextXAlignment = Enum.TextXAlignment.Right
    versionLabel.ZIndex = 4
    versionLabel.Parent = container

    -- Animate
    TweenService:Create(container, TweenInfo.new(0.5, Enum.EasingStyle.Quart), {BackgroundTransparency = 0}):Play()
    TweenService:Create(containerStroke, TweenInfo.new(0.5), {Transparency = 0}):Play()
    task.wait(0.4)

    TweenService:Create(skullLabel, TweenInfo.new(0.4), {TextTransparency = 0}):Play()
    task.wait(0.3)

    TweenService:Create(titleLabel, TweenInfo.new(0.1), {TextTransparency = 0.5}):Play()
    task.wait(0.1)
    TweenService:Create(titleLabel, TweenInfo.new(0.1), {TextTransparency = 0.8}):Play()
    task.wait(0.1)
    TweenService:Create(titleLabel, TweenInfo.new(0.1), {TextTransparency = 0}):Play()
    task.wait(0.2)

    TweenService:Create(subLabel, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
    task.wait(0.3)

    local statusMessages = {
        {text = "Loading modules...", progress = 0.2},
        {text = "Connecting to hub...", progress = 0.4},
        {text = "Applying horror theme...", progress = 0.6},
        {text = "Initializing VR hands...", progress = 0.8},
        {text = "Ready!", progress = 1.0},
    }

    for _, msg in ipairs(statusMessages) do
        statusLabel.Text = msg.text
        TweenService:Create(progressFill, TweenInfo.new(0.4, Enum.EasingStyle.Quart), {
            Size = UDim2.new(msg.progress, 0, 1, 0)
        }):Play()
        task.wait(0.5)
    end

    for i = 1, 3 do
        titleLabel.TextTransparency = 0.7
        task.wait(0.05)
        titleLabel.TextTransparency = 0
        task.wait(0.05)
    end

    task.wait(0.3)

    TweenService:Create(container, TweenInfo.new(0.5, Enum.EasingStyle.Quart), {
        BackgroundTransparency = 1,
        Position = UDim2.new(0.5, -200, 0.5, -130)
    }):Play()
    TweenService:Create(titleLabel, TweenInfo.new(0.4), {TextTransparency = 1}):Play()
    TweenService:Create(skullLabel, TweenInfo.new(0.4), {TextTransparency = 1}):Play()
    TweenService:Create(subLabel, TweenInfo.new(0.4), {TextTransparency = 1}):Play()
    TweenService:Create(bg, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
    task.wait(0.6)

    introGui:Destroy()
    if onFinished then onFinished() end
end

-- Jalanin intro, abis itu load VR script
playIntroAnimation(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/musgamerkeren23-afk/Script-VR/refs/heads/main/vrmobile.lua"))()
end)
