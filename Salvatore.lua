
--Call Fluent UI Library For Salvatore
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/RFR-R1CH4RD/SaveManager/main/Salvatore.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/RFR-R1CH4RD/InterfaceManager/main/Salvatore.lua"))()


--Tabs For Brookhaven RP
local Tabs = {
    Universal = Window:AddTab({ Title = "Universal", Icon = "rbxassetid://16781770844" }),
}


--Section For Visuals In Universal Page
Tabs.Universal:AddSection("Visuals", {
    Title = "",
    Default = "",
    Callback = function(Text)
    end
})


--Paragraph For Name In Universal Page
Tabs.Universal:AddParagraph({
    Title = "Names",
    Content = ""
})



--Toggle For Enable Player Name In Universal Page
local Toggle = Tabs.Universal:AddToggle("PlayerNamesESPToggle", {Title = "Player Names", Default = State, Description = "You will enable player names.", })

Toggle:OnChanged(function(State)
    EspSettings.Names.Enabled = State
end)




--Toggle For Enable Show Distance In Universal Page
local Toggle = Tabs.Universal:AddToggle("ShowDistanceToggle", {Title = "Show Distance", Default = State, Description = "You will enable show distance.", })

Toggle:OnChanged(function(State)
    EspSettings.Names.ShowDistance = State
end)




--Toggle For Enable Use Display Name In Universal Page
local Toggle = Tabs.Universal:AddToggle("UseDisplayNameToggle", {Title = "Use Display Name", Default = State, Description = "You will enable use display name.", })

Toggle:OnChanged(function(State)
    EspSettings.Names.UseDisplayName = State
end)




--Toggle For Enable Use Team Color In Universal Page
local Toggle = Tabs.Universal:AddToggle("UseTeamColorToggle", {Title = "Use Team Color", Default = State, Description = "You will enable use team color.", })

Toggle:OnChanged(function(State)
    EspSettings.Names.UseTeamColor = State
end)





--Toggle For Enable Rainbow Color In Universal Page
local Toggle = Tabs.Universal:AddToggle("RainbowColorToggle", {Title = "Rainbow Color", Default = State, Description = "You will enable rainbow color.", })

Toggle:OnChanged(function(State)
    EspSettings.Names.RainbowColor = State
end)




--Paragraph For Box In Universal Page
Tabs.Universal:AddParagraph({
    Title = "Boxes",
    Content = ""
})



--Toggle For Enable Player Box In Universal Page
local Toggle = Tabs.Universal:AddToggle("BoxesToggle", {Title = "Player Boxes", Default = State, Description = "You will enable player boxes.", })

Toggle:OnChanged(function(State)
    EspSettings.Boxes.Enabled = State
end)




--Toggle For Enable Use Team Color In Universal Page
local Toggle = Tabs.Universal:AddToggle("UseTeamColorToggle", {Title = "Use Team Color", Default = State, Description = "You will enable use team color.", })

Toggle:OnChanged(function(State)
    EspSettings.Boxes.UseTeamColor = State
end)




--Toggle For Enable RainbowColor In Universal Page
local Toggle = Tabs.Universal:AddToggle("RainbowColorToggle", {Title = "Rainbow Color", Default = State, Description = "You will enable rainbow color.", })

Toggle:OnChanged(function(State)
    EspSettings.Boxes.RainbowColor = State
end)




--Paragraph For Tracer In Universal Page
Tabs.Universal:AddParagraph({
    Title = "Tracers",
    Content = ""
})




--Toggle For Enable Player Tracers In Universal Page
local Toggle = Tabs.Universal:AddToggle("PlayerTracersToggle", {Title = "Player Tracers", Default = State, Description = "You will enable player tracers."})

Toggle:OnChanged(function(State)
    EspSettings.Tracers.Enabled = State
end)




--Dropdown For Choose Origin In Universal Page
local Dropdown = Tabs.Universal:AddDropdown("OriginDropdown", {
    Title = "Origin",
    Description = "You will select of origin at tracers.",
    Values = {
        "Center",
        "Top",
        "Bottom",
        "Mouse"
    },
    Multi = false,
    Default = 1,
})

Dropdown:SetValue(EspSettings.Tracers.Origin) 

Dropdown:OnChanged(function(Item)
    EspSettings.Tracers.Origin = Item 
end)





--Toggle For Enable Use Team Color In Universal Page
local Toggle = Tabs.Universal:AddToggle("UseTeamColorToggle", {Title = "Use Team Color", Default = State, Description = "You will enable use team color.", })

Toggle:OnChanged(function(State)
    EspSettings.Tracers.UseTeamColor = State
end)





--Toggle For Enable Rainbow Color In Universal Page
local Toggle = Tabs.Universal:AddToggle("RainbowColorToggle", {Title = "Rainbow Color", Default = State, Description = "You will enable rainbow color.", })

Toggle:OnChanged(function(State)
    EspSettings.Tracers.RainbowColor = State
end)





