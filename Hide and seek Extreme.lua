local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Hide and Seek Extreme", "RJTheme3")

local TabMain = Window:NewTab("Main")
local TabPlayer = Window:NewTab("Player")

local SectionEsp = TabMain:NewSection("Esp")
local SectionFarm = TabMain:NewSection("Farm")

local SectionEsp2 = TabPlayer:NewSection("Esp")
local SectionMain = TabPlayer:NewSection("Main")

local HighlightMe = Instance.new("Highlight")
HighlightMe.FillColor = Color3.new(0, 1, 0)

SectionEsp2:NewButton("Esp me", "Esp to me", function()
    HighlightMe.Parent = game.Players.LocalPlayer.Character
end)

SectionMain:NewSlider("Walk Speed", "You walk speed", 30, 16, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

SectionMain:NewSlider("Jump power", "You Jump power", 10, 500, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)


local HighlightCoins = Instance.new("Highlight")
HighlightCoins.FillColor = Color3.new(1, 1, 0)

SectionEsp:NewButton("Esp Coins", "Esp all coins", function()
    for i,v in pairs(game:GetDescendants()) do
if v.Name == 'GameObjects' then
HighlightCoins.Parent = v
end
end
end)

local HighlightHideAndSeek = Instance.new("Highlight")
HighlightHideAndSeek.FillColor = Color3.new(1, 0, 0)

SectionEsp:NewButton("Esp HideAndSeek", "Esp HideAndSeek", function()
        for i,a in pairs(game:GetDescendants()) do
if a.Name == 'Sparkles' then
HighlightHideAndSeek.Parent = a.Parent.Parent
end
end
end)

SectionFarm:NewButton("Farm Coins", "Up all coins", function()
    for i,v in pairs(game:GetDescendants()) do
if v.Name == 'Credit' then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end)
