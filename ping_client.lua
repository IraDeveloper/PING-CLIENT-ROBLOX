local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local plr = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "PING CLIENT | (v1.2)", HidePremium = false, SaveConfig = true, ConfigFolder = "pingclient", IntroEnabled = true, IntroText = "PING CLIENT | (v1.2)"})

OrionLib:MakeNotification({
	Name = "PING CLIENT | (v1.2)!",
	Content = "You are logged in as "..plr.name.."!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "pingclient_1_2"
_G.KeyInput = "string"

function MakeScriptsHub()
	local  Hub = Window:MakeTab({
	Name = "Hub",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
	})
	OrionLib:MakeNotification({
	Name = "Hub",
	Content = "ScriptHub is Activated!",
	Image = "rbxassetid://4483345998",
	Time = 5
	})
end

function CorrectkeyNotification()
	OrionLib:MakeNotification({
	Name = "Correct key!",
	Content = "You have entered Correct Key! ",
	Image = "rbxassetid://4483345998",
	Time = 5
	})
end

function IncorrectkeyNotification()
	OrionLib:MakeNotification({
	Name = "Incorrect key!",
	Content = "You have entered Incorrect Key! ",
	Image = "rbxassetid://4483345998",
	Time = 5
	})
end

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

function hub1()
	Hub:AddButton({
	Name = "Button!",
	Callback = function()
      		print("1")
  	end
	})
end

Tab:AddButton({
	Name = "CheckKey",
	Callback = function()
      		if _G.KeyInput == _G.Key then
				MakeScriptsHub()
				CorrectkeyNotification()
				local  Hub = Window:MakeTab({
				Name = "Hub",
				Icon = "rbxassetid://4483345998",
				PremiumOnly = false
				})
				OrionLib:MakeNotification({
				Name = "Hub",
				Content = "ScriptHub is Activated!",
				Image = "rbxassetid://4483345998",
				Time = 5
				})
				hub1()
			else
				IncorrectkeyNotification()
		end
  	end
})
