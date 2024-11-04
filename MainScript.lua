if game.PlaceId == 17525285794 then -- SJR
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SyanpseZ/scripts/refs/heads/main/Scripts/SillyJujutsuRandomiser.lua"))()
elseif game.PlaceId == 127587127386958 then -- VISION
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SyanpseZ/scripts/refs/heads/main/Scripts/Vision.lua"))()
elseif game.PlaceId == 16732694052 then --FISCH
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SyanpseZ/scripts/refs/heads/main/Scripts/fisch.lua"))()
elseif game.PlaceId == 904367475 then -- DBSAT
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SyanpseZ/scripts/refs/heads/main/Scripts/DragonBallSaiyansAbilityTest.lua"))()
elseif game.PlaceId == 18571010582 then -- KaizenBG
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SyanpseZ/scripts/refs/heads/main/Scripts/KaizenBattlegrounds.lua"))()
elseif game.PlaceId == 11442626954 then -- Skillful
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SyanpseZ/scripts/refs/heads/main/Scripts/Skillful.lua"))()
else
    print("Not in a valid game")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SyanpseZ/scripts/refs/heads/main/Scripts/InvalidGame.lua"))()
end
