local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("No-Skill", "Ocean")

local Player = game:GetService("Players").LocalPlayer
local character = Player.Character or Player.CharacterAdded
local hrp = character:WaitForChild("HumanoidRootPart")
local stam

local success, err = pcall(function()
    stam = game:GetService("Workspace").Players[Player.Name].PlayerInfo.Stamina
end)

if not success or not stam then
    print("Not in game")
else
    print("Stamina found:", stam)
end

local Tab1 = Window:NewTab("Random Shit")
local Section1 = Tab1:NewSection("No organising")
_G.Callout = false

local function CalloutSpam()
    while true do
        task.wait()
        if _G.Callout then
            game:GetService("ReplicatedStorage").Remotes.Callout:FireServer(hrp.Position)
        end
    end
end

task.spawn(CalloutSpam)

Section1:NewToggle('Callout Spam', "ToggleInfo", function(state)
    _G.Callout = state
end)

if stam then
    Section1:NewButton("Infinite stamina", "ButtonInfo", function()
        local stamh
        stamh = hookmetamethod(game, "__index", function(self, v)
            if self == stam and v == "Value" then
                return 100
            end
            return stamh(self, v)
        end)
    end)
end

local Tab2 = Window:NewTab("Holy Fuck")
local Section2 = Tab2:NewSection("How not patched")

Section2:NewTextBox("Set Speed", "TextboxInfo", function(txt)
    game:GetService("Workspace").Players[Player.Name].PlayerInfo.SpeedMultiplier.Value = tonumber(txt)
end)

Section2:NewTextBox("Set Power", "TextboxInfo", function(txt)
    game:GetService("Workspace").Players[Player.Name].PlayerInfo.PowerMultiplier.Value = tonumber(txt)
end)

Section2:NewTextBox("Set Jump", "TextboxInfo", function(txt)
    game:GetService("Workspace").Players[Player.Name].PlayerInfo.JumpMultiplier.Value = tonumber(txt)
end)

Section2:NewTextBox("Set Flow", "TextboxInfo", function(txt)
    game:GetService("Workspace").Players[Player.Name].PlayerInfo.FlowMultiplier.Value = tonumber(txt)
end)
