local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("No-Vision", "Ocean")

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
local stam

local success, err = pcall(function()
    stam = game:GetService("Workspace").CharacterFolder[player.Name].Stamina
end)

if not success or not stam then
    print("Not in game")
else
    print("Stamina found:", stam)
end

local Tab1 = Window:NewTab("Random Shit")
local Section1 = Tab1:NewSection("Not Organising yet")
_G.Loud = false
_G.Handles = false

local function Hey()
    while true do
        task.wait()
        if _G.Loud then
            game:GetService("ReplicatedStorage").Remotes.PassWave:FireServer(rootPart.Position)
        end
    end
end

local function Ronaldo()
    while true do
        task.wait()
        if _G.Handles then
            game:GetService("ReplicatedStorage").Remotes.drib:FireServer("Left")
            game:GetService("ReplicatedStorage").Remotes.PerfectDribble:FireServer("Left")
        end
    end
end

task.spawn(Hey)
task.spawn(Ronaldo)

Section1:NewToggle('"HEY"', "ToggleInfo", function(state)
    _G.Loud = state
end)

Section1:NewToggle('Cant touch me', "ToggleInfo", function(state)
    _G.Handles = state
end)

if stam then
    Section1:NewButton("Infinite stamina", "ButtonInfo", function()
        local stamh
        stamh = hookmetamethod(game, "__index", function(self, v)
            if self == stam and v == "Value" then
                return 160
            end
            return stamh(self, v)
        end)
    end)
end
local codes = {
	"SUPERSAIYAN",
	"KAIOKEN",
	"3MVISITS",
	"15KFavourites",
}

local function Redeem()
    for _, code in ipairs(codes) do
        game:GetService("ReplicatedStorage").Remotes.AttemptCode:FireServer(code)
    end
end

Section1:NewButton("Redeem All Codes", "ButtonInfo", function()
    Redeem()
end)

local Tab2 = Window:NewTab("Holy Fuck")
local Section2 = Tab2:NewSection("How not patched")

Section2:NewButton("Tp Everyone into another lobby", "ButtonInfo", function()
    game:GetService("ReplicatedStorage").Remotes.TP:FireServer()
end)

Section2:NewTextBox("Set Speed", "TextboxInfo", function(txt)
    game:GetService("Workspace").CharacterFolder[player.Name].Extra.SpeedBuff.Value = tonumber(txt)
end)

Section2:NewTextBox("Set Control", "TextboxInfo", function(txt)
    game:GetService("Workspace").CharacterFolder[player.Name].Extra.ControlBuff.Value = tonumber(txt)
end)

Section2:NewTextBox("Set Power", "TextboxInfo", function(txt)
    game:GetService("Workspace").CharacterFolder[player.Name].Extra.PowerBuff.Value = tonumber(txt)
end)

Section2:NewTextBox("Set Hitbox Size", "TextboxInfo", function(txt)
    game:GetService("Workspace").CharacterFolder[player.Name].DefHitbox.Size = Vector3.new(tonumber(txt), tonumber(txt), tonumber(txt))
end)

Section2:NewTextBox("Hitbox Transparency", "TextboxInfo", function(txt)
    game:GetService("Workspace").CharacterFolder[player.Name].DefHitbox.Transparency = tonumber(txt)
end)