--Paragraph For HeadDot In Universal Page
Tabs.Universal:AddParagraph({
    Title = "HeadDots",
    Content = ""
})





--Toggle For Enable Player HeadDot In Universal Page
local Toggle = Tabs.Universal:AddToggle("PlayerHeadDotToggle", {Title = "Player HeadDots", Default = State, Description = "You will enable player headdots."})

Toggle:OnChanged(function(State)
    EspSettings.HeadDots.Enabled = State
end)





--Toggle For Enable Filled In Universal Page
local Toggle = Tabs.Universal:AddToggle("FilledToggle", {Title = "Filled", Default = State, Description = "You will enable filled."})

Toggle:OnChanged(function(State)
    EspSettings.HeadDots.Filled = State
end)





--Toggle For Enable Use Team Color In Universal Page
local Toggle = Tabs.Universal:AddToggle("UseTeamColorToggle", {Title = "Use Team Color", Default = State, Description = "You will enable use team color.", })

Toggle:OnChanged(function(State)
    EspSettings.HeadDots.UseTeamColor = State
end)





--Toggle For Enable Rainbow Color In Universal Page
local Toggle = Tabs.Universal:AddToggle("RainbowColorToggle", {Title = "Rainbow Color", Default = State, Description = "You will enable rainbow color.", })

Toggle:OnChanged(function(State)
    EspSettings.HeadDots.RainbowColor = State
end)





--Toggle For Enable Team Check In Universal Page
local Toggle = Tabs.Universal:AddToggle("TeamCheckToggle", {Title = "Team Check", Default = State, Description = "You will enable team check.", })

Toggle:OnChanged(function(State)
    EspSettings.TeamCheck = State
end)




--Paragraph For Camera In Universal Page
Tabs.Universal:AddParagraph({
    Title = "Camera",
    Content = ""
})



--Slider For Adjust FOV In Universal Page
local Slider = Tabs.Universal:AddSlider("FOVSlider", {
    Title = "FOV",
    Description = "You will adjust fov.",
    Default = 70,
    Min = 70,
    Max = 127,
    Rounding = 1,
    Callback = function(Value)
        game:GetService'Workspace'.Camera.FieldOfView = Value
    end
})



--Toggle For Enable Unlock Camera In Universal Page
local Toggle = Tabs.Universal:AddToggle("UnlockCameraToggle", {Title = "Unlock Camera", Default = State, Description = "You will enable unlock camera.", })

Toggle:OnChanged(function(State)
    if State then
        game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 99999
    else
        game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 127
    end
end)



local targetPlayerName4 = ""
local spectateConnection 

--Input For Spectate Player In Universal Page
local Input = Tabs.Universal:AddInput("SpectatePlayerInput", {
    Title = "Spectate Player",
    Default = "",
    Placeholder = "Type here..",
    Numeric = false, 
    Finished = true, 
    Callback = function(Text)
        Text = Text:gsub("%s+", "")

        if Text == "" then
            Fluent:Notify({
                Title = "Spectate Player",
                Content = "The player cannot be found.",
                Duration = 10
            })
            targetPlayerName4 = ""
            return 
        end

        local targetPlayer4 = FindPlayerByName(Text)
        if not targetPlayer4 then
            Fluent:Notify({
                Title = "Spectate Player",
                Content = "The player cannot be found.",
                Duration = 10
            })
            return 
        end

        targetPlayerName4 = Text

        local camera = workspace.Camera

        
        local function updateCamera()
            if targetPlayer4.Character and targetPlayer4.Character:FindFirstChild("Humanoid") then
                camera.CameraSubject = targetPlayer4.Character.Humanoid
            else
                Fluent:Notify({
                    Title = "Spectate Player",
                    Content = "The player is no longer available.",
                    Duration = 10
                })
                camera.CameraSubject = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
                if spectateConnection then
                    spectateConnection:Disconnect()
                    spectateConnection = nil
                end
            end
        end

        
        if spectateConnection then
            spectateConnection:Disconnect()
            spectateConnection = nil
        end

        
        updateCamera()

     
        spectateConnection = game:GetService("RunService").RenderStepped:Connect(function()
            if targetPlayer4 and targetPlayer4.Character and targetPlayer4.Character:FindFirstChild("Humanoid") then
                camera.CameraSubject = targetPlayer4.Character.Humanoid
            else
                camera.CameraSubject = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
                if spectateConnection then
                    spectateConnection:Disconnect()
                    spectateConnection = nil
                end
            end
        end)

       
        targetPlayer4.AncestryChanged:Connect(function(_, parent)
            if not parent then 
                Fluent:Notify({
                    Title = "Spectate Player",
                    Content = "The player has left the game.",
                    Duration = 10
                })
                camera.CameraSubject = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
                if spectateConnection then
                    spectateConnection:Disconnect()
                    spectateConnection = nil
                end
            end
        end)
    end
})

