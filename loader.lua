game.StarterGui:SetCore("SendNotification", {
    Title = "Saitama39313 Script",
    Text = "Loaded",
    Duration = 0.5
})

local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "SaitamaSpawnerGUI"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Main Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 260)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

local uiCorner = Instance.new("UICorner", frame)
uiCorner.CornerRadius = UDim.new(0, 12)

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 35)
title.BackgroundTransparency = 1
title.Text = "Saitama_Spawner(V2)"
title.Font = Enum.Font.SourceSansBold
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 22
title.Parent = frame

-- Pet Spawner Tab
local petsTab = Instance.new("TextButton")
petsTab.Size = UDim2.new(1, 0, 0, 30)
petsTab.Position = UDim2.new(0, 0, 0, 35)
petsTab.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
petsTab.Text = "Pet Spawner 🐾"
petsTab.Font = Enum.Font.SourceSansBold
petsTab.TextColor3 = Color3.fromRGB(255, 255, 255)
petsTab.TextSize = 18
petsTab.AutoButtonColor = false
petsTab.BorderSizePixel = 0
petsTab.Parent = frame

-- Input Box Generator
local function createInput(placeholder, position)
local input = Instance.new("TextBox")
input.Size = UDim2.new(0.9, 0, 0, 30)
input.Position = UDim2.new(0.05, 0, 0, position)
input.PlaceholderText = placeholder
input.Font = Enum.Font.SourceSans
input.TextSize = 18
input.TextColor3 = Color3.new(1, 1, 1)
input.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
input.BorderSizePixel = 0
input.Text = ""
input.ClearTextOnFocus = false
input.Parent = frame

Instance.new("UICorner", input).CornerRadius = UDim.new(0, 8)  
return input

end

-- Inputs
local petNameInput = createInput("Pet Name", 75)
local ageInput = createInput("Age", 115)
local kgInput = createInput("Kg", 155)

-- Spawn Button
local spawnButton = Instance.new("TextButton")
spawnButton.Size = UDim2.new(0.9, 0, 0, 35)
spawnButton.Position = UDim2.new(0.05, 0, 0, 200)
spawnButton.Text = "Spawn Pet"
spawnButton.Font = Enum.Font.SourceSansBold
spawnButton.TextSize = 18
spawnButton.TextColor3 = Color3.new(1, 1, 1)
spawnButton.BackgroundColor3 = Color3.fromRGB(90, 90, 255)
spawnButton.BorderSizePixel = 0
spawnButton.Parent = frame

Instance.new("UICorner", spawnButton).CornerRadius = UDim.new(0, 8)

-- Notification Function
local function notify(msg)
game.StarterGui:SetCore("SendNotification", {
Title = "Saitama Spawner",
Text = msg,
Duration = 5
})
end

-- COPY LINK GUI
local copyGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
copyGui.Name = "CopyLinkGUI"
copyGui.Enabled = false

local copyFrame = Instance.new("Frame")
copyFrame.Size = UDim2.new(0, 350, 0, 140)
copyFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
copyFrame.AnchorPoint = Vector2.new(0.5, 0.5)
copyFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
copyFrame.Parent = copyGui
copyFrame.Active = true
copyFrame.Draggable = true
Instance.new("UICorner", copyFrame).CornerRadius = UDim.new(0, 12)

local copyLabel = Instance.new("TextLabel")
copyLabel.Size = UDim2.new(1, -20, 0, 60)
copyLabel.Position = UDim2.new(0, 10, 0, 10)
copyLabel.BackgroundTransparency = 1
copyLabel.Text = "Click below to copy link:"
copyLabel.Font = Enum.Font.SourceSansBold
copyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
copyLabel.TextSize = 20
copyLabel.TextWrapped = true
copyLabel.Parent = copyFrame

local copyButton = Instance.new("TextButton")
copyButton.Size = UDim2.new(1, -20, 0, 35)
copyButton.Position = UDim2.new(0, 10, 0, 80)
copyButton.Text = "https://rinku.pro/Adrian_Spawner"
copyButton.Font = Enum.Font.SourceSans
copyButton.TextSize = 16
copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
copyButton.BackgroundColor3 = Color3.fromRGB(90, 90, 255)
copyButton.Parent = copyFrame
Instance.new("UICorner", copyButton).CornerRadius = UDim.new(0, 8)

copyButton.MouseButton1Click:Connect(function()
setclipboard("https://rinku.pro/Adrian_Spawner")
notify("Paste This To Any Browser Like Chrome And Do The Steps! It’s very simple, no ads.")
copyGui.Enabled = false
end)

-- Main Spawn Button Logic
spawnButton.MouseButton1Click:Connect(function()
local petName = petNameInput.Text
local age = tonumber(ageInput.Text)
local kg = tonumber(kgInput.Text)

if petName ~= "" and age and kg then  
	notify("You Have To Get The Key To Spawn Unlimited Pets! And You Can Also Trade Them!\nEnjoy!")  
	wait(1.5)  
	copyGui.Enabled = true  
else  
	notify("Please enter valid Pet Name, Age, and Kg")  
end

end)local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "AdrianSpawnerGUI"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Main Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 260)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

