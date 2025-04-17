    repeat
        task.wait()
    until game:IsLoaded()
    local library = {}
    local ToggleUI = false
    library.currentTab = nil
    library.flags = {}
    
   function UiDestroy()
       
       for _, tween in pairs(activeTweens) do
           tween:Cancel()
       end
       
       if MainParticles then
           MainParticles.Enabled = false
       end
       
       dogent:Destroy()
   end
    local services =
        setmetatable(
        {},
        {__index = function(t, k)
                return game.GetService(game, k)
            end}
    )
    local mouse = services.Players.LocalPlayer:GetMouse()
    function Tween(obj, t, data)
        services.TweenService:Create(obj, TweenInfo.new(t[1], Enum.EasingStyle[t[2]], Enum.EasingDirection[t[3]]), data):Play(

        )
        return true
    end
    function Ripple(obj)
    spawn(
        function()
            if (obj.ClipsDescendants ~= true) then
                obj.ClipsDescendants = true
            end
            local Ripple = Instance.new("ImageLabel")
            Ripple.Name = "Ripple"
            Ripple.Parent = obj
            Ripple.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
            Ripple.BackgroundTransparency = 1
            Ripple.ZIndex = 8
            Ripple.Image = "rbxassetid://2708891598"
            Ripple.ImageTransparency = 0.6
            Ripple.ScaleType = Enum.ScaleType.Fit
            Ripple.ImageColor3 = Color3.fromRGB(255, 215, 0)  
            
            local RippleGlow = Instance.new("ImageLabel")
            RippleGlow.Name = "RippleGlow"
            RippleGlow.Parent = Ripple
            RippleGlow.BackgroundTransparency = 1
            RippleGlow.Size = UDim2.new(1, 20, 1, 20)
            RippleGlow.Position = UDim2.new(0, -10, 0, -10)
            RippleGlow.Image = "rbxassetid://5028857084"
            RippleGlow.ImageColor3 = Color3.fromRGB(255, 215, 0)
            RippleGlow.ImageTransparency = 0.8
            RippleGlow.ZIndex = 7
            
            Ripple.Position =
                UDim2.new(
                (mouse.X - Ripple.AbsolutePosition.X) / obj.AbsoluteSize.X,
                0,
                (mouse.Y - Ripple.AbsolutePosition.Y) / obj.AbsoluteSize.Y,
                0
            )
            
            Tween(
                Ripple,
                {0.4, "Quint", "Out"},
                {Position = UDim2.new(-5.5, 0, -5.5, 0), Size = UDim2.new(12, 0, 12, 0)}
            )
            Tween(
                RippleGlow,
                {0.4, "Quint", "Out"},
                {Position = UDim2.new(-5.5, -10, -5.5, -10), Size = UDim2.new(12, 20, 12, 20)}
            )
            wait(0.2)
            Tween(Ripple, {0.3, "Linear", "InOut"}, {ImageTransparency = 1})
            Tween(RippleGlow, {0.3, "Linear", "InOut"}, {ImageTransparency = 1})
            wait(0.3)
            Ripple:Destroy()
        end
    )
end
    local toggled = false
    local switchingTabs = false
    
    function switchTab(new)
        if switchingTabs then
            return
        end
        local old = library.currentTab
        if (old == nil) then
            new[2].Visible = true
            library.currentTab = new
            services.TweenService:Create(new[1], TweenInfo.new(0.2, Enum.EasingStyle.Quint), {
    ImageTransparency = 0,
    Size = UDim2.new(0, 30, 0, 30)
}):Play()
services.TweenService:Create(new[1].TabText, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {
    TextTransparency = 0,
    TextColor3 = Color3.fromRGB(0, 255, 255),
    TextStrokeTransparency = 0.7,
    TextStrokeColor3 = Color3.fromRGB(0, 150, 255)
}):Play()

local selectionGlow = Instance.new("Frame")
selectionGlow.Name = "SelectionGlow"
selectionGlow.Parent = new[1]
selectionGlow.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
selectionGlow.BackgroundTransparency = 0.8
selectionGlow.Size = UDim2.new(1, 10, 1, 10)
selectionGlow.Position = UDim2.new(0, -5, 0, -5)
selectionGlow.ZIndex = -1
services.TweenService:Create(selectionGlow, TweenInfo.new(0.3), {
    BackgroundTransparency = 0.5,
    Size = UDim2.new(1, 0, 1, 0),
    Position = UDim2.new(0, 0, 0, 0)
}):Play()
            return
        end
        
        
        if (old[1] == new[1]) then
            return
        end
        switchingTabs = true
        library.currentTab = new
        services.TweenService:Create(old[1], TweenInfo.new(0.1), {ImageTransparency = 0.2}):Play()
        services.TweenService:Create(new[1], TweenInfo.new(0.1), {ImageTransparency = 0}):Play()
        services.TweenService:Create(old[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0.2}):Play()
        services.TweenService:Create(new[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0}):Play()
        old[2].Visible = false
        new[2].Visible = true
        task.wait(0.1)
        switchingTabs = false
    end
    function drag(frame, hold)
        if not hold then
            hold = frame
        end
        local dragging
        local dragInput
        local dragStart
        local startPos
        local function update(input)
            local delta = input.Position - dragStart
            frame.Position =
                UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
        hold.InputBegan:Connect(
            function(input)
                if (input.UserInputType == Enum.UserInputType.MouseButton1) then
                    dragging = true
                    dragStart = input.Position
                    startPos = frame.Position
                    input.Changed:Connect(
                        function()
                            if (input.UserInputState == Enum.UserInputState.End) then
                                dragging = false
                            end
                        end
                    )
                end
            end
        )
        frame.InputChanged:Connect(
            function(input)
                if (input.UserInputType == Enum.UserInputType.MouseMovement) then
                    dragInput = input
                end
            end
        )
        services.UserInputService.InputChanged:Connect(
            function(input)
                if ((input == dragInput) and dragging) then
                    update(input)
                end
            end
        )
    end
    library.new = function(library, name, theme)
        for _, v in next, services.CoreGui:GetChildren() do
            if (v.Name == "frosty") then
                v:Destroy()
            end
        end
        if (theme == "dark") then
            MainColor = Color3.fromRGB(25, 25, 25)
            Background = Color3.fromRGB(25, 25, 25)
            zyColor = Color3.fromRGB(25, 25, 25)
            beijingColor = Color3.fromRGB(25, 25, 25)
        else
            MainColor = Color3.fromRGB(25, 25, 25)
            Background = Color3.fromRGB(25, 25, 25)
            zyColor = Color3.fromRGB(30, 30, 30)
            beijingColor = Color3.fromRGB(255, 215, 0)
        end
        local dogent = Instance.new("ScreenGui")
        local Main = Instance.new("Frame")
        local TabMain = Instance.new("Frame")
        local MainC = Instance.new("UICorner")
        local SB = Instance.new("Frame")
        local SBC = Instance.new("UICorner")
        local Side = Instance.new("Frame")
        local SideG = Instance.new("UIGradient")
        local TabBtns = Instance.new("ScrollingFrame")
        local TabBtnsL = Instance.new("UIListLayout")
        local ScriptTitle = Instance.new("TextLabel")
        local SBG = Instance.new("UIGradient")
        local Open = Instance.new("TextButton")
        local UIG = Instance.new("UIGradient")
        local DropShadowHolder = Instance.new("Frame")
        local DropShadow = Instance.new("ImageLabel")
        local UICornerMain = Instance.new("UICorner")
        local UIGradient = Instance.new("UIGradient")
        local UIGradientTitle = Instance.new("UIGradient")
        if (syn and syn.protect_gui) then
            syn.protect_gui(dogent)
        end
        dogent.Name = "frosty"
        dogent.Parent = services.CoreGui
        function UiDestroy()
            dogent:Destroy()
        end
        
        
        
        
        
        
        
        function ToggleUILib()
            if not ToggleUI then
                dogent.Enabled = false
                ToggleUI = true
            else
                ToggleUI = false
                dogent.Enabled = true
            end
        end
Main.Name = "霖溺全息主界面"
Main.Parent = dogent
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(10, 10, 30)
Main.BackgroundTransparency = 0.7  
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 572, 0, 353)  
Main.ZIndex = 1
Main.Active = true
Main.Draggable = true

local LinNiBackground = Instance.new("ImageLabel")
LinNiBackground.Name = "CyberBackground"
LinNiBackground.Parent = Main
LinNiBackground.BackgroundTransparency = 1
LinNiBackground.Size = UDim2.new(1, 0, 1, 0)
LinNiBackground.ZIndex = 0
LinNiBackground.Image = "rbxassetid://17120415981"  
LinNiBackground.ImageTransparency = 0.85
LinNiBackground.ImageColor3 = Color3.fromRGB(0, 255, 255)
LinNiBackground.ScaleType = Enum.ScaleType.Tile
LinNiBackground.TileSize = UDim2.new(0, 200, 0, 200)