--Button For Stop Spectating In Universal Page
Tabs.Universal:AddButton({
    Title = "Stop Spectating",
    Description = "You will implement stop spectating.",
    Callback = function()
        
        workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")

        
        if spectateConnection then
            spectateConnection:Disconnect()
            spectateConnection = nil
        end

        Fluent:Notify({
            Title = "Stop Spectating",
            Content = "You have stopped spectating.",
            Duration = 10
        })
    end
})






--Section For Aimbot In Universal Page
Tabs.Universal:AddSection("Aimbot", {
    Title = "",
    Default = "",
    Callback = function(Text)
    end
})





--Toggle For Enable Crosshair In Universal Page
local Toggle = Tabs.Universal:AddToggle("CrosshairToggle", {Title = "Crosshair", Default = State, Description = "You will enable crosshair.", })

Toggle:OnChanged(function(State)
    AimbotSettings.Crosshair.Enabled = State
end)




--Toggle For Enable Fov Circle In Universal Page
local Toggle = Tabs.Universal:AddToggle("FovCircleToggle", {Title = "Fov Circle", Default = State, Description = "You will enable fov circle.", })

Toggle:OnChanged(function(State)
    AimbotSettings.FovCircle.Enabled = State
end)




--Slider For Adjust Radius In Universal Page
local Slider = Tabs.Universal:AddSlider("RadiusSlider", {
    Title = "Radius",
    Description = "You will adjust radius.",
    Default = 100,
    Min = 100,
    Max = 500,
    Rounding = 1,
    Callback = function(Value)
        AimbotSettings.FovCircle.Radius = Value
    end
})



--Paragraph For Aimbot In Universal Page
Tabs.Universal:AddParagraph({
    Title = "Aimbot",
    Content = ""
})



--Toggle For Enable Aimbot In Universal Page
local Toggle = Tabs.Universal:AddToggle("AimbotToggle", {Title = "Aimbot", Default = State, Description = "You will enable aimbot.", })

Toggle:OnChanged(function(State)
    AimbotSettings.Aimbot.Enabled = State
end)





--Dropdown For Choose Target Part In Universal Page
local Dropdown = Tabs.Universal:AddDropdown("TargetPartDropdown", {
    Title = "Target Part",
    Description = "You will choose target part.",
    Values = {
        "Head",
        "HumanoidRootPart"
    },
    Multi = false,
    Default = 1,
})

Dropdown:SetValue(AimbotSettings.Aimbot.TargetPart) 

Dropdown:OnChanged(function(Item)
    AimbotSettings.Aimbot.TargetPart = Item 
end)





--Slider For Adjust Aimbot Strength In Universal Page
local Slider = Tabs.Universal:AddSlider("AimbotStrengthSlider", {
    Title = "Strength",
    Description = "You will adjust strength.",
    Default = 55,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        AimbotSettings.Aimbot.Strength = Value
    end
})



--Paragraph For Aim Assist In Universal Page
Tabs.Universal:AddParagraph({
    Title = "Aim Assist",
    Content = ""
})



--Toggle For Enable Aim Assist In Universal Page
local Toggle = Tabs.Universal:AddToggle("AimAssistToggle", {Title = "Aim Assist", Default = State, Description = "You will enable aim assist.", })

Toggle:OnChanged(function(State)
    AimbotSettings.AimAssist.Enabled = State
end)





--Slider For Adjust Aim Assist Strength In Universal Page
local Slider = Tabs.Universal:AddSlider("AimAssistStrengthSlider", {
    Title = "Strength",
    Description = "You will adjust strength.",
    Default = 55,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        AimbotSettings.AimAssist.Strength = Value
    end
})





--Toggle For Enable Trigger Bot In Universal Page
local Toggle = Tabs.Universal:AddToggle("TriggerBotToggle", {Title = "Trigger Bot", Default = State, Description = "You will enable trigger bot.", })

Toggle:OnChanged(function(State)
    AimbotSettings.TriggerBot.Enabled = State
end)






--Toggle For Enable Whitelist Friends In Universal Page
local Toggle = Tabs.Universal:AddToggle("WhitelistFriendsToggle", {Title = "Whitelist Friends", Default = State, Description = "You will enable whitelist friends.", })

Toggle:OnChanged(function(State)
    AimbotSettings.WhitelistFriends = State
end)





--Toggle For Enable Team Check In Universal Page
local Toggle = Tabs.Universal:AddToggle("TeamCheckToggle", {Title = "Team Check", Default = State, Description = "You will enable team check name.", })

Toggle:OnChanged(function(State)
    AimbotSettings.TeamCheck = State
end)





--Section For Player In Universal Page
Tabs.Universal:AddSection("Player", {
    Title = "",
    Default = "",
    Callback = function(Text)
    end
})


local WalkSpeedEnabled = false
local WalkSpeedValue = 16

local function SetWalkSpeed(speed)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end



