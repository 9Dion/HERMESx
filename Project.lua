local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("HERMES HUB", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Auto Farm")
local section2 = page:addSection("Section 2")

section1:addToggle("Auto Farm", nil, function(Farm)
_G.AutoFarm = Farm;
while _G.AutoFarm do wait()
local args = {
    [1] = "BlowBubble"
}
game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-154.39950561523, 45.499912261963, -148.92428588867)
end
end)



--seconpage
local page2 = venyx:addPage("Shop", 5012544693)
local section1 = page2:addSection("Shop")

section1:addButton("Button", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-123.25350952148, 45.499622344971, -119.96241760254)
end)



--Terdpage
local page3 = venyx:addPage("Misc", 5012544693)
local section1 = page3:addSection("Misc")

section1:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
print("Activated Keybind")
venyx:toggle()
end, function()
print("Changed Keybind")
end)




--Theme
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end