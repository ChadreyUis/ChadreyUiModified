local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ChadreyUis/ChadreyUiModified/refs/heads/main/Library.lua"))()
local Window = Library:Window({})
local Watermark = Library:Watermark({
    Name = "EXAMPLE UI"
})
local KeybindList = Library:KeybindList({
    Name = "Keybinds"
})

local ESPPreview = Library:ESPPreview({
    Name = "ESP Preview"
})


local ModeratorList = Library:ModeratorList({
    Name = "Moderators"
})

local Page = Window:Page({ Name = "Main" })
local SubPage = Page:SubPage({ Name = "Combat" })



local LeftSection = SubPage:Section({ Name = "Examples 1", Side = 1 })
local Section = SubPage:Section({ Name = "Examples 2", Side = 2 })


Section:Toggle({
    Name = "ESP",
    Flag = "ESPENABLED",
    Default = false
}):Colorpicker({
    Name = "ESP Color",
    Flag = "ESPColor",
    Default = Color3.fromRGB(0, 255, 0)
})

Section:Dropdown({
    Name = "MultiDropdowns",
    Flag = "TargetPlayers",
    Items = { "Player1", "Player2", "Player3", "Player4", "Player5" },
    Multi = true,
    Default = { "Player1", "Player3" },
    Callback = function(Values)
        for _, v in ipairs(Values) do
        end
    end
})

Section:Textbox({
    Name = "Username",
    Flag = "Username",
    Default = "Player",
    Placeholder = "Enter username...",
    Callback = function(Value)
    end
})


local aimbot = LeftSection:Toggle({
    Name = "Enable Aimbot",
    Flag = "AimbotEnabled",
    Default = false,
    Callback = function(Value)
    end
})

LeftSection:Slider({
    Name = "Smoothness",
    Flag = "AimbotSmooth",
    Default = 5,
    Min = 1,
    Max = 20,
    Decimals = 1,
    Callback = function(Value)
    end
})

LeftSection:Slider({
    Name = "Aim Speed",
    Flag = "AimbotSpeed",
    Default = 10,
    Min = 1,
    Max = 50,
    Callback = function(Value)
    end
})

LeftSection:Dropdown({
    Name = "Target Priority",
    Flag = "AimbotPriority",
    Items = { "Closest", "Lowest Health", "Highest Health", "Crosshair" },
    Default = "Closest",
    Callback = function(Value)
    end
})

LeftSection:Dropdown({
    Name = "Aim Part",
    Flag = "AimbotPart",
    Items = { "Head", "Torso", "HumanoidRootPart" },
    Default = "Head",
    Callback = function(Value)
    end
})
aimbot:Keybind({
    Name = "Aimbot Key",
    Flag = "AimbotKey",
    Default = Enum.KeyCode.ButtonR2,
    Mode = "Hold",
    Callback = function(IsActive)
    end
})

LeftSection:Button({
    Name = "Example Button",
    Callback = function()
        Library:Notification("Example ", 3, Color3.fromRGB(0, 255, 0))
    end
})

LeftSection:Button({
    Name = "Reset Settings",
    Callback = function()
        Library:Notification("Settings reset!", 2, Color3.fromRGB(255, 165, 0))
    end
})

LeftSection:Toggle({
    Name = "Visible Check",
    Flag = "AimbotVisibleCheck",
    Default = true,
    Callback = function(Value)
    end
})

LeftSection:Toggle({
    Name = "Wallbang",
    Flag = "AimbotWallbang",
    Default = false,
    Callback = function(Value)
    end
})

LeftSection:Slider({
    Name = "Max Distance",
    Flag = "AimbotMaxDist",
    Default = 500,
    Min = 50,
    Max = 2000,
    Suffix = " studs",
    Callback = function(Value)
    end
})

LeftSection:Button({
    Name = "Save Aimbot Config",
    Callback = function()
        Library:Notification("Aimbot config saved!", 3, Color3.fromRGB(0, 100, 255))
    end
})

LeftSection:Button({
    Name = "Load Aimbot Config",
    Callback = function()
        Library:Notification("Aimbot config loaded!", 3, Color3.fromRGB(0, 255, 0))
    end
})


Library:Notification("Example LOaded", 3, Library.Theme["Accent"])

Window:CreateSettingsPage()