local HologramEffect = Instance.new("Frame")
HologramEffect.Name = "HologramEffect"
HologramEffect.Parent = LinNiBackground
HologramEffect.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
HologramEffect.BackgroundTransparency = 0.9
HologramEffect.Size = UDim2.new(1, 0, 1, 0)
HologramEffect.ZIndex = -1

spawn(function()
    while HologramEffect and HologramEffect.Parent do
        for i = 0, 1, 0.01 do
            HologramEffect.BackgroundTransparency = 0.85 + math.sin(i*math.pi)*0.1
            HologramEffect.BackgroundColor3 = Color3.fromHSV(i, 0.8, 1)
            wait(0.05)
        end
    end
end)

local TextGlow = Instance.new("ImageLabel")
TextGlow.Name = "文字光效"
TextGlow.Parent = LinNiBackground
TextGlow.BackgroundTransparency = 1
TextGlow.Size = UDim2.new(1, 40, 1, 40)
TextGlow.Position = UDim2.new(0, -20, 0, -20)
TextGlow.Image = "rbxassetid://4896581736"  
TextGlow.ImageColor3 = Color3.fromRGB(0, 150, 255)
TextGlow.ImageTransparency = 0.8
TextGlow.ZIndex = -1

local ScanLines = Instance.new("Frame")
ScanLines.Name = "扫描线"
ScanLines.Parent = LinNiBackground
ScanLines.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ScanLines.BackgroundTransparency = 0.9
ScanLines.BorderSizePixel = 0
ScanLines.Size = UDim2.new(1, 0, 0, 1)
ScanLines.ZIndex = 1

local NeonBorder = Instance.new("ImageLabel")
NeonBorder.Name = "NeonBorder"
NeonBorder.Parent = Main
NeonBorder.Image = "rbxassetid://13099872066"  
NeonBorder.ScaleType = Enum.ScaleType.Slice
NeonBorder.SliceCenter = Rect.new(100, 100, 100, 100)
NeonBorder.Size = UDim2.new(1, 20, 1, 20)
NeonBorder.Position = UDim2.new(0, -10, 0, -10)
NeonBorder.BackgroundTransparency = 1
NeonBorder.ZIndex = 2

spawn(function()
    while NeonBorder and NeonBorder.Parent do
        for i = 0, 1, 0.01 do
            NeonBorder.ImageColor3 = Color3.fromHSV(i, 1, 1)
            NeonBorder.ImageTransparency = 0.3 + math.sin(i*math.pi*2)*0.1
            wait(0.05)
        end
    end
end)

local HanziParticles = Instance.new("ParticleEmitter")
HanziParticles.Name = "汉字粒子"
HanziParticles.Parent = LinNiBackground
HanziParticles.LightEmission = 0.9
HanziParticles.Texture = "rbxassetid://242719221"  
HanziParticles.Color = ColorSequence.new(Color3.fromRGB(0, 180, 255))
HanziParticles.Size = NumberSequence.new(0.3)
HanziParticles.Lifetime = NumberRange.new(1.5)
HanziParticles.Rate = 15
HanziParticles.Speed = NumberRange.new(2)
HanziParticles.VelocitySpread = 180
HanziParticles.ZOffset = 1
HanziParticles.EmissionDirection = Enum.NormalId.Front

local IonStorm = Instance.new("ParticleEmitter")
IonStorm.Name = "IonStorm"
IonStorm.Parent = Main
IonStorm.LightEmission = 1
IonStorm.Texture = "rbxassetid://242719221"
IonStorm.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(150, 0, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 200, 255))
})
IonStorm.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.2),
    NumberSequenceKeypoint.new(0.5, 0.4),
    NumberSequenceKeypoint.new(1, 0)
})
IonStorm.Lifetime = NumberRange.new(1.5, 3)
IonStorm.Rate = 50
IonStorm.Speed = NumberRange.new(10, 30)
IonStorm.VelocitySpread = 360
IonStorm.Rotation = NumberRange.new(0, 360)
IonStorm.RotSpeed = NumberRange.new(-30, 30)

local QuantumHologram = Instance.new("ImageLabel")
QuantumHologram.Name = "QuantumHologram"
QuantumHologram.Parent = Main
QuantumHologram.BackgroundTransparency = 1
QuantumHologram.Size = UDim2.new(1, 0, 1, 0)
QuantumHologram.ZIndex = 5
QuantumHologram.Image = "rbxassetid://13099872066" 
QuantumHologram.ImageTransparency = 0.7
QuantumHologram.ImageColor3 = Color3.fromRGB(0, 255, 255)

spawn(function()
    local waveSpeed = 0.5
    while QuantumHologram and QuantumHologram.Parent do
        for i = 0, 1, 0.01 do
            QuantumHologram.UIScale.Scale = 1 + math.sin(i*math.pi*2)*0.02
            QuantumHologram.ImageTransparency = 0.7 + math.sin(i*math.pi)*0.2
            QuantumHologram.Rotation = math.sin(i*math.pi*0.5)*2
            wait(waveSpeed/100)
        end
    end
end)

Main.MouseEnter:Connect(function()
    services.TweenService:Create(LinNiBackground, TweenInfo.new(0.5), {
        ImageTransparency = 0.7,
        Size = UDim2.new(1.05, 0, 1.05, 0)
    }):Play()
    services.TweenService:Create(TextGlow, TweenInfo.new(0.5), {
        ImageTransparency = 0.6
    }):Play()
end)

Main.MouseLeave:Connect(function()
    services.TweenService:Create(LinNiBackground, TweenInfo.new(0.5), {
        ImageTransparency = 0.9,
        Size = UDim2.new(1, 0, 1, 0)
    }):Play()
    services.TweenService:Create(TextGlow, TweenInfo.new(0.5), {
        ImageTransparency = 0.8
    }):Play()
end)
        services.UserInputService.InputEnded:Connect(
            function(input)
                if (input.KeyCode == Enum.KeyCode.LeftControl) then
                    if (Main.Visible == true) then
                        Main.Visible = false
                    else
                        Main.Visible = true
                    end
                end
            end
        )
        drag(Main)
        UICornerMain.Parent = Main
        UICornerMain.CornerRadius = UDim.new(0, 3)
   
        
             
                  
                       
                            
                                 
                                      
                                           
                                                
                                                     
                                                          
                                                               
                                                                    
                                                                              
local function createParticleSystem(parent)
    local ParticleEmitter = Instance.new("ParticleEmitter")
    ParticleEmitter.Parent = parent
    ParticleEmitter.LightEmission = 0.8
    ParticleEmitter.Texture = "rbxassetid://242719221"
    ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(255, 215, 0))
    ParticleEmitter.Size = NumberSequence.new(0.2)
    ParticleEmitter.Lifetime = NumberRange.new(1)
    ParticleEmitter.Rate = 5
    ParticleEmitter.Speed = NumberRange.new(2)
    ParticleEmitter.VelocitySpread = 90
    ParticleEmitter.ZOffset = 2
    return ParticleEmitter
end

local MainParticles = createParticleSystem(Main)
MainParticles.EmissionDirection = Enum.NormalId.Top        
        
local LightEffect = Instance.new("Frame")
LightEffect.Name = "DynamicLight"
LightEffect.Parent = Main
LightEffect.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
LightEffect.BackgroundTransparency = 0.8
LightEffect.BorderSizePixel = 0
LightEffect.Size = UDim2.new(1, 0, 0, 4)
LightEffect.Position = UDim2.new(0, 0, 0, -4)
LightEffect.ZIndex = 2