--Slider For Adjust WalkSpeed In Universal Page
local Slider = Tabs.Universal:AddSlider("WalkSpeedSlider", {
    Title = "WalkSpeed",
    Description = "You will adjust walkspeed.",
    Default = WalkSpeedValue,
    Min = 16,
    Max = 277,
    Rounding = 1,
    Callback = function(Value)
        WalkSpeedValue = Value
        if WalkSpeedEnabled then
            SetWalkSpeed(WalkSpeedValue)
        end
    end
})


Slider:OnChanged(function(Value)
    if WalkSpeedEnabled then
        SetWalkSpeed(Value)
    end
end)


--Toggle For Enable WalkSpeed In Universal Page
local Toggle = Tabs.Universal:AddToggle("WalkSpeedToggle", {
    Title = "Enable Walkspeed",
    Default = WalkSpeedEnabled,
    Description = "You will enable walkspeed."
})

Toggle:OnChanged(function(State)
    WalkSpeedEnabled = State
    if WalkSpeedEnabled then
        SetWalkSpeed(WalkSpeedValue)
    else
        SetWalkSpeed(16)
    end
end)




local JumpPowerEnabled = false
local JumpPowerValue = 50

local function SetJumpPower(power)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = power
end




--Slider For Adjust Power Of Jump In Universal Page
local JumpPowerSlider = Tabs.Universal:AddSlider("JumpPowerSlider", {
    Title = "JumpPower",
    Description = "You will adjust jumppower.",
    Default = JumpPowerValue,
    Min = 50,
    Max = 277,
    Rounding = 1,
    Callback = function(Value)
        JumpPowerValue = Value
        if JumpPowerEnabled then
            SetJumpPower(JumpPowerValue)
        end
    end
})


JumpPowerSlider:OnChanged(function(Value)
    if JumpPowerEnabled then
        SetJumpPower(Value)
    end
end)





--Toggle For Enable JumpPower In Universal Page
local JumpPowerToggle = Tabs.Universal:AddToggle("EnableJumpPowerToggle", {
    Title = "Enable JumpPower",
    Default = JumpPowerEnabled,
    Description = "You will enable jumppower."
})

JumpPowerToggle:OnChanged(function(State)
    JumpPowerEnabled = State
    if JumpPowerEnabled then
        SetJumpPower(JumpPowerValue)
    else
        SetJumpPower(50) 
    end
end)






--Function For Fly In Universal Page
local newflyspeed = 50
local c
local h
local bv
local bav
local cam
local flying
local p = game.Players.LocalPlayer
local buttons = {W = false, S = false, A = false, D = false, Moving = false}



function startFly()
    if not p.Character or not p.Character.Head or flying then return end
    c = p.Character
    h = c.Humanoid
    h.PlatformStand = true
    cam = workspace:WaitForChild('Camera')
    bv = Instance.new("BodyVelocity")
    bav = Instance.new("BodyAngularVelocity")
    bv.Velocity, bv.MaxForce, bv.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
    bav.AngularVelocity, bav.MaxTorque, bav.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
    bv.Parent = c.Head
    bav.Parent = c.Head
    flying = true
    h.Died:connect(function() flying = false end)
end
  
function endFly()
    if not p.Character or not flying then return end
    h.PlatformStand = false
    bv:Destroy()
    bav:Destroy()
    flying = false
end

function setVec(vec)
    return vec * (newflyspeed / vec.Magnitude)
end



--Slider For Fly Speed In Universal Page
local Slider = Tabs.Universal:AddSlider("FlySpeedSlider", {
    Title = "Fly Speed",
    Description = "You will adjust fly speed.",
    Default = 50,
    Min = 0,
    Max = 500,
    Rounding = 1,
    Callback = function(flyspeed)
        newflyspeed = tonumber(flyspeed)
    end
})



--Toggle For Enable Fly In Universal Page
local Toggle = Tabs.Universal:AddToggle("FlyToggle", {Title = "Enable Fly", Default = State, Description = "You will enable fly." })

Toggle:OnChanged(function(enablefly)
if flyfirst ~= true then
        flyfirst = true
        game:GetService("UserInputService").InputBegan:connect(function (input, GPE) 
            if GPE then return end
            for i, e in pairs(buttons) do
                if i ~= "Moving" and input.KeyCode == Enum.KeyCode[i] then
                    buttons[i] = true
                    buttons.Moving = true
                end
            end
        end)
          
        game:GetService("UserInputService").InputEnded:connect(function (input, GPE) 
            if GPE then return end
            local a = false
            for i, e in pairs(buttons) do
                if i ~= "Moving" then
                    if input.KeyCode == Enum.KeyCode[i] then
                        buttons[i] = false
                    end
                    if buttons[i] then a = true end
                end
            end
            buttons.Moving = a
        end)

        game:GetService("RunService").Heartbeat:connect(function (step) -- The actual fly function, called every frame
            if flying and c and c.PrimaryPart then
                local p = c.PrimaryPart.Position
                local cf = cam.CFrame
                local ax, ay, az = cf:toEulerAnglesXYZ()
                c:SetPrimaryPartCFrame(CFrame.new(p.x, p.y, p.z) * CFrame.Angles(ax, ay, az))
                if buttons.Moving then
                    local t = Vector3.new()
                    if buttons.W then t = t + (setVec(cf.lookVector)) end
                    if buttons.S then t = t - (setVec(cf.lookVector)) end
                    if buttons.A then t = t - (setVec(cf.rightVector)) end
                    if buttons.D then t = t + (setVec(cf.rightVector)) end
                    c:TranslateBy(t * step)
                end
            end
        end)
    end
    if enablefly == true then
        startFly()
    elseif enablefly == false then
        endFly()
    end
end)






