local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "DarkL3",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}

local MainTab = GUI:Tab{
	Name = "Main",
	Icon = "rbxassetid://8569322835"
}

local BossesTab = GUI:Tab{
	Name = "Bosses",
	Icon = "rbxassetid://8569322835"
}

local HatchTab = GUI:Tab{
	Name = "Hatch",
	Icon = "rbxassetid://8569322835"
}

local TeleportTab = GUI:Tab{
	Name = "Teleport",
	Icon = "rbxassetid://8569322835"
}

local GiftsTab = GUI:Tab{
	Name = "Gifts",
	Icon = "rbxassetid://8569322835"
}

--Main Tab Contents

MainTab:Toggle{
	Name = "Strength Farm",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
		sfarm = state
	end
}

task.spawn(function()
    while task.wait() do
        if sfarm then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.PowerGain:FireServer()
            end)
        end
    end
end)

MainTab:Toggle{
	Name = "Auto Push",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
		apfarm = state
	end
}

task.spawn(function()
    while task.wait() do
        if apfarm then
            pcall(function()
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PushGain"):FireServer()
            end)
        end
    end
end)

MainTab:Button{
	Name = "Anti-AFK",
	Description = "Bypasses 20 minute idle kick",
	Callback = function() 
	print("Anti AFK Enabled")
		repeat
			wait()
		until game:IsLoaded() and game:GetService("Players")
		for i, v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
			v:Disable()
		end
	end
}

MainTab:Slider{
	Name = "WalkSpeed",
	Default = 30,
	Min = 0,
	Max = 1000,
	Callback = function(wsnum)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = wsnum
	end
}

--Bosses Tab Contents

BossesTab:dropdown({
    Name = "Select World",
    StartingText = "Select",
    Items = {
        {"Forest", "Forest"},
        {"Beach", "Beach"},
        {"Lava", "Lava"},
        {"Ancient", "Ancient"},
        {"Icey", "Icey"},
        {"Space", "Space"},
        {"Atlantis", "Atlantis"},
        {"Divine", "Divine"},
        {"Dinosaur", "Dinosaur"},
        {"Candy", "Candy"},
        {"Robotic", "Robotic"},
        {"Warrior", "Warrior"},
        {"Jungle", "Jungle"},
        {"Underworld", "Underworld"},
        {"Pirate", "Pirate"},
        {"Mafia", "Mafia"},
        {"Zombie", "Zombie"},
        {"Steam", "Steam"},
        {"Crystal", "Crystal"},
        {"Pixel", "Pixel"},
        {"Dragon", "Dragon"}
    },
    Description = nil,
    Callback = function(wselect)
    
		_G.WorldSelect = wselect
		
    end,
})

BossesTab:dropdown({
    Name = "Select Boss",
    StartingText = "Select",
    Items = {
        {"1st Boss", "Level_1"},
		{"2nd Boss", "Level_2"},
		{"3rd Boss", "Level_3"},
		{"4th Boss", "Level_4"},
		{"5th Boss", "Level_5"}
    },
    Description = "Bosses go from easy to hard 5 being the strongest.",
    Callback = function(bselect)
    
		_G.BossSelect = bselect
		
    end,
})


BossesTab:Toggle{
	Name = "Boss Farm",
	StartingState = false,
	Description = "Glitched version will farm wins faster, but you will need to leave game to stop",
	Callback = function(state) 
		BossPush = state
	end
}

task.spawn(function()
    while task.wait() do
        if BossPush then
            pcall(function()
                local args = {
					[1] = workspace:WaitForChild("Map"):WaitForChild("Worlds"):WaitForChild(_G.WorldSelect):WaitForChild("Levels"):WaitForChild(_G.BossSelect):WaitForChild("Spawner"),
					[2] = 5.373063564300537,
					[3] = "Simulate"
				}

				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Push"):FireServer(unpack(args))
            end)
        end
    end
end)

--Hatch tab Contents

