local function getplrcount()
    return #game.Players:GetPlayers()
end

_G.BottomBarManager = _G.BottomBarManager or {}

local BtmBarName = "BtmBar"

local existingGui = game.CoreGui:FindFirstChild(BtmBarName)
if existingGui then
    existingGui:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = BtmBarName
ScreenGui.DisplayOrder = 99999
ScreenGui.Parent = game.CoreGui

local btmbarcon
local BottomBarFrame

local function getplrcount()
    return #Players:GetPlayers()
end

local function CreateBottomBar()
    if BottomBarFrame then
        BottomBarFrame:Destroy()
        if btmbarcon then
            btmbarcon:Disconnect()
            btmbarcon = nil
        end
    end

    local BottomBar = Instance.new("Frame")
    BottomBar.Name = "BottomBar"
    BottomBar.Size = UDim2.new(1, 0, 0, 30)
    BottomBar.Position = UDim2.new(0, 0, 1, -30)
    BottomBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    BottomBar.BackgroundTransparency = 0.8
    BottomBar.Parent = ScreenGui
    BottomBarFrame = BottomBar

    local TimeLabel = Instance.new("TextLabel")
    TimeLabel.Size = UDim2.new(0.3, 0, 1, 0)
    TimeLabel.Position = UDim2.new(0, 0, 0, 0)
    TimeLabel.BackgroundTransparency = 1
    TimeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TimeLabel.TextSize = 20
    TimeLabel.Font = Enum.Font.SourceSansBold
    TimeLabel.TextXAlignment = Enum.TextXAlignment.Left
    TimeLabel.Text = "Time: " .. os.date("%I:%M %p")
    TimeLabel.Parent = BottomBar

    local PlayerInfoLabel = Instance.new("TextLabel")
    PlayerInfoLabel.Size = UDim2.new(0.3, 0, 1, 0)
    PlayerInfoLabel.Position = UDim2.new(0.7, 0, 0, 0)
    PlayerInfoLabel.BackgroundTransparency = 1
    PlayerInfoLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    PlayerInfoLabel.TextSize = 22
    PlayerInfoLabel.Font = Enum.Font.SourceSansBold
    PlayerInfoLabel.TextXAlignment = Enum.TextXAlignment.Right
    PlayerInfoLabel.Text = "Players: " .. getplrcount() .. " | " .. Players.LocalPlayer.Name
    PlayerInfoLabel.Parent = BottomBar

    local MiddleTextLabel = Instance.new("TextLabel")
    MiddleTextLabel.Size = UDim2.new(0.4, 0, 1, 0)
    MiddleTextLabel.Position = UDim2.new(0.3, 0, 0, 0)
    MiddleTextLabel.BackgroundTransparency = 1
    MiddleTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    MiddleTextLabel.TextSize = 18
    MiddleTextLabel.Font = Enum.Font.SourceSansBold
    MiddleTextLabel.Text = "Sent With ❤️ By MYS!"
    MiddleTextLabel.TextXAlignment = Enum.TextXAlignment.Center
    MiddleTextLabel.Parent = BottomBar

    btmbarcon =
        RunService.Heartbeat:Connect(
        function()
            if BottomBar.Parent then
                TimeLabel.Text = "Time: " .. os.date("%I:%M %p")
                PlayerInfoLabel.Text = "Players: " .. getplrcount() .. " | " .. Players.LocalPlayer.Name
            end
        end
    )
end

function _G.BottomBarManager.Enable()
    if not BottomBarFrame or not BottomBarFrame.Parent then
        CreateBottomBar()
    end
end

function _G.BottomBarManager.Disable()
    if BottomBarFrame then
        BottomBarFrame:Destroy()
        BottomBarFrame = nil
    end
    if btmbarcon then
        btmbarcon:Disconnect()
        btmbarcon = nil
    end
end

_G.BottomBarManager.Enable()
