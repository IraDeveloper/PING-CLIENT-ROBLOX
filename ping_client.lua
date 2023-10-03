local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local plr = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "NameHub)", HidePremium = false, SaveConfig = true, ConfigFolder = "pingclient_update", IntroEnabled = true, IntroText = "PING CLIENT 1.3")})

OrionLib:MakeNotification({
	Name = "Ping Client",
	Content = "You are logged in as "..plr.name.."!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "pingclient_update"
_G.KeyInput = "string"

function MakeScriptsHub()
	print("LOL")
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

Tab:AddButton({
	Name = "CheckKey",
	Callback = function()
      		if _G.KeyInput == _G.Key then
				MakeScriptsHub()
			else
				IncorrectkeyNotification()
		end
  	end
})
