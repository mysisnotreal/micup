-- property of mys
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local screenGui
local labelList = {}
local activeLabels = {}

local function getUIParent()
    if type(gethui) == "function" then
        local ok, res = pcall(gethui)
        if ok and res then return res end
    end
    if type(get_hidden_gui) == "function" then
        local ok, res = pcall(get_hidden_gui)
        if ok and res then return res end
    end
    if type(get_hidden_ui) == "function" then
        local ok, res = pcall(get_hidden_ui)
        if ok and res then return res end
    end
    return CoreGui
end

local function initGUI()
    if screenGui then return end
    local core = getUIParent()
    for _, parent in ipairs({CoreGui, core}) do
        for _, obj in ipairs(parent:GetChildren()) do
            if obj.Name == "mys.client_List" then
                obj:Destroy()
            end
        end
    end
    screenGui = Instance.new("ScreenGui")
    screenGui.Name = "mys.client_List"
    screenGui.DisplayOrder = 99999
    screenGui.IgnoreGuiInset = true
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    pcall(function()
        if syn and syn.protect_gui then
            syn.protect_gui(screenGui)
        end
    end)
    screenGui.Parent = core
end

local function spawnFloatingStars(container)
    container.ClipsDescendants = true
    for i = 1, math.random(7, 15) do
        local star = Instance.new("Frame")
        star.Size = UDim2.new(0, 1.5, 0, 1.5)
        star.Position = UDim2.new(math.random(), 0, math.random(), 0)
        star.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        star.BackgroundTransparency = math.random(2, 5)/10
        star.BorderSizePixel = 0
        star.ZIndex = math.max(0, container.ZIndex - 1)
        star.Parent = container
        task.spawn(function()
            while star.Parent do
                local newPos = UDim2.new(math.random(),0,math.random(),0)
                local tween = TweenService:Create(star, TweenInfo.new(math.random(7,12), Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Position = newPos})
                tween:Play()
                tween.Completed:Wait()
            end
        end)
    end
end

local function updateLabelStack()
    table.sort(labelList, function(a, b)
        if a.priority ~= b.priority then
            return a.priority
        end
        return a.label.TextBounds.X < b.label.TextBounds.X
    end)

    local y = 80
    for i, entry in ipairs(labelList) do
        if entry.label.Visible then
            local stackedLabelPos = UDim2.new(1, -entry.label.Size.X.Offset - 10, 0, y)
            local stackedDescPos = UDim2.new(
                stackedLabelPos.X.Scale,
                stackedLabelPos.X.Offset - (entry.desc.Size.X.Offset + 10),
                stackedLabelPos.Y.Scale,
                stackedLabelPos.Y.Offset
            )

            entry.stackedLabelPos = stackedLabelPos
            entry.stackedDescPos = stackedDescPos

            local tweenInfo = TweenInfo.new(0.55, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, (i-1) * 0.04)
            TweenService:Create(entry.label, tweenInfo, {Position = stackedLabelPos}):Play()
            TweenService:Create(entry.desc, tweenInfo, {Position = stackedDescPos}):Play()

            y = y + entry.label.Size.Y.Offset + 10
        end
    end
end

local function createarraylabel(name, title, description)
    initGUI()
    local label = Instance.new("TextLabel")
    label.Name = name
    label.Text = title
    label.Visible = false
    label.Active = true
    label.Parent = screenGui
    label.BackgroundTransparency = 0.1
    label.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    label.BorderSizePixel = 0
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.ClipsDescendants = true
    label.FontFace = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    label.TextSize = 17
    label.TextScaled = false
    task.wait(0.05)
    label.Size = UDim2.new(0, label.TextBounds.X + 25, 0, 30)
    label.TextXAlignment = Enum.TextXAlignment.Center
    label.TextYAlignment = Enum.TextYAlignment.Center

    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 6)
    uiCorner.Parent = label

    local gradient = Instance.new("UIGradient")
    gradient.Rotation = 0
    gradient.Color = ColorSequence.new(Color3.fromRGB(255,255,255), Color3.fromRGB(200,200,200))
    gradient.Parent = label

    task.spawn(function()
        local offset = -1
        while label.Parent do
            offset = offset + 0.02
            if offset > 1 then offset = -1 end
            gradient.Offset = Vector2.new(offset,0)
            task.wait(0.03)
        end
    end)

    spawnFloatingStars(label)

    local descBox = Instance.new("TextLabel")
    descBox.Text = description or "Description"
    descBox.BackgroundColor3 = label.BackgroundColor3
    descBox.BorderSizePixel = label.BorderSizePixel
    descBox.TextColor3 = label.TextColor3
    descBox.ClipsDescendants = label.ClipsDescendants
    descBox.FontFace = label.FontFace
    descBox.TextSize = label.TextSize
    descBox.TextXAlignment = label.TextXAlignment
    descBox.TextYAlignment = label.TextYAlignment

    local uiCornerDesc = Instance.new("UICorner")
    uiCornerDesc.CornerRadius = uiCorner.CornerRadius
    uiCornerDesc.Parent = descBox

    descBox.Visible = false
    descBox.Parent = screenGui
    task.wait(0.05)
    descBox.Size = UDim2.new(0, descBox.TextBounds.X + 16, 0, descBox.TextBounds.Y + 8)

    local priority = false
    if title:find("Owner") or title:find("Staff") or title:find("Admin") then
        priority = true
    end

    local entry = {label = label, desc = descBox, priority = priority}
    table.insert(labelList, entry)
    activeLabels[name] = entry

    -- Set initial position off-screen right before first tween
    label.Position = UDim2.new(1.2, -label.Size.X.Offset - 10, 0, 80)
    descBox.Position = UDim2.new(1.2, -descBox.Size.X.Offset - 20, 0, 80)

    label.Visible = true
    updateLabelStack()

    label.MouseEnter:Connect(function()
        descBox.Visible = true
        descBox.BackgroundTransparency = 1
        descBox.TextTransparency = 1
        TweenService:Create(label, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Position = UDim2.new(entry.stackedLabelPos.X.Scale, entry.stackedLabelPos.X.Offset - 30, entry.stackedLabelPos.Y.Scale, entry.stackedLabelPos.Y.Offset)}):Play()
        TweenService:Create(descBox, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Position = UDim2.new(entry.stackedDescPos.X.Scale, entry.stackedDescPos.X.Offset - 30, entry.stackedDescPos.Y.Scale, entry.stackedDescPos.Y.Offset), BackgroundTransparency = 0.2, TextTransparency = 0}):Play()
    end)

    label.MouseLeave:Connect(function()
        TweenService:Create(label, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Position = entry.stackedLabelPos}):Play()
        local fadeTween = TweenService:Create(descBox, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1, TextTransparency = 1})
        fadeTween:Play()
        fadeTween.Completed:Connect(function() descBox.Visible = false end)
        TweenService:Create(descBox, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Position = entry.stackedDescPos}):Play()
    end)

    return label
end

function _G.removearraylabel(name)
    if activeLabels[name] then
        local data = activeLabels[name]
        if data.label and data.label.Parent then data.label:Destroy() end
        if data.desc and data.desc.Parent then data.desc:Destroy() end
        activeLabels[name] = nil
        for i = #labelList, 1, -1 do
            if labelList[i].label == data.label then
                table.remove(labelList, i)
                break
            end
        end
        updateLabelStack()
    end
end

_G.createarraylabel = createarraylabel
