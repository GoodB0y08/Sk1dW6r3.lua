local NotifyFunc = {}
local TweenService = game:GetService("TweenService")
function NotifyFunc:Notify(text, description, icon)
do
    local GUI = game.CoreGui:FindFirstChild("Notify")
    if GUI then
        GUI:Destroy()
        GUI:Remove()
    end
end
local Notify = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Blur = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Description = Instance.new("TextLabel")
local Circle = Instance.new("ImageLabel")
local Icon = Instance.new("ImageButton")
local Frame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")
local Container = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Circle_2 = Instance.new("ImageLabel")
local done = Instance.new("ImageButton")
local Circle_3 = Instance.new("ImageLabel")
local close = Instance.new("ImageButton")
local Circle_4 = Instance.new("ImageLabel")
local info = Instance.new("ImageButton")
local Title = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")

--Properties:

Notify.Name = "Notify"
Notify.Parent = game.CoreGui
Notify.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Notify
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderSizePixel = 0
Main.ClipsDescendants = true
Main.Position = UDim2.new(0.0216049366, 0, 0.0905840248, 0)
Main.Size = UDim2.new(0, 355, 0, 168)

Blur.Name = "Blur"
Blur.Parent = Main
Blur.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Blur.BorderSizePixel = 0
Blur.Size = UDim2.new(0, 355, 0, 168)
Blur.ZIndex = 8
UICorner.Parent = Blur

Description.Name = "Description"
Description.Parent = Main
Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description.BackgroundTransparency = 1.000
Description.BorderSizePixel = 0
Description.Position = UDim2.new(0.0394366197, 0, 0.589285731, 0)
Description.Size = UDim2.new(0, 250, 0, 68)
Description.Font = Enum.Font.Gotham
Description.Text = description
Description.TextColor3 = Color3.fromRGB(0, 0, 0)
Description.TextSize = 14.000
Description.TextTransparency = 0.350
Description.TextWrapped = true
Description.TextXAlignment = Enum.TextXAlignment.Left
Description.TextYAlignment = Enum.TextYAlignment.Top

Circle.Name = "Circle"
Circle.Parent = Main
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.BackgroundTransparency = 1.000
Circle.Position = UDim2.new(0.320809871, 0, 0.0209219791, 0)
Circle.Size = UDim2.new(0, 50, 0, 50)
Circle.Image = "rbxassetid://3570695787"
Circle.ImageColor3 = Color3.fromRGB(224, 224, 255)
Circle.ImageTransparency = 0.250

Icon.Name = "Icon"
Icon.Parent = Circle
Icon.BackgroundTransparency = 1.000
Icon.Position = UDim2.new(0.186666563, 0, 0.186666727, 0)
Icon.Size = UDim2.new(0, 30, 0, 30)
Icon.ZIndex = 2
Icon.Image = icon or "rbxassetid://3926305904"
Icon.ImageColor3 = Color3.fromRGB(100, 100, 255)
Icon.ImageRectOffset = Vector2.new(684, 124)
Icon.ImageRectSize = Vector2.new(36, 36)
Icon.ImageTransparency = 0.200

Frame.Parent = Main
Frame.BackgroundColor3 = Color3.fromRGB(235, 235, 235)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.783098578, 0, 0, 0)
Frame.Size = UDim2.new(0, 77, 0, 168)

UICorner_2.Parent = Frame

UICorner_3.Parent = Main

Container.Name = "Container"
Container.Parent = Main
Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container.BackgroundTransparency = 1.000
Container.BorderColor3 = Color3.fromRGB(27, 42, 53)
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0.783098578, 0, 0, 0)
Container.Size = UDim2.new(0, 77, 0, 168)

UIListLayout.Parent = Container
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0, 15)
function NotifyFunc:AddDoneBtn(callback, killafterclick)
local Circle_2 = Instance.new("ImageLabel")
local done = Instance.new("ImageButton")
Circle_2.Name = "Circle"
Circle_2.Parent = Container
Circle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle_2.BackgroundTransparency = 1.000
Circle_2.Position = UDim2.new(0.305194795, 0, 0.148809522, 0)
Circle_2.Size = UDim2.new(0, 30, 0, 30)
Circle_2.Image = "rbxassetid://3570695787"
Circle_2.ImageColor3 = Color3.fromRGB(100, 100, 255)
Circle_2.ImageTransparency = 0.250

