local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Silly Jujutsu Randomizer", "DarkTheme")

local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")
local CFrame = hrp.CFrame 

-- Hakari Tab
local Tab1 = Window:NewTab("Hakari")
local Section1 = Tab1:NewSection("Moves")

Section1:NewKeybind("Become Hakari", "ButtonInfo", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").Remotes.HAKARI:FireServer()
end)

Section1:NewKeybind("Heal", "Uses hakari heal", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").Remotes.Healing:FireServer()
end)

Section1:NewKeybind("Smooth Energy", "Uses hakari heal", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").Remotes.Healing:FireServer()
end)

-- Yuji Tab
local Tab2 = Window:NewTab("Yuji")
local Section2 = Tab2:NewSection("Moves")

Section2:NewKeybind("Canon Yuji", "BlackFlash", Enum.KeyCode.KeypadEight, function()
    for i = 1, 8 do
        game:GetService("ReplicatedStorage").Remotes.BlackFlash:FireServer()
        task.wait()
    end
end)

Section2:NewKeybind("Rush", "Combo", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").Yuji.Remotes.Event:FireServer()
end)

-- KJ Tab
local Tab3 = Window:NewTab("KJ")
local Section3 = Tab3:NewSection("Moves")

Section3:NewKeybind("Collateral Ruin", "Combo", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").KJ.Remotes["Collaretal Ruin"]:FireServer()
end)

Section3:NewKeybind("Swift Sweep", "Combo", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").Kj.Remotes["Sweep Swift"]:FireServer()
end)

-- Sukuna Tab
local Tab4 = Window:NewTab("Sukuna")
local Section4 = Tab4:NewSection("Moves")

Section4:NewKeybind("Cleave", "Combo", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").sukuna.remotes.cleave:FireServer()
end)

Section4:NewKeybind("Dismantle", "Combo", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").sukuna.remotes.dismantle:FireServer()
end)

Section4:NewKeybind("Fire Arrow", "Combo", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").sukuna.remotes["fire arrow"]:FireServer()
end)

Section4:NewKeybind("Rush", "Combo", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").sukuna.remotes.rush:FireServer()
end)

Section4:NewKeybind("Shrine", "Combo", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").KJ.Remotes.Shrine:FireServer()
end)

-- Gojo Tab
local Tab5 = Window:NewTab("Gojo")
local Section5 = Tab5:NewSection("Moves")

Section5:NewKeybind("Hollow Purple", "Combo", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").Remotes.Fire2:FireServer()
end)

-- Kiryu Tab
local Tab6 = Window:NewTab("Kiryu")
local Section6 = Tab6:NewSection("Moves")

Section6:NewKeybind("Way Of Yakuza", "Combo", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").Kiryu.Remotes.WayofYakuza:FireServer()
end)

Section6:NewKeybind("StylishSweeps", "Combo", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").Kiryu.Remotes.StylishSweeps:FireServer()
end)

Section6:NewKeybind("Dropkick", "Combo", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").Kiryu.Remotes.Dropkick:FireServer()
end)

Section6:NewKeybind("Invitation To Hell", "Combo", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").Kiryu.Remotes.InvitationtoHell:FireServer()
end)

-- Misc Tab
local Tab7 = Window:NewTab("Misc.")
local Section7 = Tab7:NewSection("Moves")

Section7:NewKeybind("Timestop", "Combo", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").randommoveset.remotes.timestop:FireServer()
end)

Section7:NewKeybind("idek tbf", "Combo", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").Grace.Violation:FireServer()
end)

Section7:NewKeybind("Mousepay", "Equip mousepay", Enum.KeyCode.KeypadEight, function()
    workspace[plr.Name].mousepay.Fire:FireServer(CFrame)
end)

Section7:NewKeybind("School shooter", "", Enum.KeyCode.KeypadEight, function()
    game:GetService("ReplicatedStorage").Grace.LMBRemotes.RemoteEvent:FireServer()
end)