--Toggle For Enable Infinite Jump In Universal Page
local Toggle = Tabs.Universal:AddToggle("InfiniteJumpToggle", {Title = "Infinite Jump", Default = State, Description = "You will enable infinite jump." })

Toggle:OnChanged(function(State)
    Infinite = State
game:GetService("UserInputService").JumpRequest:connect(function()
	if Infinite then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
  end)
end)


--Toggle For Enable Ctrl Click Teleport In Universal Page
local Toggle = Tabs.Universal:AddToggle("CtrlClickTeleportToggle", {Title = "Ctrl Click Teleport", Default = State,  Description = "You will enable ctrl click teleport."})
   
Toggle:OnChanged(function(State)
    getgenv().CtrlClickTeleport = State

    local UIS = game:GetService("UserInputService")
    local Plr = game.Players.LocalPlayer
    local Mouse = Plr:GetMouse()

    local function TeleportTo(position)
        local Chr = Plr.Character
        if Chr then
            local char = game.Players.LocalPlayer.Character
            local hm = char.HumanoidRootPart
            hm.CFrame = CFrame.new(position)
        end
    end

    UIS.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and CtrlClickTeleport then
            TeleportTo(Mouse.Hit.p)
        end
    end)
end)




--Button For Implement Reset Character Method 1 In Universal Page
Tabs.Universal:AddButton({
    Title = "Reset Character Method 1",
    Description = "You will implement reset character method 1.",
    Callback = function()
        game.Players.LocalPlayer.Character.Head:Destroy()
    end
})



--Button For Implement Reset Character Method 2 In Universal Page
Tabs.Universal:AddButton({
    Title = "Reset Character Method 2",
    Description = "You will implement reset character method 2.",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
})




--Section For Admin Scripts In Community Page
Tabs.Community:AddSection("Admin Scripts", {
    Title = "",
    Default = "",
    Callback = function(Text)
    end
})




--Button For Implement Infinite Yield script In Community Page
Tabs.Community:AddButton({
    Title = "Execute Infinite Yield",
    Description = "You will implement execute infinite yield.",
    Callback = function()
        Fluent:Notify({
            Title = "Execute Infinite Yield",
            Content = "Script executed!",
            Duration = 7
        })
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})



--Button For Implement Homebrew Admin script In Community Page
Tabs.Community:AddButton({
    Title = "Execute Homebrew Admin",
    Description = "You will implement execute homebrew admin.",
    Callback = function()
        Fluent:Notify({
            Title = "Execute Homebrew Admin",
            Content = "Script executed!",
            Duration = 7
        })
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/mgamingpro/HomebrewAdmin/master/Main'),true))()
    end
})



