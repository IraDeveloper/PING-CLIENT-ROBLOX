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
