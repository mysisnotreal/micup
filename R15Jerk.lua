local player = game.Players.LocalPlayer

local config = {
	ToolName = "jerk  mys.client",
	AnimationId = "rbxassetid://698251653",
	Speed = 1,
	StartTime = 0.6
}
table.freeze(config)

local enabled = true

local tool
local track
local playing = false

local Tool = {}

function Tool:Create()
	if tool then return end
	
	tool = Instance.new("Tool")
	tool.Name = config.ToolName
	
	local handle = Instance.new("Part", tool)
	handle.Name = "Handle"
	handle.Size = Vector3.new(1, 1, 1)
	handle.CanCollide = false
	handle.Transparency = 1
	
	local anim = Instance.new("Animation", tool)
	anim.AnimationId = config.AnimationId
	
	local function play()
		local char = player.Character
		if not char then return end
		
		local hum = char:FindFirstChildWhichIsA("Humanoid")
		if not hum then return end

		if playing then
			warn("Jerk animation is already playing.")
			return
		end

		local animator = hum:FindFirstChildOfClass("Animator") or Instance.new("Animator", hum)
		track = animator:LoadAnimation(anim)
		playing = true
		
		track:Play()
		track:AdjustSpeed(config.Speed)
		track.TimePosition = config.StartTime
		
		task.spawn(function()
			while playing do
				task.wait()
				if not playing or not track then return end

				track:Play()
				track.TimePosition = config.StartTime
				task.wait(0.1)

				while playing and track and typeof(track.TimePosition) == "number" and track.TimePosition < config.StartTime do
					task.wait(0.1)
				end

				if track then
					track:Stop()
				end
			end
		end)
	end
	
	local function stop()
		if track then
			track:Stop()
			track:Destroy()
			track = nil
		end
		
		playing = false
	end
	
	tool.Equipped:Connect(play)
	tool.Unequipped:Connect(stop)
	
	tool.Parent = player.Backpack
end

function Tool:Remove()
	if tool then tool:Destroy() tool = nil end
end

local function setEnabled(value)
	enabled = value
	if value then Tool:Create() else Tool:Remove() end
end

player.CharacterAdded:Connect(function(char)
	if enabled then
		char:WaitForChild("Humanoid")
		task.wait(0.1)
		Tool:Create()
	end
end)

if player.Character and enabled then
	player.Character:WaitForChild("Humanoid")
	Tool:Create()
end
