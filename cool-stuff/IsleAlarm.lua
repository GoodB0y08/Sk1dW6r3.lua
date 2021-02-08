local Isle = {}
function Isle:addNotification(Text, R, G, B)
if game.PlaceId == 3431407618 then
local alert = Instance.new('Color3Value')
alert.Name = Text
alert.Parent = game.Players.LocalPlayer.Character["@Alerts"]
alert.Value = Color3.fromRGB(255, 255, 255)
for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Game.Alert:GetChildren()) do
    if v.Text == alert.Name then
        v.TextColor3 = Color3.fromRGB(R, G, B)
end
end
elseif game.PlaceId == 3095204897 then
local alert = Instance.new('Color3Value')
alert.Name = Text
alert.Parent = game.Players.LocalPlayer.Character["@Alerts"]
alert.Value = Color3.fromRGB(255, 255, 255)
for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Alert.Alert:GetChildren()) do
    if v.Text == alert.Name then
        v.TextColor3 = Color3.fromRGB(R, G, B)
end
end
end
end
return Isle
