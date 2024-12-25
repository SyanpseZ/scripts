local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Supported Games"})

local Tab1 = Window:MakeTab({
    Name = "Games",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TeleportService = game:GetService("TeleportService")

local function joinGame(placeId)
    TeleportService:Teleport(placeId)
end

Tab1:AddButton({
    Name = "Kaizen Battleground",
    Callback = function()
        joinGame(18571010582)
    end    
})

Tab1:AddButton({
    Name = "Silly Jujutsu Randomizer",
    Callback = function()
        joinGame(17525285794)
    end    
})

Tab1:AddButton({
    Name = "Vision",
    Callback = function()
        joinGame(127587127386958)
    end    
})

Tab1:AddButton({
    Name = "Fisch",
    Callback = function()
        joinGame(16732694052)
    end    
})

Tab1:AddButton({
    Name = "Dragon Ball Super Ability Test",
    Callback = function()
        joinGame(904367475)
    end    
})

Tab1:AddButton({
    Name = "Skillful",
    Callback = function()
        joinGame(11442626954)
    end    
})

Tab1:AddButton({
    Name = "True Heart 3",
    Callback = function()
        joinGame(12179321613)
    end    
})