done.Name = "done"
done.Parent = Circle_2
done.BackgroundTransparency = 1.000
done.Position = UDim2.new(0.073333323, 0, 0.0740476549, 0)
done.Size = UDim2.new(0, 25, 0, 25)
done.ZIndex = 2
done.Image = "rbxassetid://3926305904"
done.ImageColor3 = Color3.fromRGB(143, 255, 131)
done.ImageRectOffset = Vector2.new(644, 204)
done.ImageRectSize = Vector2.new(36, 36)
			done.MouseEnter:Connect(function()
				TweenService:Create(
					done,
					TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ImageColor3 = Color3.fromRGB(21, 235, 78)}
				):Play()
			end)
			done.MouseLeave:Connect(function()
				TweenService:Create(
					done,
					TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ImageColor3 = Color3.fromRGB(143, 255, 131)}
				):Play()
			end)
			done.MouseButton1Click:Connect(function()
				pcall(callback)
				if killafterclick then
				Blur:TweenSize(UDim2.new(0, 355,0, 168, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .1, true))
				wait(.8)
				Main:TweenSize(UDim2.new(0, 0,0, 168, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .1, true))
				end
			end)
end
function NotifyFunc:AddCloseBtn(callback, killafterclick)
local Circle_3 = Instance.new("ImageLabel")
local close = Instance.new("ImageButton")
Circle_3.Name = "Circle"
Circle_3.Parent = Container
Circle_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle_3.BackgroundTransparency = 1.000
Circle_3.Position = UDim2.new(0.305194795, 0, 0.410714298, 0)
Circle_3.Size = UDim2.new(0, 30, 0, 30)
Circle_3.Image = "rbxassetid://3570695787"
Circle_3.ImageColor3 = Color3.fromRGB(100, 100, 255)
Circle_3.ImageTransparency = 0.250

close.Name = "close"
close.Parent = Circle_3
close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
close.BackgroundTransparency = 1.000
close.Position = UDim2.new(0.0733337402, 0, 0.0607142113, 0)
close.Size = UDim2.new(0, 25, 0, 25)
close.ZIndex = 2
close.Image = "rbxassetid://3926305904"
close.ImageColor3 = Color3.fromRGB(255, 84, 78)
close.ImageRectOffset = Vector2.new(284, 4)
close.ImageRectSize = Vector2.new(24, 24)
			close.MouseEnter:Connect(function()
				TweenService:Create(
					close,
					TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ImageColor3 = Color3.fromRGB(235, 21, 21)}
				):Play()
			end)
			close.MouseLeave:Connect(function()
				TweenService:Create(
					close,
					TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ImageColor3 = Color3.fromRGB(255, 84, 78)}
				):Play()
			end)
			close.MouseButton1Click:Connect(function()
				pcall(callback)
				if killafterclick then
				Blur:TweenSize(UDim2.new(0, 355,0, 168, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .1, true))
				wait(.8)
				Main:TweenSize(UDim2.new(0, 0,0, 168, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .1, true))
				end
			end)
end
function NotifyFunc:AddInfoBtn(callback, killafterclick)
local Circle_4 = Instance.new("ImageLabel")
local info = Instance.new("ImageButton")
Circle_4.Name = "Circle"
Circle_4.Parent = Container
Circle_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle_4.BackgroundTransparency = 1.000
Circle_4.Position = UDim2.new(0.305194795, 0, 0.148809522, 0)
Circle_4.Size = UDim2.new(0, 30, 0, 30)
Circle_4.Image = "rbxassetid://3570695787"
Circle_4.ImageColor3 = Color3.fromRGB(100, 100, 255)
Circle_4.ImageTransparency = 0.250

info.Name = "info"
info.Parent = Circle_4
info.BackgroundTransparency = 1.000
info.Position = UDim2.new(0.0733337253, 0, 0.0809524506, 0)
info.Size = UDim2.new(0, 25, 0, 25)
info.ZIndex = 2
info.Image = "rbxassetid://3926305904"
info.ImageColor3 = Color3.fromRGB(100, 100, 255)
info.ImageRectOffset = Vector2.new(524, 444)
info.ImageRectSize = Vector2.new(36, 36)
			info.MouseButton1Click:Connect(function()
				pcall(callback)
				if killafterclick then
				Blur:TweenSize(UDim2.new(0, 355,0, 168, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .1, true))
				wait(.8)
				Main:TweenSize(UDim2.new(0, 0,0, 168, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .1, true))
				end
			end)
end
Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, 0.421556115, 0)
Title.Size = UDim2.new(0, 278, 0, 21)
Title.Font = Enum.Font.Gotham
Title.Text = text
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 16.000

Frame_2.Parent = Title
Frame_2.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
Frame_2.BackgroundTransparency = 0.500
Frame_2.BorderColor3 = Color3.fromRGB(100, 100, 255)
Frame_2.Position = UDim2.new(0, 0, 1.19047618, 0)
Frame_2.Size = UDim2.new(0, 278, 0, 0)
wait(.5)
Blur:TweenSize(UDim2.new(0, 0,0, 168), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .5, true)
end
return NotifyFunc