--Button For Implement Fates Admin script In Community Page
Tabs.Community:AddButton({
    Title = "Execute Fates Admin",
    Description = "You will implement execute fates admin.",
    Callback = function()
        Fluent:Notify({
            Title = "Execute Fates Admin",
            Content = "Script executed!",
            Duration = 7
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
    end
})




--Section For Chat Scripts In Community Page
Tabs.Community:AddSection("Chat Scripts", {
    Title = "",
    Default = "",
    Callback = function(Text)
    end
})




--Button For Implement Chat Art script In Community Page
Tabs.Community:AddButton({
    Title = "Execute Chat Art",
    Description = "You will implement execute chat art.",
    Callback = function()
        Fluent:Notify({
            Title = "Execute Chat Art",
            Content = "Script executed!",
            Duration = 7
        })
         
    if _G.CanOpenCD == 'Y' or _G.CanOpenCD == nil then
	_G.CanOpenCD = 'N'
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local chat = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local UIGradient = Instance.new("UIGradient")
	local UICorner_2 = Instance.new("UICorner")
	local close = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = ScreenGui
	Frame.Active = true
	Frame.Draggable = true
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.105488181, 0, 0.147911012, 0)
	Frame.Size = UDim2.new(0.250783861, 0, 0.366124362, 0)
	Frame.SizeConstraint = Enum.SizeConstraint.RelativeXX

	chat.Name = "chat"
	chat.Parent = Frame
	chat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	chat.BorderColor3 = Color3.fromRGB(0, 0, 0)
	chat.BorderSizePixel = 0
	chat.Position = UDim2.new(0.338757247, 0, 0.890470445, 0)
	chat.Size = UDim2.new(0, 79, 0, 39)
	chat.Font = Enum.Font.SourceSans
	chat.Text = "Chat"
	chat.TextColor3 = Color3.fromRGB(0, 0, 0)
	chat.TextScaled = true
	chat.TextSize = 14.000
	chat.TextWrapped = true

	UICorner.Parent = chat

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(65, 65, 65)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
	UIGradient.Rotation = 142.91810607910156
	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.15), NumberSequenceKeypoint.new(1.00, 0.15)}
	UIGradient.Parent = Frame

	UICorner_2.Parent = Frame

	close.Name = "close"
	close.Parent = Frame
	close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	close.BorderSizePixel = 0
	close.Position = UDim2.new(0.896839917, 0, 0, 0)
	close.Size = UDim2.new(0.100000001, 0, 0.100000001, 0)
	close.SizeConstraint = Enum.SizeConstraint.RelativeXX
	close.Font = Enum.Font.SourceSans
	close.Text = "X"
	close.TextColor3 = Color3.fromRGB(0, 0, 0)
	close.TextScaled = true
	close.TextSize = 14.000
	close.TextWrapped = true

	UICorner_3.Parent = close

	local function PFKZKTS_fake_script()
		local script = Instance.new('LocalScript', Frame)

		local scrGui = script.Parent
		local buttonSize = 0.141
		local startY = 0.073
		
		local function createButton(position, color , i, j)
			local button = Instance.new("TextButton")
			button.Name = i.."_"..j
			button.SizeConstraint = Enum.SizeConstraint.RelativeXX
			button.Size = UDim2.new(buttonSize, 0, buttonSize, 0)
			button.Position = position
			button.BackgroundColor3 = color
			button.Text = ''
			button.Parent = scrGui
		
			button.MouseButton1Click:Connect(function()
				if button.BackgroundColor3 == Color3.new(1, 1, 1) then
					button.BackgroundColor3 = Color3.new(0, 0, 0)
				else
					button.BackgroundColor3 = Color3.new(1, 1, 1)
				end
			end)
		
			return button
		end
		
		for i = 1, 7 do
			for j = 1, 7 do
				local position = UDim2.new((j - 1) * 0.143, 0, (i - 1) * 0.1 + startY, 0)
				createButton(position, Color3.new(1, 1, 1), i, j)
			end
		end
	end
	coroutine.wrap(PFKZKTS_fake_script)()
	local function ALHDNAM_fake_script() 
		local script = Instance.new('LocalScript', chat)

		local function message(message)
			if game:GetService('TextChatService').ChatVersion == Enum.ChatVersion.LegacyChatService then
				game:GetService('ReplicatedStorage'):WaitForChild('DefaultChatSystemChatEvents'):WaitForChild('SayMessageRequest'):FireServer(message, 'All')
			else
				game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(message)
			end
		end

		local scrGui = script.Parent.Parent 
		local status = ""
		script.Parent.MouseButton1Click:Connect(function()
			for i = 1, 7 do
				status = ''
				for j = 1, 7 do
					local button = scrGui:FindFirstChild(i.."_"..j)
					if button then
						if button.BackgroundColor3 == Color3.new(1, 1, 1) then
							status = status.."⚪"
						else
							status = status.."⚫"
						end
					end
				end
				message(status)
				wait(0.1)
			end
		end)
		
	end
	coroutine.wrap(ALHDNAM_fake_script)()
	local function CVXH_fake_script()
		local script = Instance.new('LocalScript', UIGradient)

		script.Parent.Parent.Draggable = true
		
		local RunService = game:GetService("RunService")
		local ROTATE_SPEED = 22.5
		local uiGradient = script.Parent
		
		local function onRenderStep(deltaTime)
			local currentRotation = uiGradient.Rotation
			uiGradient.Rotation = (currentRotation + ROTATE_SPEED * deltaTime) % 360
		end
		
		RunService.RenderStepped:Connect(onRenderStep)
	end
	coroutine.wrap(CVXH_fake_script)()
	local function RHVGF_fake_script() 
		local script = Instance.new('LocalScript', close)

		local button = script.Parent
		
		button.MouseButton1Click:Connect(function()
			_G.CanOpenCD = 'Y'
			script.Parent.Parent.Parent:Destroy()
		end)
	end
	coroutine.wrap(RHVGF_fake_script)()
    end
  end
})



