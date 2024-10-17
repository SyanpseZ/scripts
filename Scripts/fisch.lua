local plr = game.Players.LocalPlayer
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Scheiß Fisch", "DarkTheme")

local function castRod()
    local rod = nil

    for _, item in pairs(game:GetService("Workspace")[plr.Name]:GetChildren()) do
        if string.match(item.Name, "Rod$") then
            rod = item
            break
        end
    end

    if rod then
        print("Rod found:", rod.Name)

        local rodE = rod:FindFirstChild("events")
        if rodE then
            rodE.cast:FireServer(100)
        else
            print("Fuck you")
        end
    end
end

local Tab1 = Window:NewTab("Main")
local Section1 = Tab1:NewSection("Main")

Section1:NewButton("Cast Rod", "ButtonInfo", function()
    castRod()
end)

Section1:NewButton("Sell all", "ButtonInfo", function()
    local sell = game:GetService("ReplicatedStorage").events.selleverything
    sell:InvokeServer()
end)

