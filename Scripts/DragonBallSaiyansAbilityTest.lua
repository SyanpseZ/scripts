local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Dragon Ball Saiyans Ability Test", HidePremium = false})

local Tab0 = Window:MakeTab({
	Name = "Funny",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab0:AddButton({
	Name = "Big Back",
	Callback = function()
	    for i=1, 100 do
      		game:GetService("ReplicatedStorage").EventHandler.UltraSuperSaiyan:FireServer()
      	end
  	end    
})

local Tab1 = Window:MakeTab({
	Name = "Transform1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section1 = Tab1:AddSection({
	Name = "Transformations"
})

Tab1:AddButton({
	Name = "Kaioken",
	Callback = function()
      		game:GetService("ReplicatedStorage").EventHandler.Kaioken:FireServer()
  	end    
})

Tab1:AddButton({
	Name = "False Super Saiyan",
	Callback = function()
      		game:GetService("ReplicatedStorage").EventHandler.FalseSuperSaiyan:FireServer()
  	end    
})

Tab1:AddButton({
	Name = "Super Saiyan",
	Callback = function()
      		game:GetService("ReplicatedStorage").EventHandler.SuperSaiyan:FireServer()
  	end    
})

Tab1:AddButton({
	Name = "Ultra Super Saiyan",
	Callback = function()
      		game:GetService("ReplicatedStorage").EventHandler.UltraSuperSaiyan:FireServer()
  	end    
})

Tab1:AddButton({
	Name = "Super Saiyan 2",
	Callback = function()
      		game:GetService("ReplicatedStorage").EventHandler.SuperSaiyan2:FireServer()
  	end    
})

Tab1:AddButton({
	Name = "Super Saiyan 3",
	Callback = function()
      		game:GetService("ReplicatedStorage").EventHandler.SuperSaiyan3:FireServer()
  	end    
})

local Tab2 = Window:MakeTab({
	Name = "Transform2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section2 = Tab2:AddSection({
	Name = "Transformations"
})

Tab2:AddButton({
	Name = "Super Saiyan 4",
	Callback = function()
      		game:GetService("ReplicatedStorage").EventHandler.SuperSaiyan4:FireServer()
  	end    
})
Tab2:AddButton({
	Name = "Super Saiyan 5",
	Callback = function()
      		game:GetService("ReplicatedStorage").EventHandler.SuperSaiyan5:FireServer()
  	end    
})
Tab2:AddButton({
	Name = "Super Saiyan 6",
	Callback = function()
      		game:GetService("ReplicatedStorage").EventHandler.SuperSaiyan6:FireServer()
  	end    
})
Tab2:AddButton({
	Name = "Super Saiyan God",
	Callback = function()
      		game:GetService("ReplicatedStorage").EventHandler.SuperSaiyanGod:FireServer()
  	end    
})
Tab2:AddButton({
	Name = "Super Saiyan Blue",
	Callback = function()
      		game:GetService("ReplicatedStorage").EventHandler.SuperSaiyanBlue:FireServer()
  	end    
})
Tab2:AddButton({
	Name = "Super Saiyan Blue Kaioken",
	Callback = function()
      		game:GetService("ReplicatedStorage").EventHandler.SSJBKaioken:FireServer()
  	end    
})
Tab2:AddButton({
	Name = "Mystic",
	Callback = function()
      		game:GetService("ReplicatedStorage").EventHandler.Mystic:FireServer()
  	end    
})