HatchTab:Toggle{
	Name = "UGC Hatch x1",
	StartingState = false,
	Description = Nil,
	Callback = function(state) 
	if state == true then
		_G.hatcha = true
		while wait(0.00001) do
		if _G.hatcha == true then
		local args = {
			[1] = "Hatch1",
			[2] = "Basic",
			[3] = {
				["Chicken"] = true,
				["Dog"] = true,
				["Bull"] = true,
				["Poodle Dog"] = true,
				["Pig"] = true
			}
		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Hatch"):FireServer(unpack(args))
		
		end
		end

	else
		_G.hatcha = false
		while wait(0.00001) do
		if _G.hatcha == true then
		local args = {
			[1] = "Hatch1",
			[2] = "Basic",
			[3] = {
				["Chicken"] = true,
				["Dog"] = true,
				["Bull"] = true,
				["Poodle Dog"] = true,
				["Pig"] = true
			}
		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Hatch"):FireServer(unpack(args))
		
		end
		end
	end
	end
}

HatchTab:Toggle{
	Name = "UGC Hatch x8",
	StartingState = false,
	Description = Nil,
	Callback = function(state) 
	if state == true then
		_G.hatchb = true
		while wait(0.00001) do
		if _G.hatchb == true then
		
local args = {
    [1] = "Hatch8",
    [2] = "Sweet",
    [3] = {
        ["Cupcake"] = true,
        ["Caramel Soda"] = true
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Hatch"):FireServer(unpack(args))
		
		end
		end

	else
		_G.hatchb = false
		while wait(0.00001) do
		if _G.hatchb == true then
		
local args = {
    [1] = "Hatch8",
    [2] = "Sweet",
    [3] = {
        ["Cupcake"] = true,
        ["Caramel Soda"] = true
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Hatch"):FireServer(unpack(args))
		
		end
		end
	end
	end
}

--Teleport tab contents

TeleportTab:Button{
	Name = "Forest",
	Description = nil,
	Callback = function() 
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-80.69999694824219, 4.61281156539917, -19.950000762939453)
		local args = {
			[1] = "Teleport",
			[2] = "Forest"
		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Teleport"):InvokeServer(unpack(args))
	end
}

TeleportTab:Button{
	Name = "Beach",
	Description = nil,
	Callback = function() 
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(627.134033203125, 804.6257934570312, -122.59651947021484)
		local args = {
			[1] = "Teleport",
			[2] = "Beach"
		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Teleport"):InvokeServer(unpack(args))
	end
}

TeleportTab:Button{
	Name = "Lava",
	Description = nil,
	Callback = function() 
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1432.753662109375, 1604.64453125, -122.42256164550781)
		local args = {
			[1] = "Teleport",
			[2] = "Lava"
		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Teleport"):InvokeServer(unpack(args))

	end
}

TeleportTab:Button{
	Name = "Ancient",
	Description = nil,
	Callback = function() 
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2107.033935546875, 2104.84423828125, -12.537567138671875)
		local args = {
			[1] = "Teleport",
			[2] = "Ancient"
		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Teleport"):InvokeServer(unpack(args))
	end
}

TeleportTab:Button{
	Name = "Icey",
	Description = nil,
	Callback = function() 
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3517.93408203125, 2554.84423828125, -12.537567138671875)
		local args = {
			[1] = "Teleport",
			[2] = "Icey"
		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Teleport"):InvokeServer(unpack(args))
	end
}

TeleportTab:Button{
	Name = "Space",
	Description = nil,
	Callback = function() 
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5007.93408203125, 3745.444091796875, -12.537567138671875)
		local args = {
			[1] = "Teleport",
			[2] = "Space"
		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Teleport"):InvokeServer(unpack(args))
	end
}

TeleportTab:Button{
	Name = "Atlantis",
	Description = nil,
	Callback = function() 
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6707.93408203125, 5945.443359375, -12.537567138671875)
		local args = {
			[1] = "Teleport",
			[2] = "Atlantis"
		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Teleport"):InvokeServer(unpack(args))
	end
}

TeleportTab:Button{
	Name = "Divine",
	Description = nil,
	Callback = function() 
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7792.078125, 6844.8935546875, -138.79022216796875)
		local args = {
			[1] = "Teleport",
			[2] = "Divine"
		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Teleport"):InvokeServer(unpack(args))
	end
}

TeleportTab:Button{
	Name = "Gold Machine",
	Description = nil,
	Callback = function() 
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-76.62232208251953, 4.264243125915527, 1.0080835819244385)
	end
}

TeleportTab:Button{
	Name = "Dungeon",
	Description = "Will bypass dungeon cooldown",
	Callback = function()
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-100001.172, 34.592411, -515.433105)
	end
}

--Gifts Tab Contents

GiftsTab:Button{
	Name = "Claim All Rewards",
	Description = "Claim all rewards or claim them one by one below",
	Callback = function() 
		local ohString1 = "Gift_1"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
		wait(0.1)
		local ohString1 = "Gift_2"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
		wait(0.1)
		local ohString1 = "Gift_3"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
		wait(0.1)
		local ohString1 = "Gift_4"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
		wait(0.1)
		local ohString1 = "Gift_5"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
		wait(0.1)
		local ohString1 = "Gift_6"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
		wait(0.1)
		local ohString1 = "Gift_7"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
		wait(0.1)
		local ohString1 = "Gift_8"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
		wait(0.1)
		local ohString1 = "Gift_9"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
		wait(0.1)
		local ohString1 = "Gift_10"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
		wait(0.1)
		local ohString1 = "Gift_11"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
		wait(0.1)
		local ohString1 = "Gift_12"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
	end
}

GiftsTab:Button{
	Name = "Reward 1",
	Description = Nil,
	Callback = function() 
		local ohString1 = "Gift_1"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
	end
}

GiftsTab:Button{
	Name = "Reward 2",
	Description = Nil,
	Callback = function() 
		local ohString1 = "Gift_2"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
	end
}

GiftsTab:Button{
	Name = "Reward 3",
	Description = Nil,
	Callback = function() 
		local ohString1 = "Gift_3"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
	end
}

GiftsTab:Button{
	Name = "Reward 4",
	Description = Nil,
	Callback = function() 
		local ohString1 = "Gift_4"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
	end
}

GiftsTab:Button{
	Name = "Reward 5",
	Description = Nil,
	Callback = function() 
		local ohString1 = "Gift_5"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
	end
}

GiftsTab:Button{
	Name = "Reward 6",
	Description = Nil,
	Callback = function() 
		local ohString1 = "Gift_6"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
	end
}

GiftsTab:Button{
	Name = "Reward 7",
	Description = Nil,
	Callback = function() 
		local ohString1 = "Gift_7"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
	end
}

GiftsTab:Button{
	Name = "Reward 8",
	Description = Nil,
	Callback = function() 
		local ohString1 = "Gift_8"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
	end
}

GiftsTab:Button{
	Name = "Reward 9",
	Description = Nil,
	Callback = function() 
		local ohString1 = "Gift_9"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
	end
}

GiftsTab:Button{
	Name = "Reward 10",
	Description = Nil,
	Callback = function() 
		local ohString1 = "Gift_10"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
	end
}

GiftsTab:Button{
	Name = "Reward 11",
	Description = Nil,
	Callback = function() 
		local ohString1 = "Gift_11"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
	end
}

GiftsTab:Button{
	Name = "Reward 12",
	Description = Nil,
	Callback = function() 
		local ohString1 = "Gift_12"
		game:GetService("ReplicatedStorage").Remotes.PlaytimeRewards:FireServer(ohString1)
	end
}
