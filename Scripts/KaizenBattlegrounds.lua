local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Join A Game!"})

local plr = game:GetService("Players").LocalPlayer

local Tab1 = Window:MakeTab({
	Name = "General",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab1:AddSection({
	Name = "Anticheat"
})

Tab1:AddButton({
	Name = "Delete AntiCheat",
	Callback = function()
      	game:GetService("ReplicatedStorage")["b353e8de-2263-4ec9-99f4-fe0756d17181"]:Destroy()
  	end    
})

local Section = Tab1:AddSection({
	Name = "Kills"
})

Tab1:AddButton({
	Name = "Get 10k Kills 🤯🤯",
	Callback = function()
      	for i=1,10000 do
            game:GetService("ReplicatedStorage").Remotes.GetKills:FireServer()
        end
  	end    
})

local Section = Tab1:AddSection({
	Name = "Moves"
})

Tab1:AddToggle({
	Name = "Ultra instinct?!?!",
	Default = false,
	Callback = function(Value)
		game:GetService("ReplicatedStorage").Remotes.Yuji:FireServer("ManjiActive")
	end    
})


Tab1:AddToggle({
	Name = "Firearrow(s)",
	Default = false,
	Callback = function(Value)
		for i=1,100 do
            game:GetService("ReplicatedStorage").Remotes.Yuji:FireServer("FireArrow")
            task.wait()
        end
	end    
})


Tab1:AddToggle({
	Name = "Aura",
	Default = false,
	Callback = function(Value)
		for i=1,1000 do
            game:GetService("ReplicatedStorage").Remotes.Yuji:FireServer("Dismantle")
            task.wait()
        end
	end    
})

