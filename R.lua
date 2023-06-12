-- Configuration
local AUTH_KEY = "YOUR_AUTH_KEY" -- Replace with your own authentication key

-- GUI Setup
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 200, 0, 150)
Frame.Position = UDim2.new(0.5, -100, 0.5, -75)
Frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.8, 0, 0.2, 0)
TextBox.Position = UDim2.new(0.1, 0, 0.3, 0)
TextBox.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
TextBox.BorderSizePixel = 0
TextBox.PlaceholderText = "Enter Authentication Key"
TextBox.Parent = Frame

local Button = Instance.new("TextButton")
Button.Size = UDim2.new(0.5, 0, 0.2, 0)
Button.Position = UDim2.new(0.25, 0, 0.6, 0)
Button.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
Button.BorderSizePixel = 0
Button.Text = "Authenticate"
Button.Parent = Frame

-- Ban Function
local function banPlayer(player)
	-- Implement your ban logic here, such as saving the banned player's UserId to a ban list or kicking the player from the game.
	player:Kick("You have been banned from this game.")
end

-- Button Click Event
Button.MouseButton1Click:Connect(function()
	if TextBox.Text == AUTH_KEY then
		print("Authentication successful!")
		-- Perform actions for authenticated users
		
		-- Example: Disable btools for authenticated users
		game:GetService("StarterPlayer").StarterPlayerScripts:WaitForChild("LocalScript").Disabled = true
	else
		print("Authentication failed!")
		-- Implement your ban logic here for failed authentication attempts
		banPlayer(game.Players.LocalPlayer)
	end
end)