local uiCorner = Instance.new("UICorner", frame)
uiCorner.CornerRadius = UDim.new(0, 12)

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 35)
title.BackgroundTransparency = 1
title.Text = "Adrian_Spawner(V2)"
title.Font = Enum.Font.SourceSansBold
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 22
title.Parent = frame

-- Pet Spawner Tab
local petsTab = Instance.new("TextButton")
petsTab.Size = UDim2.new(1, 0, 0, 30)
petsTab.Position = UDim2.new(0, 0, 0, 35)
petsTab.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
petsTab.Text = "Pet Spawner 🐾"
petsTab.Font = Enum.Font.SourceSansBold
petsTab.TextColor3 = Color3.fromRGB(255, 255, 255)
petsTab.TextSize = 18
petsTab.AutoButtonColor = false
petsTab.BorderSizePixel = 0
petsTab.Parent = frame

-- Input Box Generator
local function createInput(placeholder, position)
local input = Instance.new("TextBox")
input.Size = UDim2.new(0.9, 0, 0, 30)
input.Position = UDim2.new(0.05, 0, 0, position)
input.PlaceholderText = placeholder
input.Font = Enum.Font.SourceSans
input.TextSize = 18
input.TextColor3 = Color3.new(1, 1, 1)
input.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
input.BorderSizePixel = 0
input.Text = ""
input.ClearTextOnFocus = false
input.Parent = frame

Instance.new("UICorner", input).CornerRadius = UDim.new(0, 8)  
return input

end

-- Inputs
local petNameInput = createInput("Pet Name", 75)
local ageInput = createInput("Age", 115)
local kgInput = createInput("Kg", 155)

-- Spawn Button
local spawnButton = Instance.new("TextButton")
spawnButton.Size = UDim2.new(0.9, 0, 0, 35)
spawnButton.Position = UDim2.new(0.05, 0, 0, 200)
spawnButton.Text = "Spawn Pet"
spawnButton.Font = Enum.Font.SourceSansBold
spawnButton.TextSize = 18
spawnButton.TextColor3 = Color3.new(1, 1, 1)
spawnButton.BackgroundColor3 = Color3.fromRGB(90, 90, 255)
spawnButton.BorderSizePixel = 0
spawnButton.Parent = frame

Instance.new("UICorner", spawnButton).CornerRadius = UDim.new(0, 8)

-- Notification Function
local function notify(msg)
game.StarterGui:SetCore("SendNotification", {
Title = "Adrian Spawner",
Text = msg,
Duration = 5
})
end

-- COPY LINK GUI
local copyGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
copyGui.Name = "CopyLinkGUI"
copyGui.Enabled = false

local copyFrame = Instance.new("Frame")
copyFrame.Size = UDim2.new(0, 350, 0, 140)
copyFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
copyFrame.AnchorPoint = Vector2.new(0.5, 0.5)
copyFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
copyFrame.Parent = copyGui
copyFrame.Active = true
copyFrame.Draggable = true
Instance.new("UICorner", copyFrame).CornerRadius = UDim.new(0, 12)

local copyLabel = Instance.new("TextLabel")
copyLabel.Size = UDim2.new(1, -20, 0, 60)
copyLabel.Position = UDim2.new(0, 10, 0, 10)
copyLabel.BackgroundTransparency = 1
copyLabel.Text = "Click below to copy link:"
copyLabel.Font = Enum.Font.SourceSansBold
copyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
copyLabel.TextSize = 20
copyLabel.TextWrapped = true
copyLabel.Parent = copyFrame

local copyButton = Instance.new("TextButton")
copyButton.Size = UDim2.new(1, -20, 0, 35)
copyButton.Position = UDim2.new(0, 10, 0, 80)
copyButton.Text = "https://rinku.pro/Adrian_Spawner"
copyButton.Font = Enum.Font.SourceSans
copyButton.TextSize = 16
copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
copyButton.BackgroundColor3 = Color3.fromRGB(90, 90, 255)
copyButton.Parent = copyFrame
Instance.new("UICorner", copyButton).CornerRadius = UDim.new(0, 8)

copyButton.MouseButton1Click:Connect(function()
setclipboard("https://rinku.pro/Adrian_Spawner")
notify("Paste This To Any Browser Like Chrome And Do The Steps! It’s very simple, no ads.")
copyGui.Enabled = false
end)

-- Main Spawn Button Logic
spawnButton.MouseButton1Click:Connect(function()
local petName = petNameInput.Text
local age = tonumber(ageInput.Text)
local kg = tonumber(kgInput.Text)

if petName ~= "" and age and kg then  
	notify("You Have To Get The Key To Spawn Unlimited Pets! And You Can Also Trade Them!\nEnjoy!")  
	wait(1.5)  
	copyGui.Enabled = true  
else  
	notify("Please enter valid Pet Name, Age, and Kg")  
end

end)
