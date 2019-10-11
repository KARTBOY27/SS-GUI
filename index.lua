local SaberSimulatorGUI = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local open = Instance.new("TextButton")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local credits = Instance.new("TextLabel")
local Sell = Instance.new("TextButton")
local close = Instance.new("TextButton")
local Farm = Instance.new("TextButton")

SaberSimulatorGUI.Name = "Saber Simulator GUI"
SaberSimulatorGUI.Parent = game.CoreGui
SaberSimulatorGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

frame.Name = "frame"
frame.Parent = SaberSimulatorGUI
frame.BackgroundColor3 = Color3.new(0.94902, 0.894118, 0.137255)
frame.BackgroundTransparency = 0.5
frame.Position = UDim2.new(0, 0, 0.703761756, 0)
frame.Size = UDim2.new(0, 110, 0, 27)

open.Name = "open"
open.Parent = frame
open.BackgroundColor3 = Color3.new(0.94902, 0.894118, 0.137255)
open.BackgroundTransparency = 0.5
open.Size = UDim2.new(0, 110, 0, 27)
open.Font = Enum.Font.SourceSans
open.Text = "Open"
open.TextColor3 = Color3.new(0, 0, 0)
open.TextSize = 14
open.MouseButton1Down:connect(function()
	open.Visible = false
	main.Visible = true
end)

main.Name = "main"
main.Parent = SaberSimulatorGUI
main.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
main.BackgroundTransparency = 0.20000000298023
main.Position = UDim2.new(0.151730269, 0, 0.407665998, 0)
main.Size = UDim2.new(0, 155, 0, 228)
main.Visible = false
main.Active = true
main.Draggable = true

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.new(0.94902, 0.894118, 0.137255)
title.Position = UDim2.new(-0.0657894015, 0, 0, 0)
title.Size = UDim2.new(0, 171, 0, 27)
title.Font = Enum.Font.SourceSans
title.Text = "Saber Simulator GUI"
title.TextColor3 = Color3.new(0, 0, 0)
title.TextSize = 15

credits.Name = "credits"
credits.Parent = main
credits.BackgroundColor3 = Color3.new(0.94902, 0.894118, 0.137255)
credits.Position = UDim2.new(-0.0657894015, 0, 0.907894611, 0)
credits.Size = UDim2.new(0, 171, 0, 21)
credits.Font = Enum.Font.SourceSans
credits.Text = ""
credits.TextColor3 = Color3.new(0, 0, 0)
credits.TextSize = 14

Sell.Name = "Sell"
Sell.Parent = main
Sell.BackgroundColor3 = Color3.new(0.94902, 0.894118, 0.137255)
Sell.BackgroundTransparency = 0.20000000298023
Sell.Position = UDim2.new(0, 13, 0, 124)
Sell.Size = UDim2.new(0, 131, 0, 69)
Sell.Font = Enum.Font.SourceSans
Sell.Text = "Sell"
Sell.TextColor3 = Color3.new(0, 0, 0)
Sell.TextSize = 32
Sell.MouseButton1Down:connect(function()
    
    local cs = game.workspace:FindFirstChild("SellArea").Position
    local p = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    local Last = p.CFrame
    
    pos = CFrame.new(cs + Vector3.new(0,2.5,0))
    p.CFrame = pos
    wait(0.5)
    p.CFrame = Last

end)

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.new(0.94902, 0.894118, 0.137255)
close.Position = UDim2.new(0, 138, 0, 0)
close.Size = UDim2.new(0, 23, 0, 19)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.new(0, 0, 0)
close.TextSize = 14
close.MouseButton1Down:connect(function()
	main.Visible = false
	open.Visible = true
end)

Farm.Name = "Farm"
Farm.Parent = main
Farm.BackgroundColor3 = Color3.new(0.94902, 0.894118, 0.137255)
Farm.BackgroundTransparency = 0.20000000298023
Farm.Position = UDim2.new(0, 13, 0, 38)
Farm.Size = UDim2.new(0, 131, 0, 69)
Farm.Font = Enum.Font.SourceSans
Farm.Text = "Farm"
Farm.TextColor3 = Color3.new(0, 0, 0)
Farm.TextSize = 32
Farm.MouseButton1Click:connect(function()
	while wait(0.01) do

		local Remote = game.ReplicatedStorage.Events['Clicked']
		Remote:FireServer()

	end
end)