spawn(function()
    while LightEffect and LightEffect.Parent do
        for i = 0, 1, 0.02 do
            LightEffect.BackgroundTransparency = 0.7 + (i * 0.3)
            LightEffect.Size = UDim2.new(1, 0, 0, 4 + (i * 6))
            wait()
        end
        for i = 1, 0, -0.02 do
            LightEffect.BackgroundTransparency = 0.7 + (i * 0.3)
            LightEffect.Size = UDim2.new(1, 0, 0, 4 + (i * 6))
            wait()
        end
    end
end)
        
        
        
        







    
        DropShadowHolder.Name = "DropShadowHolder"
        DropShadowHolder.Parent = Main
        DropShadowHolder.BackgroundTransparency = 1
        DropShadowHolder.BorderSizePixel = 0
        DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
        DropShadowHolder.BorderColor3 = Color3.fromRGB(255, 215, 0)
        DropShadowHolder.ZIndex = 0
        DropShadow.Name = "DropShadow"
        DropShadow.Parent = DropShadowHolder
        DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        DropShadow.BackgroundTransparency = 1
        DropShadow.BorderSizePixel = 0
        DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
        DropShadow.Size = UDim2.new(1, 43, 1, 43)
        DropShadow.ZIndex = 0
        DropShadow.Image = "rbxassetid://6015897843"
        DropShadow.ImageColor3 = Color3.fromRGB(255, 215, 0)
        DropShadow.ImageTransparency = 0.5
        DropShadow.ScaleType = Enum.ScaleType.Slice
        DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
        UIGradient.Color =
            ColorSequence.new(
            {
                ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
                ColorSequenceKeypoint.new(0.1, Color3.fromRGB(255, 127, 0)),
                ColorSequenceKeypoint.new(0.2, Color3.fromRGB(255, 255, 0)),
                ColorSequenceKeypoint.new(0.3, Color3.fromRGB(0, 255, 0)),
                ColorSequenceKeypoint.new(0.4, Color3.fromRGB(0, 255, 255)),
                ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 0, 255)),
                ColorSequenceKeypoint.new(0.6, Color3.fromRGB(139, 0, 255)),
                ColorSequenceKeypoint.new(0.7, Color3.fromRGB(255, 0, 0)),
                ColorSequenceKeypoint.new(0.8, Color3.fromRGB(255, 127, 0)),
                ColorSequenceKeypoint.new(0.9, Color3.fromRGB(255, 255, 0)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 0))
            }
        )
        UIGradient.Parent = DropShadow
        local TweenService = game:GetService("TweenService")
        local tweeninfo = TweenInfo.new(7, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
        local tween = TweenService:Create(UIGradient, tweeninfo, {Rotation = 360})
        tween:Play()
        function toggleui()
            toggled = not toggled
            spawn(
                function()
                    if toggled then
                        wait(0.3)
                    end
                end
            )
            Tween(Main, {0.3, "Sine", "InOut"}, {Size = UDim2.new(0, 609, 0, (toggled and 505) or 0)})
        end
        TabMain.Name = "TabMain"
        TabMain.Parent = Main
        TabMain.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
        TabMain.BackgroundTransparency = 1
        TabMain.Position = UDim2.new(0.217000037, 0, 0, 3)
        TabMain.Size = UDim2.new(0, 448, 0, 353)
        
        MainC.CornerRadius = UDim.new(0, 5.5)
        MainC.Name = "MainC"
        MainC.Parent = Frame
        SB.Name = "SB"
        SB.Parent = Main
        SB.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
        SB.BorderColor3 = MainColor
        SB.Size = UDim2.new(0, 8, 0, 353)
        SBC.CornerRadius = UDim.new(0, 6)
        SBC.Name = "SBC"
        SBC.Parent = SB
        Side.Name = "Side"
        Side.Parent = SB
        Side.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
        Side.BorderColor3 = Color3.fromRGB(255, 215, 0)
        Side.BorderSizePixel = 0
        Side.ClipsDescendants = true
        Side.Position = UDim2.new(1, 0, 0, 0)
        Side.Size = UDim2.new(0, 110, 0, 353)
        SideG.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, zyColor), ColorSequenceKeypoint.new(1, zyColor)})
        SideG.Rotation = 90
        SideG.Name = "SideG"
        SideG.Parent = Side
        TabBtns.Name = "TabBtns"
        TabBtns.Parent = Side
        TabBtns.Active = true
        TabBtns.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
        TabBtns.BackgroundTransparency = 1
        TabBtns.BorderSizePixel = 0
        TabBtns.Position = UDim2.new(0, 0, 0.0973535776, 0)
        TabBtns.Size = UDim2.new(0, 110, 0, 318)
        TabBtns.CanvasSize = UDim2.new(0, 0, 1, 0)
        TabBtns.ScrollBarThickness = 0
        TabBtnsL.Name = "TabBtnsL"
        TabBtnsL.Parent = TabBtns
        TabBtnsL.SortOrder = Enum.SortOrder.LayoutOrder
        TabBtnsL.Padding = UDim.new(0, 12)
        ScriptTitle.Name = "ScriptTitle"
        ScriptTitle.Parent = Side
        ScriptTitle.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
        ScriptTitle.BackgroundTransparency = 1
        ScriptTitle.Position = UDim2.new(0, 0, 0.00953488424, 0)
        ScriptTitle.Size = UDim2.new(0, 102, 0, 20)
        ScriptTitle.Font = Enum.Font.GothamSemibold
        ScriptTitle.Text = name
        ScriptTitle.TextColor3 = Color3.fromRGB(255, 215, 0)
        ScriptTitle.TextSize = 14
        ScriptTitle.TextScaled = true
        ScriptTitle.TextXAlignment = Enum.TextXAlignment.Left
        UIGradientTitle.Parent = ScriptTitle
        local function NPLHKB_fake_script()
            local script = Instance.new("LocalScript", ScriptTitle)
            local button = script.Parent
            local gradient = button.UIGradient
            local ts = game:GetService("TweenService")
            local ti = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
            local offset = {Offset = Vector2.new(1, 0)}
            local create = ts:Create(gradient, ti, offset)
            local startingPos = Vector2.new(-1, 0)
            local list = {}
            local s, kpt = ColorSequence.new, ColorSequenceKeypoint.new
            local counter = 0
            local status = "down"
            gradient.Offset = startingPos
            local function rainbowColors()
                local sat, val = 255, 255
                for i = 1, 10 do
                    local hue = i * 17
                    table.insert(list, Color3.fromHSV(hue / 255, sat / 255, val / 255))
                end
            end
            rainbowColors()
            gradient.Color = s({kpt(0, list[#list]), kpt(0.5, list[#list - 1]), kpt(1, list[#list - 2])})
            counter = #list
            local function animate()
                create:Play()
                create.Completed:Wait()
                gradient.Offset = startingPos
                gradient.Rotation = 180
                if ((counter == (#list - 1)) and (status == "down")) then
                    gradient.Color =
                        s({kpt(0, gradient.Color.Keypoints[1].Value), kpt(0.5, list[#list]), kpt(1, list[1])})
                    counter = 1
                    status = "up"
                elseif ((counter == #list) and (status == "down")) then
                    gradient.Color = s({kpt(0, gradient.Color.Keypoints[1].Value), kpt(0.5, list[1]), kpt(1, list[2])})
                    counter = 2
                    status = "up"
                elseif ((counter <= (#list - 2)) and (status == "down")) then
                    gradient.Color =
                        s(
                        {
                            kpt(0, gradient.Color.Keypoints[1].Value),
                            kpt(0.5, list[counter + 1]),
                            kpt(1, list[counter + 2])
                        }
                    )
                    counter = counter + 2
                    status = "up"
                end
                create:Play()
                create.Completed:Wait()
                gradient.Offset = startingPos
                gradient.Rotation = 0
                if ((counter == (#list - 1)) and (status == "up")) then
                    gradient.Color =
                        s({kpt(0, list[1]), kpt(0.5, list[#list]), kpt(1, gradient.Color.Keypoints[3].Value)})
                    counter = 1
                    status = "down"
                elseif ((counter == #list) and (status == "up")) then
                    gradient.Color = s({kpt(0, list[2]), kpt(0.5, list[1]), kpt(1, gradient.Color.Keypoints[3].Value)})
                    counter = 2
                    status = "down"
                elseif ((counter <= (#list - 2)) and (status == "up")) then
                    gradient.Color =
                        s(
                        {
                            kpt(0, list[counter + 2]),
                            kpt(0.5, list[counter + 1]),
                            kpt(1, gradient.Color.Keypoints[3].Value)
                        }
                    )
                    counter = counter + 2
                    status = "down"
                end
                animate()
            end
            animate()
        end
        coroutine.wrap(NPLHKB_fake_script)()
        SBG.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, zyColor), ColorSequenceKeypoint.new(1, zyColor)})
        SBG.Rotation = 90
        SBG.Name = "SBG"
        SBG.Parent = SB
        TabBtnsL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
            function()
                TabBtns.CanvasSize = UDim2.new(0, 0, 0, TabBtnsL.AbsoluteContentSize.Y + 18)
            end
        )
        Open.Name = "Open"
        Open.Parent = dogent
        Open.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        Open.Position = UDim2.new(0.00829315186, 0, 0.31107837, 0)
        Open.Size = UDim2.new(0, 61, 0, 32)
        Open.Font = Enum.Font.SourceSans
        Open.Text = "隐藏/打开"
        Open.TextColor3 = Color3.fromRGB(255, 215, 0)
        Open.TextSize = 14
        Open.Active = true
        Open.Draggable = true
        Open.MouseButton1Click:Connect(
            function()
                Main.Visible = not Main.Visible
            end
        )
        UIG.Parent = Open
        local window = {}
        
function window.Tab(window, name, icon)
            local Tab = Instance.new("ScrollingFrame")
            local TabIco = Instance.new("ImageLabel")
            local TabText = Instance.new("TextLabel")
            local TabBtn = Instance.new("TextButton")
            local TabL = Instance.new("UIListLayout")
            Tab.Name = "Tab"
            Tab.Parent = TabMain
            Tab.Active = true
            Tab.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
            Tab.BackgroundTransparency = 1
            Tab.Size = UDim2.new(1, 0, 1, 0)
            Tab.ScrollBarThickness = 2
            Tab.Visible = false
            TabIco.Name = "TabIco"
            TabIco.Parent = TabBtns
            TabIco.BackgroundTransparency = 1
            TabIco.BorderSizePixel = 0
            TabIco.Size = UDim2.new(0, 24, 0, 24)
            TabIco.Image = ("rbxassetid://103514147451766"):format(icon or 4370341699)
            TabIco.ImageTransparency = 0.2
            TabText.Name = "TabText"
            TabText.Parent = TabIco
            TabText.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
            TabText.BackgroundTransparency = 1
            TabText.Position = UDim2.new(1.41666663, 0, 0, 0)
            TabText.Size = UDim2.new(0, 76, 0, 24)
            TabText.Font = Enum.Font.GothamSemibold
            TabText.Text = name
            TabText.TextColor3 = Color3.fromRGB(255, 215, 0)
            TabText.TextSize = 14
            TabText.TextXAlignment = Enum.TextXAlignment.Left
            TabText.TextTransparency = 0.2
            TabBtn.Name = "TabBtn"
            TabBtn.Parent = TabIco
            TabBtn.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
            TabBtn.BackgroundTransparency = 1
            TabBtn.BorderSizePixel = 0
            TabBtn.Size = UDim2.new(0, 110, 0, 24)
            TabBtn.AutoButtonColor = false
            TabBtn.Font = Enum.Font.SourceSans
            TabBtn.Text = ""
            TabBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
            TabBtn.TextSize = 14
            TabL.Name = "TabL"
            TabL.Parent = Tab
            TabL.SortOrder = Enum.SortOrder.LayoutOrder
            TabL.Padding = UDim.new(0, 4)
            
            TabBtn.MouseButton1Click:Connect(
        function()
            spawn(function()
                Ripple(TabBtn)
                            
                        end
                    )
                    
                    switchTab({TabIco, Tab})
                end
            )
            
            if (library.currentTab == nil) then
                switchTab({TabIco, Tab})
            end
            TabL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                function()
                    Tab.CanvasSize = UDim2.new(0, 0, 0, TabL.AbsoluteContentSize.Y + 8)
                end
            )
            local tab = {}
            tab.section = function(tab, name, TabVal)
                local Section = Instance.new("Frame")
                local SectionC = Instance.new("UICorner")
                local SectionText = Instance.new("TextLabel")
                local SectionOpen = Instance.new("ImageLabel")
                local SectionOpened = Instance.new("ImageLabel")
                local SectionToggle = Instance.new("ImageButton")
                local Objs = Instance.new("Frame")
                local ObjsL = Instance.new("UIListLayout")
                Section.Name = "Section"
                Section.Parent = Tab
                Section.BackgroundColor3 = zyColor
                Section.BackgroundTransparency = 1
                Section.BorderSizePixel = 0
                Section.ClipsDescendants = true
                Section.Size = UDim2.new(0.981000006, 0, 0, 36)
                SectionC.CornerRadius = UDim.new(0, 6)
                SectionC.Name = "SectionC"
                SectionC.Parent = Section
                SectionText.Name = "SectionText"
                SectionText.Parent = Section
                SectionText.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
                SectionText.BackgroundTransparency = 1
                SectionText.Position = UDim2.new(0.0887396261, 0, 0, 0)
                SectionText.Size = UDim2.new(0, 401, 0, 36)
                SectionText.Font = Enum.Font.GothamSemibold
                SectionText.Text = name
                SectionText.TextColor3 = Color3.fromRGB(255, 215, 0)
                SectionText.TextSize = 16
                SectionText.TextXAlignment = Enum.TextXAlignment.Left
                SectionOpen.Name = "SectionOpen"
                SectionOpen.Parent = SectionText
                SectionOpen.BackgroundTransparency = 1
                SectionOpen.BorderSizePixel = 0
                SectionOpen.Position = UDim2.new(0, -33, 0, 5)
                SectionOpen.Size = UDim2.new(0, 26, 0, 26)
                SectionOpen.Image = "http://www.roblox.com/asset/?id=6031302934"
                SectionOpened.Name = "SectionOpened"
                SectionOpened.Parent = SectionOpen
                SectionOpened.BackgroundTransparency = 1
                SectionOpened.BorderSizePixel = 0
                SectionOpened.Size = UDim2.new(0, 26, 0, 26)
                SectionOpened.Image = "http://www.roblox.com/asset/?id=6031302932"
                SectionOpened.ImageTransparency = 1
                SectionToggle.Name = "SectionToggle"
                SectionToggle.Parent = SectionOpen
                SectionToggle.BackgroundTransparency = 1
                SectionToggle.BorderSizePixel = 0
                SectionToggle.Size = UDim2.new(0, 26, 0, 26)
                Objs.Name = "Objs"
                Objs.Parent = Section
                Objs.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
                Objs.BackgroundTransparency = 1
                Objs.BorderSizePixel = 0
                Objs.Position = UDim2.new(0, 6, 0, 36)
                Objs.Size = UDim2.new(0.986347735, 0, 0, 0)
                ObjsL.Name = "ObjsL"
                ObjsL.Parent = Objs
                ObjsL.SortOrder = Enum.SortOrder.LayoutOrder
                ObjsL.Padding = UDim.new(0, 8)
                local open = TabVal
                if (TabVal ~= false) then
                    Section.Size = UDim2.new(0.981000006, 0, 0, (open and (36 + ObjsL.AbsoluteContentSize.Y + 8)) or 36)
                    SectionOpened.ImageTransparency = (open and 0) or 1
                    SectionOpen.ImageTransparency = (open and 1) or 0
                end
                SectionToggle.MouseButton1Click:Connect(
                    function()
                        open = not open
                        Section.Size =
                            UDim2.new(0.981000006, 0, 0, (open and (36 + ObjsL.AbsoluteContentSize.Y + 8)) or 36)
                        SectionOpened.ImageTransparency = (open and 0) or 1
                        SectionOpen.ImageTransparency = (open and 1) or 0
                    end
                )
                ObjsL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                    function()
                        if not open then
                            return
                        end
                        Section.Size = UDim2.new(0.981000006, 0, 0, 36 + ObjsL.AbsoluteContentSize.Y + 8)
                    end
                )
                local section = {}
                section.Button = function(section, text, callback)
                    local callback = callback or function()
                        end
                    local BtnModule = Instance.new("Frame")
                    local Btn = Instance.new("TextButton")
                    local BtnC = Instance.new("UICorner")
                    BtnModule.Name = "BtnModule"
                    BtnModule.Parent = Objs
                    BtnModule.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
                    BtnModule.BackgroundTransparency = 1
                    BtnModule.BorderSizePixel = 0
                    BtnModule.Position = UDim2.new(0, 0, 0, 0)
                    BtnModule.Size = UDim2.new(0, 428, 0, 38)
                   Btn.Name = "CyberButton"
Btn.Parent = BtnModule
Btn.BackgroundColor3 = Color3.fromRGB(10, 20, 30)
Btn.BorderColor3 = Color3.fromRGB(0, 200, 255)
Btn.BorderSizePixel = 1
Btn.Size = UDim2.new(0, 428, 0, 42)
Btn.AutoButtonColor = false
Btn.Font = Enum.Font.GothamSemibold
Btn.Text = "   " .. text
Btn.TextColor3 = Color3.fromRGB(200, 240, 255)
Btn.TextSize = 16
Btn.TextXAlignment = Enum.TextXAlignment.Left
Btn.TextStrokeTransparency = 0.8
Btn.TextStrokeColor3 = Color3.fromRGB(0, 150, 255)

local buttonGlow = Instance.new("Frame")
buttonGlow.Name = "ButtonGlow"
buttonGlow.Parent = Btn
buttonGlow.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
buttonGlow.BackgroundTransparency = 0.9
buttonGlow.Size = UDim2.new(1, 10, 0, 2)
buttonGlow.Position = UDim2.new(0, -5, 1, -2)
buttonGlow.ZIndex = -1
buttonGlow.BorderSizePixel = 0

Btn.MouseEnter:Connect(function()
    services.TweenService:Create(Btn, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.fromRGB(20, 40, 60),
        TextColor3 = Color3.fromRGB(0, 255, 255)
    }):Play()
    services.TweenService:Create(buttonGlow, TweenInfo.new(0.2), {
        BackgroundTransparency = 0.7,
        Size = UDim2.new(1, 20, 0, 4)
    }):Play()
end)

Btn.MouseLeave:Connect(function()
    services.TweenService:Create(Btn, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.fromRGB(10, 20, 30),
        TextColor3 = Color3.fromRGB(200, 240, 255)
    }):Play()
    services.TweenService:Create(buttonGlow, TweenInfo.new(0.2), {
        BackgroundTransparency = 0.9,
        Size = UDim2.new(1, 10, 0, 2)
    }):Play()
end)
                    BtnC.CornerRadius = UDim.new(0, 6)
                    BtnC.Name = "BtnC"
                    BtnC.Parent = Btn
                    Btn.MouseEnter:Connect(function()
    services.TweenService:Create(Btn, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.fromRGB(225, 190, 80),
        TextColor3 = Color3.fromRGB(255, 215, 0)
    }):Play()
end)

Btn.MouseLeave:Connect(function()
    services.TweenService:Create(Btn, TweenInfo.new(0.2), {
        BackgroundColor3 = zyColor,
        TextColor3 = Color3.fromRGB(255, 240, 150)
    }):Play()
end)
                    Btn.MouseButton1Click:Connect(
                        function()
                            spawn(
                                function()
                                    Ripple(Btn)
                                end
                            )
                            spawn(callback)
                        end
                    )
                end
                section.Label = function(self, text)
                    local LabelModule = Instance.new("Frame")
                    local TextLabel = Instance.new("TextLabel")
                    local LabelC = Instance.new("UICorner")
                    LabelModule.Name = "LabelModule"
                    LabelModule.Parent = Objs
                    LabelModule.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
                    LabelModule.BackgroundTransparency = 1
                    LabelModule.BorderSizePixel = 0
                    LabelModule.Position = UDim2.new(0, 0, NAN, 0)
                    LabelModule.Size = UDim2.new(0, 428, 0, 19)
                    TextLabel.Parent = LabelModule
                    TextLabel.BackgroundColor3 = zyColor
                    TextLabel.Size = UDim2.new(0, 428, 0, 22)
                    TextLabel.Font = Enum.Font.GothamSemibold
                    TextLabel.Text = text
                    TextLabel.TextColor3 = Color3.fromRGB(255, 215, 0)
                    TextLabel.TextSize = 14
                    LabelC.CornerRadius = UDim.new(0, 6)
                    LabelC.Name = "LabelC"
                    LabelC.Parent = TextLabel
                    return TextLabel
                end
                section.Toggle = function(section, text, flag, enabled, callback)
                    local callback = callback or function()
                        end
                    local enabled = enabled or false
                    assert(text, "No text provided")
                    assert(flag, "No flag provided")
                    library.flags[flag] = enabled
                    local ToggleModule = Instance.new("Frame")
                    local ToggleBtn = Instance.new("TextButton")
                    local ToggleBtnC = Instance.new("UICorner")
                    local ToggleDisable = Instance.new("Frame")
                    local ToggleSwitch = Instance.new("Frame")
                    local ToggleSwitchC = Instance.new("UICorner")
                    local ToggleDisableC = Instance.new("UICorner")
                    ToggleModule.Name = "ToggleModule"
                    ToggleModule.Parent = Objs
                    ToggleModule.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
                    ToggleModule.BackgroundTransparency = 1
                    ToggleModule.BorderSizePixel = 0
                    ToggleModule.Position = UDim2.new(0, 0, 0, 0)
                    ToggleModule.Size = UDim2.new(0, 428, 0, 38)
                    ToggleBtn.Name = "ToggleBtn"
                    ToggleBtn.Parent = ToggleModule
                    ToggleBtn.BackgroundColor3 = zyColor
                    ToggleBtn.BorderSizePixel = 0
                    ToggleBtn.Size = UDim2.new(0, 428, 0, 38)
                    ToggleBtn.AutoButtonColor = false
                    ToggleBtn.Font = Enum.Font.GothamSemibold
                    ToggleBtn.Text = "   " .. text
                    ToggleBtn.TextColor3 = Color3.fromRGB(255, 215, 0)
                    ToggleBtn.TextSize = 16
                    ToggleBtn.TextXAlignment = Enum.TextXAlignment.Left
                    ToggleBtnC.CornerRadius = UDim.new(0, 6)
                    ToggleBtnC.Name = "ToggleBtnC"
                    ToggleBtnC.Parent = ToggleBtn
                    ToggleDisable.Name = "ToggleDisable"
                    ToggleDisable.Parent = ToggleBtn
                    ToggleDisable.BackgroundColor3 = Background
                    ToggleDisable.BorderSizePixel = 0
                    ToggleDisable.Position = UDim2.new(0.901869178, 0, 0.208881587, 0)
                    ToggleDisable.Size = UDim2.new(0, 36, 0, 22)
                    ToggleSwitch.Name = "ToggleSwitch"
                    ToggleSwitch.Parent = ToggleDisable
                    ToggleSwitch.BackgroundColor3 = beijingColor
                    ToggleSwitch.Size = UDim2.new(0, 24, 0, 22)
                    ToggleSwitchC.CornerRadius = UDim.new(0, 6)
                    ToggleSwitchC.Name = "ToggleSwitchC"
                    ToggleSwitchC.Parent = ToggleSwitch
                    ToggleDisableC.CornerRadius = UDim.new(0, 6)
                    ToggleDisableC.Name = "ToggleDisableC"
                    ToggleDisableC.Parent = ToggleDisable
                    local funcs = {
                        SetState = function(self, state)
                            if (state == nil) then
                                state = not library.flags[flag]
                            end
                            if (library.flags[flag] == state) then
                                return
                            end
                            services.TweenService:Create(
                                ToggleSwitch,
                                TweenInfo.new(0.2),
                                {
                                    Position = UDim2.new(0, (state and (ToggleSwitch.Size.X.Offset / 2)) or 0, 0, 0),
                                    BackgroundColor3 = (state and Color3.fromRGB(255, 215, 0)) or beijingColor
                                }
                            ):Play()
                            library.flags[flag] = state
                            callback(state)
                        end,
                        Module = ToggleModule
                    }
                    if (enabled ~= false) then
                        funcs:SetState(flag, true)
                    end
                    ToggleBtn.MouseButton1Click:Connect(
                        function()
                            funcs:SetState()
                        end
                    )
                    return funcs
                end
                section.Keybind = function(section, text, default, callback)
                    local callback = callback or function()
                        end
                    assert(text, "No text provided")
                    assert(default, "No default key provided")
                    local default = ((typeof(default) == "string") and Enum.KeyCode[default]) or default
                    local banned = {
                        Return = true,
                        Space = true,
                        Tab = true,
                        Backquote = true,
                        CapsLock = true,
                        Escape = true,
                        Unknown = true
                    }
                    local shortNames = {
                        RightControl = "Right Ctrl",
                        LeftControl = "Left Ctrl",
                        LeftShift = "Left Shift",
                        RightShift = "Right Shift",
                        Semicolon = ";",
                        Quote = '"',
                        LeftBracket = "[",
                        RightBracket = "]",
                        Equals = "=",
                        Minus = "-",
                        RightAlt = "Right Alt",
                        LeftAlt = "Left Alt"
                    }
                    local bindKey = default
                    local keyTxt = (default and (shortNames[default.Name] or default.Name)) or "None"
                    local KeybindModule = Instance.new("Frame")
                    local KeybindBtn = Instance.new("TextButton")
                    local KeybindBtnC = Instance.new("UICorner")
                    local KeybindValue = Instance.new("TextButton")
                    local KeybindValueC = Instance.new("UICorner")
                    local KeybindL = Instance.new("UIListLayout")
                    local UIPadding = Instance.new("UIPadding")
                    KeybindModule.Name = "KeybindModule"
                    KeybindModule.Parent = Objs
                    KeybindModule.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
                    KeybindModule.BackgroundTransparency = 1
                    KeybindModule.BorderSizePixel = 0
                    KeybindModule.Position = UDim2.new(0, 0, 0, 0)
                    KeybindModule.Size = UDim2.new(0, 428, 0, 38)
                    KeybindBtn.Name = "KeybindBtn"
                    KeybindBtn.Parent = KeybindModule
                    KeybindBtn.BackgroundColor3 = zyColor
                    KeybindBtn.BorderSizePixel = 0
                    KeybindBtn.Size = UDim2.new(0, 428, 0, 38)
                    KeybindBtn.AutoButtonColor = false
                    KeybindBtn.Font = Enum.Font.GothamSemibold
                    KeybindBtn.Text = "   " .. text
                    KeybindBtn.TextColor3 = Color3.fromRGB(255, 215, 0)
                    KeybindBtn.TextSize = 16
                    KeybindBtn.TextXAlignment = Enum.TextXAlignment.Left
                    KeybindBtnC.CornerRadius = UDim.new(0, 6)
                    KeybindBtnC.Name = "KeybindBtnC"
                    KeybindBtnC.Parent = KeybindBtn
                    KeybindValue.Name = "KeybindValue"
                    KeybindValue.Parent = KeybindBtn
                    KeybindValue.BackgroundColor3 = Background
                    KeybindValue.BorderSizePixel = 0
                    KeybindValue.Position = UDim2.new(0.763033211, 0, 0.289473683, 0)
                    KeybindValue.Size = UDim2.new(0, 100, 0, 28)
                    KeybindValue.AutoButtonColor = false
                    KeybindValue.Font = Enum.Font.Gotham
                    KeybindValue.Text = keyTxt
                    KeybindValue.TextColor3 = Color3.fromRGB(255, 215, 0)
                    KeybindValue.TextSize = 14
                    KeybindValueC.CornerRadius = UDim.new(0, 6)
                    KeybindValueC.Name = "KeybindValueC"
                    KeybindValueC.Parent = KeybindValue
                    KeybindL.Name = "KeybindL"
                    KeybindL.Parent = KeybindBtn
                    KeybindL.HorizontalAlignment = Enum.HorizontalAlignment.Right
                    KeybindL.SortOrder = Enum.SortOrder.LayoutOrder
                    KeybindL.VerticalAlignment = Enum.VerticalAlignment.Center
                    UIPadding.Parent = KeybindBtn
                    UIPadding.PaddingRight = UDim.new(0, 6)
                    services.UserInputService.InputBegan:Connect(
                        function(inp, gpe)
                            if gpe then
                                return
                            end
                            if (inp.UserInputType ~= Enum.UserInputType.Keyboard) then
                                return
                            end
                            if (inp.KeyCode ~= bindKey) then
                                return
                            end
                            callback(bindKey.Name)
                        end
                    )
                    KeybindValue.MouseButton1Click:Connect(
                        function()
                            KeybindValue.Text = "..."
                            wait()
                            local key, uwu = services.UserInputService.InputEnded:Wait()
                            local keyName = tostring(key.KeyCode.Name)
                            if (key.UserInputType ~= Enum.UserInputType.Keyboard) then
                                KeybindValue.Text = keyTxt
                                return
                            end
                            if banned[keyName] then
                                KeybindValue.Text = keyTxt
                                return
                            end
                            wait()
                            bindKey = Enum.KeyCode[keyName]
                            KeybindValue.Text = shortNames[keyName] or keyName
                        end
                    )
                    KeybindValue:GetPropertyChangedSignal("TextBounds"):Connect(
                        function()
                            KeybindValue.Size = UDim2.new(0, KeybindValue.TextBounds.X + 30, 0, 28)
                        end
                    )
                    KeybindValue.Size = UDim2.new(0, KeybindValue.TextBounds.X + 30, 0, 28)
                end
                section.Textbox = function(section, text, flag, default, callback)
                    local callback = callback or function()
                        end
                    assert(text, "No text provided")
                    assert(flag, "No flag provided")
                    assert(default, "No default text provided")
                    library.flags[flag] = default
                    local TextboxModule = Instance.new("Frame")
                    local TextboxBack = Instance.new("TextButton")
                    local TextboxBackC = Instance.new("UICorner")
                    local BoxBG = Instance.new("TextButton")
                    local BoxBGC = Instance.new("UICorner")
                    local TextBox = Instance.new("TextBox")
                    local TextboxBackL = Instance.new("UIListLayout")
                    local TextboxBackP = Instance.new("UIPadding")
                    TextboxModule.Name = "TextboxModule"
                    TextboxModule.Parent = Objs
                    TextboxModule.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
                    TextboxModule.BackgroundTransparency = 1
                    TextboxModule.BorderSizePixel = 0
                    TextboxModule.Position = UDim2.new(0, 0, 0, 0)
                    TextboxModule.Size = UDim2.new(0, 428, 0, 38)
                    TextboxBack.Name = "TextboxBack"
                    TextboxBack.Parent = TextboxModule
                    TextboxBack.BackgroundColor3 = zyColor
                    TextboxBack.BorderSizePixel = 0
                    TextboxBack.Size = UDim2.new(0, 428, 0, 38)
                    TextboxBack.AutoButtonColor = false
                    TextboxBack.Font = Enum.Font.GothamSemibold
                    TextboxBack.Text = "   " .. text
                    TextboxBack.TextColor3 = Color3.fromRGB(255, 215, 0)
                    TextboxBack.TextSize = 16
                    TextboxBack.TextXAlignment = Enum.TextXAlignment.Left
                    TextboxBackC.CornerRadius = UDim.new(0, 6)
                    TextboxBackC.Name = "TextboxBackC"
                    TextboxBackC.Parent = TextboxBack
                    BoxBG.Name = "BoxBG"
                    BoxBG.Parent = TextboxBack
                    BoxBG.BackgroundColor3 = Background
                    BoxBG.BorderSizePixel = 0
                    BoxBG.Position = UDim2.new(0.763033211, 0, 0.289473683, 0)
                    BoxBG.Size = UDim2.new(0, 100, 0, 28)
                    BoxBG.AutoButtonColor = false
                    BoxBG.Font = Enum.Font.Gotham
                    BoxBG.Text = ""
                    BoxBG.TextColor3 = Color3.fromRGB(255, 215, 0)
                    BoxBG.TextSize = 14
                    BoxBGC.CornerRadius = UDim.new(0, 6)
                    BoxBGC.Name = "BoxBGC"
                    BoxBGC.Parent = BoxBG
                    TextBox.Parent = BoxBG
                    TextBox.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
                    TextBox.BackgroundTransparency = 1
                    TextBox.BorderSizePixel = 0
                    TextBox.Size = UDim2.new(1, 0, 1, 0)
                    TextBox.Font = Enum.Font.Gotham
                    TextBox.Text = default
                    TextBox.TextColor3 = Color3.fromRGB(255, 215, 0)
                    TextBox.TextSize = 14
                    TextboxBackL.Name = "TextboxBackL"
                    TextboxBackL.Parent = TextboxBack
                    TextboxBackL.HorizontalAlignment = Enum.HorizontalAlignment.Right
                    TextboxBackL.SortOrder = Enum.SortOrder.LayoutOrder
                    TextboxBackL.VerticalAlignment = Enum.VerticalAlignment.Center
                    TextboxBackP.Name = "TextboxBackP"
                    TextboxBackP.Parent = TextboxBack
                    TextboxBackP.PaddingRight = UDim.new(0, 6)
                    TextBox.FocusLost:Connect(
                        function()
                            if (TextBox.Text == "") then
                                TextBox.Text = default
                            end
                            library.flags[flag] = TextBox.Text
                            callback(TextBox.Text)
                        end
                    )
                    TextBox:GetPropertyChangedSignal("TextBounds"):Connect(
                        function()
                            BoxBG.Size = UDim2.new(0, TextBox.TextBounds.X + 30, 0, 28)
                        end
                    )
                    BoxBG.Size = UDim2.new(0, TextBox.TextBounds.X + 30, 0, 28)
                end
                section.Slider = function(section, text, flag, default, min, max, precise, callback)
                    local callback = callback or function()
                        end
                    local min = min or 1
                    local max = max or 10
                    local default = default or min
                    local precise = precise or false
                    library.flags[flag] = default
                    assert(text, "No text provided")
                    assert(flag, "No flag provided")
                    assert(default, "No default value provided")
                    local SliderModule = Instance.new("Frame")
                    local SliderBack = Instance.new("TextButton")
                    local SliderBackC = Instance.new("UICorner")
                    local SliderBar = Instance.new("Frame")
                    local SliderBarC = Instance.new("UICorner")
                    local SliderPart = Instance.new("Frame")
                    local SliderPartC = Instance.new("UICorner")
                    local SliderValBG = Instance.new("TextButton")
                    local SliderValBGC = Instance.new("UICorner")
                    local SliderValue = Instance.new("TextBox")
                    local MinSlider = Instance.new("TextButton")
                    local AddSlider = Instance.new("TextButton")
                    SliderModule.Name = "SliderModule"
                    SliderModule.Parent = Objs
                    SliderModule.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
                    SliderModule.BackgroundTransparency = 1
                    SliderModule.BorderSizePixel = 0
                    SliderModule.Position = UDim2.new(0, 0, 0, 0)
                    SliderModule.Size = UDim2.new(0, 428, 0, 38)
                    SliderBack.Name = "SliderBack"
                    SliderBack.Parent = SliderModule
                    SliderBack.BackgroundColor3 = zyColor
                    SliderBack.BorderSizePixel = 0
                    SliderBack.Size = UDim2.new(0, 428, 0, 38)
                    SliderBack.AutoButtonColor = false
                    SliderBack.Font = Enum.Font.GothamSemibold
                    SliderBack.Text = "   " .. text
                    SliderBack.TextColor3 = Color3.fromRGB(255, 215, 0)
                    SliderBack.TextSize = 16
                    SliderBack.TextXAlignment = Enum.TextXAlignment.Left
                    SliderBackC.CornerRadius = UDim.new(0, 6)
                    SliderBackC.Name = "SliderBackC"
                    SliderBackC.Parent = SliderBack
                    SliderBar.Name = "SliderBar"
                    SliderBar.Parent = SliderBack
                    SliderBar.AnchorPoint = Vector2.new(0, 0.5)
                    SliderBar.BackgroundColor3 = Background
                    SliderBar.BorderSizePixel = 0
                    SliderBar.Position = UDim2.new(0.369000018, 40, 0.5, 0)
                    SliderBar.Size = UDim2.new(0, 140, 0, 12)
                    SliderBarC.CornerRadius = UDim.new(0, 4)
                    SliderBarC.Name = "SliderBarC"
                    SliderBarC.Parent = SliderBar
                    
                    SliderPart.Name = "CyberSlider"
SliderPart.Parent = SliderBar
SliderPart.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
SliderPart.BorderSizePixel = 0
SliderPart.Size = UDim2.new(0, 54, 0, 13)

local sliderGlow = Instance.new("ImageLabel")
sliderGlow.Name = "SliderGlow"
sliderGlow.Parent = SliderPart
sliderGlow.BackgroundTransparency = 1
sliderGlow.Size = UDim2.new(1, 10, 1, 10)
sliderGlow.Position = UDim2.new(0, -5, 0, -5)
sliderGlow.Image = "rbxassetid://4896581736"
sliderGlow.ImageColor3 = Color3.fromRGB(0, 200, 255)
sliderGlow.ImageTransparency = 0.7
sliderGlow.ZIndex = -1

spawn(function()
    while SliderPart and SliderPart.Parent do
        for i = 0, 1, 0.01 do
            sliderGlow.ImageTransparency = 0.6 + math.sin(i*math.pi)*0.2
            wait(0.03)
        end
    end
end)
    
    
                    SliderPartC.CornerRadius = UDim.new(0, 4)
                    SliderPartC.Name = "SliderPartC"
                    SliderPartC.Parent = SliderPart
                    SliderValBG.Name = "SliderValBG"
                    SliderValBG.Parent = SliderBack
                    SliderValBG.BackgroundColor3 = Background
                    SliderValBG.BorderSizePixel = 0
                    SliderValBG.Position = UDim2.new(0.883177578, 0, 0.131578952, 0)
                    SliderValBG.Size = UDim2.new(0, 44, 0, 28)
                    SliderValBG.AutoButtonColor = false
                    SliderValBG.Font = Enum.Font.Gotham
                    SliderValBG.Text = ""
                    SliderValBG.TextColor3 = Color3.fromRGB(255, 215, 0)
                    SliderValBG.TextSize = 14
                    SliderValBGC.CornerRadius = UDim.new(0, 6)
                    SliderValBGC.Name = "SliderValBGC"
                    SliderValBGC.Parent = SliderValBG
                    SliderValue.Name = "SliderValue"
                    SliderValue.Parent = SliderValBG
                    SliderValue.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
                    SliderValue.BackgroundTransparency = 1
                    SliderValue.BorderSizePixel = 0
                    SliderValue.Size = UDim2.new(1, 0, 1, 0)
                    SliderValue.Font = Enum.Font.Gotham
                    SliderValue.Text = "1000"
                    SliderValue.TextColor3 = Color3.fromRGB(255, 215, 0)
                    SliderValue.TextSize = 14
                    MinSlider.Name = "MinSlider"
                    MinSlider.Parent = SliderModule
                    MinSlider.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
                    MinSlider.BackgroundTransparency = 1
                    MinSlider.BorderSizePixel = 0
                    MinSlider.Position = UDim2.new(0.296728969, 40, 0.236842096, 0)
                    MinSlider.Size = UDim2.new(0, 20, 0, 20)
                    MinSlider.Font = Enum.Font.Gotham
                    MinSlider.Text = "-"
                    MinSlider.TextColor3 = Color3.fromRGB(255, 215, 0)
                    MinSlider.TextSize = 24
                    MinSlider.TextWrapped = true
                    AddSlider.Name = "AddSlider"
                    AddSlider.Parent = SliderModule
                    AddSlider.AnchorPoint = Vector2.new(0, 0.5)
                    AddSlider.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
                    AddSlider.BackgroundTransparency = 1
                    AddSlider.BorderSizePixel = 0
                    AddSlider.Position = UDim2.new(0.810906529, 0, 0.5, 0)
                    AddSlider.Size = UDim2.new(0, 20, 0, 20)
                    AddSlider.Font = Enum.Font.Gotham
                    AddSlider.Text = "+"
                    AddSlider.TextColor3 = Color3.fromRGB(255, 215, 0)
                    AddSlider.TextSize = 24
                    AddSlider.TextWrapped = true
                    local funcs = {SetValue = function(self, value)
                            local percent = (mouse.X - SliderBar.AbsolutePosition.X) / SliderBar.AbsoluteSize.X
                            if value then
                                percent = (value - min) / (max - min)
                            end
                            percent = math.clamp(percent, 0, 1)
                            if precise then
                                value =
                                    value or tonumber(string.format("%.1f", tostring(min + ((max - min) * percent))))
                            else
                                value = value or math.floor(min + ((max - min) * percent))
                            end
                            library.flags[flag] = tonumber(value)
                            SliderValue.Text = tostring(value)
                            SliderPart.Size = UDim2.new(percent, 0, 1, 0)
                            callback(tonumber(value))
                        end}
                    MinSlider.MouseButton1Click:Connect(
                        function()
                            local currentValue = library.flags[flag]
                            currentValue = math.clamp(currentValue - 1, min, max)
                            funcs:SetValue(currentValue)
                        end
                    )
                    AddSlider.MouseButton1Click:Connect(
                        function()
                            local currentValue = library.flags[flag]
                            currentValue = math.clamp(currentValue + 1, min, max)
                            funcs:SetValue(currentValue)
                        end
                    )
                    funcs:SetValue(default)
                    local dragging, boxFocused, allowed = false, false, {[""] = true, ["-"] = true}
                    SliderBar.InputBegan:Connect(
                        function(input)
                            if (input.UserInputType == Enum.UserInputType.MouseButton1) then
                                funcs:SetValue()
                                dragging = true
                            end
                        end
                    )
                    services.UserInputService.InputEnded:Connect(
                        function(input)
                            if (dragging and (input.UserInputType == Enum.UserInputType.MouseButton1)) then
                                dragging = false
                            end
                        end
                    )
                    services.UserInputService.InputChanged:Connect(
                        function(input)
                            if (dragging and (input.UserInputType == Enum.UserInputType.MouseMovement)) then
                                funcs:SetValue()
                            end
                        end
                    )
                    SliderBar.InputBegan:Connect(
                        function(input)
                            if (input.UserInputType == Enum.UserInputType.Touch) then
                                funcs:SetValue()
                                dragging = true
                            end
                        end
                    )
                    services.UserInputService.InputEnded:Connect(
                        function(input)
                            if (dragging and (input.UserInputType == Enum.UserInputType.Touch)) then
                                dragging = false
                            end
                        end
                    )
                    services.UserInputService.InputChanged:Connect(
                        function(input)
                            if (dragging and (input.UserInputType == Enum.UserInputType.Touch)) then
                                funcs:SetValue()
                            end
                        end
                    )
                    SliderValue.Focused:Connect(
                        function()
                            boxFocused = true
                        end
                    )
                    SliderValue.FocusLost:Connect(
                        function()
                            boxFocused = false
                            if (SliderValue.Text == "") then
                                funcs:SetValue(default)
                            end
                        end
                    )
                    SliderValue:GetPropertyChangedSignal("Text"):Connect(
                        function()
                            if not boxFocused then
                                return
                            end
                            SliderValue.Text = SliderValue.Text:gsub("%D+", "")
                            local text = SliderValue.Text
                            if not tonumber(text) then
                                SliderValue.Text = SliderValue.Text:gsub("%D+", "")
                            elseif not allowed[text] then
                                if (tonumber(text) > max) then
                                    text = max
                                    SliderValue.Text = tostring(max)
                                end
                                funcs:SetValue(tonumber(text))
                            end
                        end
                    )
                    return funcs
                end
                section.Dropdown = function(section, text, flag, options, callback)
                    local callback = callback or function()
                        end
                    local options = options or {}
                    assert(text, "No text provided")
                    assert(flag, "No flag provided")
                    library.flags[flag] = nil
                    local DropdownModule = Instance.new("Frame")
                    local DropdownTop = Instance.new("TextButton")
                    local DropdownTopC = Instance.new("UICorner")
                    local DropdownOpen = Instance.new("TextButton")
                    local DropdownText = Instance.new("TextBox")
                    local DropdownModuleL = Instance.new("UIListLayout")
                    local Option = Instance.new("TextButton")
                    local OptionC = Instance.new("UICorner")
                    DropdownModule.Name = "DropdownModule"
                    DropdownModule.Parent = Objs
                    DropdownModule.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
                    DropdownModule.BackgroundTransparency = 1
                    DropdownModule.BorderSizePixel = 0
                    DropdownModule.ClipsDescendants = true
                    DropdownModule.Position = UDim2.new(0, 0, 0, 0)
                    DropdownModule.Size = UDim2.new(0, 428, 0, 38)
                    DropdownTop.Name = "CyberDropdown"
DropdownTop.Parent = DropdownModule
DropdownTop.BackgroundColor3 = Color3.fromRGB(15, 25, 35)
DropdownTop.BorderColor3 = Color3.fromRGB(0, 150, 255)
DropdownTop.BorderSizePixel = 1
DropdownTop.Size = UDim2.new(0, 428, 0, 42)

local scanLine = Instance.new("Frame")
scanLine.Name = "ScanLine"
scanLine.Parent = DropdownTop
scanLine.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
scanLine.BackgroundTransparency = 0.8
scanLine.Size = UDim2.new(1, 0, 0, 1)
scanLine.Position = UDim2.new(0, 0, 0, 0)
scanLine.ZIndex = 2

spawn(function()
    while scanLine and scanLine.Parent do
        for i = 0, 1, 0.05 do
            scanLine.Position = UDim2.new(0, 0, i, 0)
            scanLine.BackgroundTransparency = 0.7 + math.sin(i*math.pi)*0.2
            wait(0.03)
        end
    end
end)
DropdownTop.AutoButtonColor = false
DropdownTop.Font = Enum.Font.GothamSemibold
DropdownTop.Text = ""
DropdownTop.TextColor3 = Color3.fromRGB(255, 240, 150)
DropdownTop.TextSize = 16
DropdownTop.TextXAlignment = Enum.TextXAlignment.Left

local Arrow = Instance.new("ImageLabel")
Arrow.Name = "Arrow"
Arrow.Parent = DropdownTop
Arrow.BackgroundTransparency = 1
Arrow.Size = UDim2.new(0, 20, 0, 20)
Arrow.Position = UDim2.new(0.95, 0, 0.5, 0)
Arrow.AnchorPoint = Vector2.new(0, 0.5)
Arrow.Image = "rbxassetid://6031091005"  
Arrow.ImageColor3 = Color3.fromRGB(255, 215, 0)
                    DropdownTopC.CornerRadius = UDim.new(0, 6)
                    DropdownTopC.Name = "DropdownTopC"
                    DropdownTopC.Parent = DropdownTop
                    DropdownOpen.Name = "DropdownOpen"
                    DropdownOpen.Parent = DropdownTop
                    DropdownOpen.AnchorPoint = Vector2.new(0, 0.5)
                    DropdownOpen.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
                    DropdownOpen.BackgroundTransparency = 1
                    DropdownOpen.BorderSizePixel = 0
                    DropdownOpen.Position = UDim2.new(0.918383181, 0, 0.5, 0)
                    DropdownOpen.Size = UDim2.new(0, 20, 0, 20)
                    DropdownOpen.Font = Enum.Font.Gotham
                    DropdownOpen.Text = "+"
                    DropdownOpen.TextColor3 = Color3.fromRGB(255, 215, 0)
                    DropdownOpen.TextSize = 24
                    DropdownOpen.TextWrapped = true
                    DropdownText.Name = "DropdownText"
                    DropdownText.Parent = DropdownTop
                    DropdownText.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
                    DropdownText.BackgroundTransparency = 1
                    DropdownText.BorderSizePixel = 0
                    DropdownText.Position = UDim2.new(0.0373831764, 0, 0, 0)
                    DropdownText.Size = UDim2.new(0, 184, 0, 38)
                    DropdownText.Font = Enum.Font.GothamSemibold
                    DropdownText.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
                    DropdownText.PlaceholderText = text
                    DropdownText.Text = ""
                    DropdownText.TextColor3 = Color3.fromRGB(255, 215, 0)
                    DropdownText.TextSize = 16
                    DropdownText.TextXAlignment = Enum.TextXAlignment.Left
                    DropdownModuleL.Name = "DropdownModuleL"
                    DropdownModuleL.Parent = DropdownModule
                    DropdownModuleL.SortOrder = Enum.SortOrder.LayoutOrder
                    DropdownModuleL.Padding = UDim.new(0, 4)
                    local setAllVisible = function()
                        local options = DropdownModule:GetChildren()
                        for i = 1, #options do
                            local option = options[i]
                            if (option:IsA("TextButton") and option.Name:match("Option_")) then
                                option.Visible = true
                            end
                        end
                    end
                    local searchDropdown = function(text)
                        local options = DropdownModule:GetChildren()
                        for i = 1, #options do
                            local option = options[i]
                            if (text == "") then
                                setAllVisible()
                            elseif (option:IsA("TextButton") and option.Name:match("Option_")) then
                                if option.Text:lower():match(text:lower()) then
                                    option.Visible = true
                                else
                                    option.Visible = false
                                end
                            end
                        end
                    end
                    local open = false
                    local ToggleDropVis = function()
                        open = not open
                        if open then
                            setAllVisible()
                        end
                        DropdownOpen.Text = (open and "-") or "+"
                        DropdownModule.Size =
                            UDim2.new(0, 428, 0, (open and (DropdownModuleL.AbsoluteContentSize.Y + 4)) or 38)
                    end
                    DropdownOpen.MouseButton1Click:Connect(ToggleDropVis)
                    DropdownText.Focused:Connect(
                        function()
                            if open then
                                return
                            end
                            ToggleDropVis()
                        end
                    )
                    DropdownText:GetPropertyChangedSignal("Text"):Connect(
                        function()
                            if not open then
                                return
                            end
                            searchDropdown(DropdownText.Text)
                        end
                    )
                    DropdownModuleL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                        function()
                            if not open then
                                return
                            end
                            DropdownModule.Size = UDim2.new(0, 428, 0, DropdownModuleL.AbsoluteContentSize.Y + 4)
                        end
                    )
                    local funcs = {}
                    
                    funcs.AddOption = function(self, option)
        local Option = Instance.new("TextButton")
        local OptionC = Instance.new("UICorner")
        local OptionHover = Instance.new("Frame")
        local OptionHoverC = Instance.new("UICorner")
        
        Option.Name = "Option_" .. option
        Option.Parent = DropdownModule
        Option.BackgroundColor3 = Color3.fromRGB(40, 30, 10)
        Option.BorderSizePixel = 0
        Option.Position = UDim2.new(0, 0, 0.328125, 0)
        Option.Size = UDim2.new(0, 428, 0, 32)  
        Option.AutoButtonColor = false
        Option.Font = Enum.Font.Gotham
        Option.Text = "   " .. option
        Option.TextColor3 = Color3.fromRGB(200, 180, 100)
        Option.TextSize = 14
        Option.TextXAlignment = Enum.TextXAlignment.Left
        
        OptionC.CornerRadius = UDim.new(0, 6)
        OptionC.Name = "OptionC"
        OptionC.Parent = Option
        
        OptionHover.Name = "HoverEffect"
        OptionHover.Parent = Option
        OptionHover.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
        OptionHover.BackgroundTransparency = 0.9
        OptionHover.Size = UDim2.new(1, 0, 1, 0)
        OptionHover.ZIndex = -1
        
        OptionHoverC.CornerRadius = UDim.new(0, 6)
        OptionHoverC.Name = "OptionHoverC"
        OptionHoverC.Parent = OptionHover
        
       Option.MouseEnter:Connect(function()
    services.TweenService:Create(OptionHover, TweenInfo.new(0.2), {
        BackgroundTransparency = 0.7,
        Size = UDim2.new(1, 10, 1, 0)
    }):Play()
    services.TweenService:Create(Option, TweenInfo.new(0.2), {
        TextColor3 = Color3.fromRGB(255, 240, 150)
    }):Play()
end)
        
        Option.MouseLeave:Connect(function()
            services.TweenService:Create(OptionHover, TweenInfo.new(0.2), {
                BackgroundTransparency = 0.9,
                Size = UDim2.new(1, 0, 1, 0)
            }):Play()
            services.TweenService:Create(Option, TweenInfo.new(0.2), {
                TextColor3 = Color3.fromRGB(200, 180, 100)
            }):Play()
        end)
        
        Option.MouseButton1Click:Connect(
            function()
                services.TweenService:Create(OptionHover, TweenInfo.new(0.1), {
                    BackgroundTransparency = 0.5,
                    Size = UDim2.new(1, 0, 1, 0)
                }):Play()
                services.TweenService:Create(Option, TweenInfo.new(0.1), {
                    TextColor3 = Color3.fromRGB(255, 215, 0),
                    TextSize = 15
                }):Play()
                
                wait(0.1)
                ToggleDropVis()
                callback(Option.Text)
                DropdownText.Text = option
                library.flags[flag] = option
                
                services.TweenService:Create(Option, TweenInfo.new(0.3), {
                    TextColor3 = Color3.fromRGB(200, 180, 100),
                    TextSize = 14
                }):Play()
            end
        )
    end
                    funcs.RemoveOption = function(self, option)
                        local option = DropdownModule:FindFirstChild("Option_" .. option)
                        if option then
                            option:Destroy()
                        end
                    end
                    funcs.SetOptions = function(self, options)
                        for _, v in next, DropdownModule:GetChildren() do
                            if v.Name:match("Option_") then
                                v:Destroy()
                            end
                        end
                        for _, v in next, options do
                            funcs:AddOption(v)
                        end
                    end
                    funcs:SetOptions(options)
                    return funcs
                end
                return section
            end
            return tab
        end
        return window
    end

return library