--Button For Implement BetterBypasser script In Community Page
Tabs.Community:AddButton({
    Title = "Execute BetterBypasser",
    Description = "You will implement execute betterbypasser.",
    Callback = function()
        Fluent:Notify({
            Title = "Execute BetterBypasser",
            Content = "Script executed!",
            Duration = 7
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua",true))()
    end
})



--Button For Implement Anti Chat & Screenshot Logger script In Community Page
Tabs.Community:AddButton({
    Title = "Execute Anti Chat & Screenshot Logger",
    Description = "You will implement execute anti chat & screenshot logger.",
    Callback = function()
        Fluent:Notify({
            Title = "Execute Anti Chat & Screenshot Logger",
            Content = "Script executed!",
            Duration = 7
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua", true))()
    end
})




--Section For Misc Scripts In Community Page
Tabs.Community:AddSection("Misc Scripts", {
    Title = "",
    Default = "",
    Callback = function(Text)
    end
})



--Button For Implement Hamster Ball script In Community Page
Tabs.Community:AddButton({
    Title = "Execute Hamster Ball",
    Description = "You will implement execute hamster ball.",
    Callback = function()
        Fluent:Notify({
            Title = "Execute Hamster Ball",
            Content = "Script executed!",
            Duration = 7
        })
        local UserInputService = game:GetService("UserInputService")
        local RunService = game:GetService("RunService")
        local Camera = workspace.CurrentCamera

        local SPEED_MULTIPLIER = 30
        local JUMP_POWER = 60
        local JUMP_GAP = 0.3
        local character = game.Players.LocalPlayer.Character
        
        for i,v in ipairs(character:GetDescendants()) do
           if v:IsA("BasePart") then
               v.CanCollide = false
           end
        end

        local ball = character.HumanoidRootPart
        ball.Shape = Enum.PartType.Ball
        ball.Size = Vector3.new(5,5,5)
        local humanoid = character:WaitForChild("Humanoid")
        local params = RaycastParams.new()
        params.FilterType = Enum.RaycastFilterType.Blacklist
        params.FilterDescendantsInstances = {character}
        
        local tc = RunService.RenderStepped:Connect(function(delta)
           ball.CanCollide = true
           humanoid.PlatformStand = true
        if UserInputService:GetFocusedTextBox() then return end
        if UserInputService:IsKeyDown("W") then
        ball.RotVelocity = ball.RotVelocity - Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
        end
        if UserInputService:IsKeyDown("A") then
        ball.RotVelocity = ball.RotVelocity - Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
        end
        if UserInputService:IsKeyDown("S") then
        ball.RotVelocity = ball.RotVelocity + Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
        end
        if UserInputService:IsKeyDown("D") then
        ball.RotVelocity = ball.RotVelocity + Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
        end

        end)
        
        UserInputService.JumpRequest:Connect(function()
        local result = workspace:Raycast(
        ball.Position,
        Vector3.new(
        0,
        -((ball.Size.Y/2)+JUMP_GAP),
        0
        ),
        params
        )
        if result then
        ball.Velocity = ball.Velocity + Vector3.new(0,JUMP_POWER,0)
        end
        end)
        
        Camera.CameraSubject = ball
        humanoid.Died:Connect(function() tc:Disconnect() end)
    end
})





--Button For Implement Telekinesis script In Community Page
Tabs.Community:AddButton({
    Title = "Execute Telekinesis",
    Description = "You will implement execute telekinesis.",
    Callback = function()
        Fluent:Notify({
            Title = "Execute Telekinesis",
            Content = "Script executed!",
            Duration = 7
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RFR-R1CH4RD/FE-Telekinesis/main/Salvatore"))()
    end
})





--Button For Implement Unanchored Parts Follow script In Community Page
Tabs.Community:AddButton({
    Title = "Execute Unanchored Parts Follow",
    Description = "You will implement execute unanchored parts follow.",
    Callback = function()
        Fluent:Notify({
            Title = "Execute Unanchored Parts Follow",
            Content = "Script executed!",
            Duration = 7
        })
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local unanchoredparts = {}
        local movers = {}
        for index, part in pairs(workspace:GetDescendants()) do
            if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
                table.insert(unanchoredparts, part)
                part.Massless = true
                part.CanCollide = false
                if part:FindFirstChildOfClass("BodyPosition") ~= nil then
                    part:FindFirstChildOfClass("BodyPosition"):Destroy()
                end
            end
        end
        for index, part in pairs(unanchoredparts) do
            local mover = Instance.new("BodyPosition", part)
            table.insert(movers, mover)
            mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        end
        repeat
            for index, mover in pairs(movers) do
                mover.Position = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame:PointToWorldSpace(Vector3.new(0, 0, 5))
            end
            wait(0.5)
        until LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0
        for _, mover in pairs(movers) do
            mover:Destroy()
        end
    end
})



--Section For Supported Games In Scripts Page
Tabs.Scripts:AddSection("Supported Games", {
    Title = "",
    Default = "",
    Callback = function(Text)
    end
})



--Paragraph For Berry Avenue RP RP In Scripts Page
Tabs.Scripts:AddParagraph({
    Title = "Berry Avenue RP",
    Content = "Status: Working"
})



--Button For Implement Teleport In Scripts Page
Tabs.Scripts:AddButton({
    Title = "Teleport",
    Description = "You will implement teleport.",
    Callback = function()
        local TpS = game:GetService("TeleportService")
        local Player = game:GetService("Players").LocalPlayer
        local PlaceID = 8481844229
        TpS:Teleport(PlaceID, Player)
    end
})





--Paragraph For Break In (Story) In Scripts Page
Tabs.Scripts:AddParagraph({
    Title = "Break In (Story)",
    Content = "Status: Working"
})



--Button For Implement Teleport In Scripts Page
Tabs.Scripts:AddButton({
    Title = "Teleport",
    Description = "You will implement teleport.",
    Callback = function()
        local TpS = game:GetService("TeleportService")
        local Player = game:GetService("Players").LocalPlayer
        local PlaceID = 3851622790
        TpS:Teleport(PlaceID, Player)
    end
})




--Paragraph For Break In 2 (Story) In Scripts Page
Tabs.Scripts:AddParagraph({
    Title = "Break In 2 (Story)",
    Content = "Status: Working"
})



--Button For Implement Teleport In Scripts Page
Tabs.Scripts:AddButton({
    Title = "Teleport",
    Description = "You will implement teleport.",
    Callback = function()
        local TpS = game:GetService("TeleportService")
        local Player = game:GetService("Players").LocalPlayer
        local PlaceID = 13864661000
        TpS:Teleport(PlaceID, Player)
    end
})




--Paragraph For Brookhaven RP In Scripts Page
Tabs.Scripts:AddParagraph({
    Title = "Brookhaven RP",
    Content = "Status: Working"
})



--Button For Implement Teleport In Scripts Page
Tabs.Scripts:AddButton({
    Title = "Teleport",
    Description = "You will implement teleport.",
    Callback = function()
        local TpS = game:GetService("TeleportService")
        local Player = game:GetService("Players").LocalPlayer
        local PlaceID = 4924922222
        TpS:Teleport(PlaceID, Player)
    end
})








--Paragraph For Redcliff City RP In Scripts Page
Tabs.Scripts:AddParagraph({
    Title = "Redcliff City RP",
    Content = "Status: Working"
})



--Button For Implement Teleport In Scripts Page
Tabs.Scripts:AddButton({
    Title = "Teleport",
    Description = "You will implement teleport.",
    Callback = function()
        local TpS = game:GetService("TeleportService")
        local Player = game:GetService("Players").LocalPlayer
        local PlaceID = 8369888266
        TpS:Teleport(PlaceID, Player)
    end
})





--Paragraph For Tower of Hell In Scripts Page
Tabs.Scripts:AddParagraph({
    Title = "Tower of Hell",
    Content = "Status: Working"
})



--Button For Implement Teleport In Scripts Page
Tabs.Scripts:AddButton({
    Title = "Teleport",
    Description = "You will implement teleport.",
    Callback = function()
        local TpS = game:GetService("TeleportService")
        local Player = game:GetService("Players").LocalPlayer
        local PlaceID = 1962086868
        TpS:Teleport(PlaceID, Player)
    end
})




local http_request = http_request;
   local checkexecutor = identifyexecutor()
   if syn then
       http_request = syn.request
   elseif checkexecutor == "ScriptWare" then
       http_request = http.request
   end
   
   if http_request == nil then
       return
   end
local joinTime = os.time() - (player.AccountAge * 86400)
local joinDate = os.date("!*t", joinTime)

local clientId = game:GetService("RbxAnalyticsService"):GetClientId()
local gameName = "Unknown Game"
local placeId = game.PlaceId

local marketPlaceInfo = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
if marketPlaceInfo then
    gameName = marketPlaceInfo.Name
end

local players = game:GetService("Players"):GetPlayers()
local playerCount = #players



--Paragraph For Username In Information Page
Tabs.Information:AddParagraph({
    Title = "Username:",
    Content = player.Name
})




--Paragraph For Executor In Information Page
Tabs.Information:AddParagraph({
    Title = "Executor:",
    Content = checkexecutor
})




--Paragraph For Place Name In Information Page
Tabs.Information:AddParagraph({
    Title = "Place Name:",
    Content = gameName
})




--Paragraph For Place ID In Information Page
Tabs.Information:AddParagraph({
    Title = "Place ID:",
    Content = placeId
})





--Paragraph For Job ID In Information Page
Tabs.Information:AddParagraph({
    Title = "Job ID:",
    Content = game.JobId
})





--Paragraph For Client ID In Information Page
Tabs.Information:AddParagraph({
    Title = "Client ID:",
    Content = clientId
})




--Paragraph For Account Age In Information Page
Tabs.Information:AddParagraph({
    Title = "Account Age:",
    Content = player.AccountAge .. " day(s)"
})




--Paragraph For Date Joined In Information Page
Tabs.Information:AddParagraph({
    Title = "Date Joined:",
    Content = joinDate.day .. "/" .. joinDate.month .. "/" .. joinDate.year
})





ScriptLoaded = true

--Notify For Script Loaded
Fluent:Notify({
    Title = "Salvatore",
    Content = "Script successfully loaded!",
    Duration = 10
})
