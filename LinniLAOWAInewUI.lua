
local LinniScript = {};

-- LinniHub
LinniScript["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
LinniScript["1"]["IgnoreGuiInset"] = true;
LinniScript["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
LinniScript["1"]["Name"] = [[LinniHub]];
LinniScript["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- LinniHub.BackgroundFrame
LinniScript["2"] = Instance.new("Frame", LinniScript["1"]);
LinniScript["2"]["BorderSizePixel"] = 0;
LinniScript["2"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
LinniScript["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LinniScript["2"]["Size"] = UDim2.new(0, 452, 0, 344);
LinniScript["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
LinniScript["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["2"]["Name"] = [[BackgroundFrame]];


-- LinniHub.BackgroundFrame.UICorner
LinniScript["3"] = Instance.new("UICorner", LinniScript["2"]);
LinniScript["3"]["CornerRadius"] = UDim.new(0, 10);


-- LinniHub.BackgroundFrame.UIGradient
LinniScript["4"] = Instance.new("UIGradient", LinniScript["2"]);
LinniScript["4"]["Rotation"] = -143;
LinniScript["4"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(11, 11, 11)),ColorSequenceKeypoint.new(0.484, Color3.fromRGB(6, 244, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(26, 26, 26))};


-- LinniHub.BackgroundFrame.LightBlue
LinniScript["5"] = Instance.new("Frame", LinniScript["2"]);
LinniScript["5"]["BorderSizePixel"] = 0;
LinniScript["5"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
LinniScript["5"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["5"]["Position"] = UDim2.new(-0.00013, 0, -0.00077, 0);
LinniScript["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["5"]["Name"] = [[LightBlue]];
LinniScript["5"]["BackgroundTransparency"] = 0.8;


-- LinniHub.BackgroundFrame.LightBlue.UIGradient
LinniScript["6"] = Instance.new("UIGradient", LinniScript["5"]);
LinniScript["6"]["Rotation"] = 50;
LinniScript["6"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(16, 16, 16)),ColorSequenceKeypoint.new(0.461, Color3.fromRGB(0, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(16, 16, 16))};


-- LinniHub.BackgroundFrame.LightBlue.UICorner
LinniScript["7"] = Instance.new("UICorner", LinniScript["5"]);
LinniScript["7"]["CornerRadius"] = UDim.new(0, 10);


-- LinniHub.BackgroundFrame.Blue
LinniScript["8"] = Instance.new("Frame", LinniScript["2"]);
LinniScript["8"]["BorderSizePixel"] = 0;
LinniScript["8"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
LinniScript["8"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["8"]["Position"] = UDim2.new(-0.00013, 0, -0.00077, 0);
LinniScript["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["8"]["Name"] = [[Blue]];
LinniScript["8"]["BackgroundTransparency"] = 0.6;


-- LinniHub.BackgroundFrame.Blue.UIGradient
LinniScript["9"] = Instance.new("UIGradient", LinniScript["8"]);
LinniScript["9"]["Rotation"] = -70;
LinniScript["9"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(16, 16, 16)),ColorSequenceKeypoint.new(0.491, Color3.fromRGB(0, 50, 123)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(16, 16, 16))};


-- LinniHub.BackgroundFrame.Blue.UICorner
LinniScript["a"] = Instance.new("UICorner", LinniScript["8"]);
LinniScript["a"]["CornerRadius"] = UDim.new(0, 10);


-- LinniHub.BackgroundFrame.Main
LinniScript["b"] = Instance.new("Frame", LinniScript["2"]);
LinniScript["b"]["ZIndex"] = 2;
LinniScript["b"]["BorderSizePixel"] = 0;
LinniScript["b"]["BackgroundColor3"] = Color3.fromRGB(67, 67, 67);
LinniScript["b"]["Size"] = UDim2.new(0, 311, 0, 343);
LinniScript["b"]["Position"] = UDim2.new(0, 140, 0, 0);
LinniScript["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["b"]["Name"] = [[Main]];
LinniScript["b"]["BackgroundTransparency"] = 1;


-- LinniHub.BackgroundFrame.Main.Tabs
LinniScript["c"] = Instance.new("Folder", LinniScript["b"]);
LinniScript["c"]["Name"] = [[Tabs]];


-- LinniHub.BackgroundFrame.Side
LinniScript["d"] = Instance.new("Frame", LinniScript["2"]);
LinniScript["d"]["ZIndex"] = 2;
LinniScript["d"]["BorderSizePixel"] = 0;
LinniScript["d"]["BackgroundColor3"] = Color3.fromRGB(44, 44, 44);
LinniScript["d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LinniScript["d"]["Size"] = UDim2.new(0, 140, 0, 344);
LinniScript["d"]["Position"] = UDim2.new(0.15487, 0, 0.5, 0);
LinniScript["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["d"]["Name"] = [[Side]];


-- LinniHub.BackgroundFrame.Side.UICorner
LinniScript["e"] = Instance.new("UICorner", LinniScript["d"]);
LinniScript["e"]["CornerRadius"] = UDim.new(0, 10);


-- LinniHub.BackgroundFrame.Side.UIGradient
LinniScript["f"] = Instance.new("UIGradient", LinniScript["d"]);
LinniScript["f"]["Rotation"] = -51;
LinniScript["f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(11, 11, 11)),ColorSequenceKeypoint.new(0.484, Color3.fromRGB(6, 244, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(26, 26, 26))};


-- LinniHub.BackgroundFrame.Side.LightBlue
LinniScript["10"] = Instance.new("Frame", LinniScript["d"]);
LinniScript["10"]["BorderSizePixel"] = 0;
LinniScript["10"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
LinniScript["10"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["10"]["Position"] = UDim2.new(-0.00013, 0, -0.00077, 0);
LinniScript["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["10"]["Name"] = [[LightBlue]];
LinniScript["10"]["BackgroundTransparency"] = 0.8;


-- LinniHub.BackgroundFrame.Side.LightBlue.UIGradient
LinniScript["11"] = Instance.new("UIGradient", LinniScript["10"]);
LinniScript["11"]["Rotation"] = 50;
LinniScript["11"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(16, 16, 16)),ColorSequenceKeypoint.new(0.461, Color3.fromRGB(0, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(16, 16, 16))};


-- LinniHub.BackgroundFrame.Side.LightBlue.UICorner
LinniScript["12"] = Instance.new("UICorner", LinniScript["10"]);
LinniScript["12"]["CornerRadius"] = UDim.new(0, 10);


-- LinniHub.BackgroundFrame.Side.Blue
LinniScript["13"] = Instance.new("Frame", LinniScript["d"]);
LinniScript["13"]["BorderSizePixel"] = 0;
LinniScript["13"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
LinniScript["13"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["13"]["Position"] = UDim2.new(-0.00013, 0, -0.00077, 0);
LinniScript["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["13"]["Name"] = [[Blue]];
LinniScript["13"]["BackgroundTransparency"] = 0.6;


-- LinniHub.BackgroundFrame.Side.Blue.UIGradient
LinniScript["14"] = Instance.new("UIGradient", LinniScript["13"]);
LinniScript["14"]["Rotation"] = -70;
LinniScript["14"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(16, 16, 16)),ColorSequenceKeypoint.new(0.491, Color3.fromRGB(0, 50, 123)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(16, 16, 16))};


-- LinniHub.BackgroundFrame.Side.Blue.UICorner
LinniScript["15"] = Instance.new("UICorner", LinniScript["13"]);
LinniScript["15"]["CornerRadius"] = UDim.new(0, 10);


-- LinniHub.BackgroundFrame.Side.Cyan
LinniScript["16"] = Instance.new("CanvasGroup", LinniScript["d"]);
LinniScript["16"]["BorderSizePixel"] = 0;
LinniScript["16"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
LinniScript["16"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["16"]["Position"] = UDim2.new(-0.00013, 0, -0.00077, 0);
LinniScript["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["16"]["Name"] = [[Cyan]];
LinniScript["16"]["BackgroundTransparency"] = 0.8;


-- LinniHub.BackgroundFrame.Side.Cyan.UIGradient
LinniScript["17"] = Instance.new("UIGradient", LinniScript["16"]);
LinniScript["17"]["Rotation"] = -26;
LinniScript["17"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(16, 16, 16)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(0, 35, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(16, 16, 16))};


-- LinniHub.BackgroundFrame.Side.Cyan.UICorner
LinniScript["18"] = Instance.new("UICorner", LinniScript["16"]);
LinniScript["18"]["CornerRadius"] = UDim.new(0, 10);


-- LinniHub.BackgroundFrame.Side.Cyan.AbstractBg
LinniScript["19"] = Instance.new("ImageLabel", LinniScript["16"]);
LinniScript["19"]["BorderSizePixel"] = 0;
LinniScript["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["19"]["ImageColor3"] = Color3.fromRGB(0, 183, 22);
LinniScript["19"]["Image"] = [[rbxassetid://88984077541230]];
LinniScript["19"]["Size"] = UDim2.new(0, 549, 0, 364);
LinniScript["19"]["Visible"] = false;
LinniScript["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["19"]["BackgroundTransparency"] = 1;
LinniScript["19"]["Rotation"] = 40;
LinniScript["19"]["Name"] = [[AbstractBg]];
LinniScript["19"]["Position"] = UDim2.new(0.41197, 0, 0.48528, 0);


-- LinniHub.BackgroundFrame.Side.TabButtons
LinniScript["1a"] = Instance.new("ScrollingFrame", LinniScript["d"]);
LinniScript["1a"]["ZIndex"] = 5;
LinniScript["1a"]["BorderSizePixel"] = 0;
LinniScript["1a"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
LinniScript["1a"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
LinniScript["1a"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
LinniScript["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["1a"]["Name"] = [[TabButtons]];
LinniScript["1a"]["Selectable"] = false;
LinniScript["1a"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
LinniScript["1a"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
LinniScript["1a"]["Size"] = UDim2.new(0, 140, 0, 285);
LinniScript["1a"]["ScrollBarImageColor3"] = Color3.fromRGB(118, 118, 118);
LinniScript["1a"]["Position"] = UDim2.new(0, 0, 0, 59);
LinniScript["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["1a"]["ScrollBarThickness"] = 2;
LinniScript["1a"]["BackgroundTransparency"] = 1;


-- LinniHub.BackgroundFrame.Side.TabButtons.UIListLayout
LinniScript["1b"] = Instance.new("UIListLayout", LinniScript["1a"]);
LinniScript["1b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- LinniHub.BackgroundFrame.Side.DraggablePart
LinniScript["1c"] = Instance.new("Frame", LinniScript["d"]);
LinniScript["1c"]["ZIndex"] = 5;
LinniScript["1c"]["BorderSizePixel"] = 0;
LinniScript["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["1c"]["Size"] = UDim2.new(0, 140, 0, 55);
LinniScript["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["1c"]["Name"] = [[DraggablePart]];
LinniScript["1c"]["BackgroundTransparency"] = 1;


-- LinniHub.BackgroundFrame.Side.DraggablePart.Logo
LinniScript["1d"] = Instance.new("ImageLabel", LinniScript["1c"]);
LinniScript["1d"]["BorderSizePixel"] = 0;
LinniScript["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["1d"]["Image"] = [[rbxassetid://120727887371733]];
LinniScript["1d"]["Size"] = UDim2.new(0, 33, 0, 35);
LinniScript["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["1d"]["BackgroundTransparency"] = 1;
LinniScript["1d"]["Name"] = [[Logo]];
LinniScript["1d"]["Position"] = UDim2.new(0, 12, 0, 13);


-- LinniHub.BackgroundFrame.Side.DraggablePart.Logo.UIAspectRatioConstraint
LinniScript["1e"] = Instance.new("UIAspectRatioConstraint", LinniScript["1d"]);



-- LinniHub.BackgroundFrame.Side.DraggablePart.Logo.UICorner
LinniScript["1f"] = Instance.new("UICorner", LinniScript["1d"]);



local Library = {}

function Library:CreateWindow(config)
    local window = {}
    
    -- Title dari config
    local customTitle = config.Title or "Default Title"

    -- Contoh elemen GUI
    local LinniScript = {}

    -- Create BackgroundFrame.Side.DraggablePart.Title
    LinniScript["20"] = Instance.new("TextLabel")
    LinniScript["20"].Name = "Title"
    LinniScript["20"].TextWrapped = true
    LinniScript["20"].BorderSizePixel = 0
    LinniScript["20"].TextXAlignment = Enum.TextXAlignment.Left
    LinniScript["20"].TextScaled = true
    LinniScript["20"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LinniScript["20"].TextSize = 14
    LinniScript["20"].FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    LinniScript["20"].TextColor3 = Color3.fromRGB(255, 255, 255)
    LinniScript["20"].BackgroundTransparency = 1
    LinniScript["20"].AnchorPoint = Vector2.new(0, 0.5)
    LinniScript["20"].Size = UDim2.new(0, 80, 0, 17)
    LinniScript["20"].Position = UDim2.new(0, 55, 0, 29)
    LinniScript["20"].BorderColor3 = Color3.fromRGB(0, 0, 0)
    LinniScript["20"].Text = customTitle -- GANTI DARI CONFIG

    -- Create Floating.Folder.Title
    LinniScript["d5"] = Instance.new("TextLabel")
    LinniScript["d5"].Name = "Title"
    LinniScript["d5"].TextWrapped = true
    LinniScript["d5"].BorderSizePixel = 0
    LinniScript["d5"].TextXAlignment = Enum.TextXAlignment.Left
    LinniScript["d5"].TextScaled = true
    LinniScript["d5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LinniScript["d5"].TextSize = 14
    LinniScript["d5"].FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    LinniScript["d5"].TextColor3 = Color3.fromRGB(255, 255, 255)
    LinniScript["d5"].BackgroundTransparency = 1
    LinniScript["d5"].AnchorPoint = Vector2.new(0, 0.5)
    LinniScript["d5"].Size = UDim2.new(0, 70, 0, 15)
    LinniScript["d5"].Position = UDim2.new(0, 53, 0, 21)
    LinniScript["d5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
    LinniScript["d5"].Text = customTitle -- GANTI DARI CONFIG

    -- Kembalikan objek window jika perlu
    return window
end

return Library



-- LinniHub.BackgroundFrame.Side.DraggablePart.Title.UIGradient
LinniScript["21"] = Instance.new("UIGradient", LinniScript["20"]);
LinniScript["21"]["Rotation"] = -90;
LinniScript["21"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- LinniHub.BackgroundFrame.DropShadowHolder
LinniScript["22"] = Instance.new("Frame", LinniScript["2"]);
LinniScript["22"]["ZIndex"] = 0;
LinniScript["22"]["BorderSizePixel"] = 0;
LinniScript["22"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["22"]["Name"] = [[DropShadowHolder]];
LinniScript["22"]["BackgroundTransparency"] = 1;


-- LinniHub.BackgroundFrame.DropShadowHolder.DropShadow
LinniScript["23"] = Instance.new("ImageLabel", LinniScript["22"]);
LinniScript["23"]["ZIndex"] = 0;
LinniScript["23"]["BorderSizePixel"] = 0;
LinniScript["23"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
LinniScript["23"]["ScaleType"] = Enum.ScaleType.Slice;
LinniScript["23"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["23"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LinniScript["23"]["Image"] = [[rbxassetid://6014261993]];
LinniScript["23"]["Size"] = UDim2.new(1, 47, 1, 47);
LinniScript["23"]["BackgroundTransparency"] = 1;
LinniScript["23"]["Name"] = [[DropShadow]];
LinniScript["23"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- LinniHub.BackgroundFrame.Cyan
LinniScript["24"] = Instance.new("Frame", LinniScript["2"]);
LinniScript["24"]["BorderSizePixel"] = 0;
LinniScript["24"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
LinniScript["24"]["ClipsDescendants"] = true;
LinniScript["24"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["24"]["Position"] = UDim2.new(-0.00013, 0, -0.00077, 0);
LinniScript["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["24"]["Name"] = [[Cyan]];
LinniScript["24"]["BackgroundTransparency"] = 0.8;


-- LinniHub.BackgroundFrame.Cyan.UIGradient
LinniScript["25"] = Instance.new("UIGradient", LinniScript["24"]);
LinniScript["25"]["Rotation"] = -26;
LinniScript["25"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(16, 16, 16)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(0, 35, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(16, 16, 16))};


-- LinniHub.BackgroundFrame.Cyan.UICorner
LinniScript["26"] = Instance.new("UICorner", LinniScript["24"]);
LinniScript["26"]["CornerRadius"] = UDim.new(0, 10);


-- LinniHub.Library
LinniScript["27"] = Instance.new("ModuleScript", LinniScript["1"]);
LinniScript["27"]["Name"] = [[Library]];


-- LinniHub.IconLib
LinniScript["28"] = Instance.new("ModuleScript", LinniScript["1"]);
LinniScript["28"]["Name"] = [[IconLib]];


-- LinniHub.Template
LinniScript["29"] = Instance.new("Folder", LinniScript["1"]);
LinniScript["29"]["Name"] = [[Template]];


-- LinniHub.Template.TabButton
LinniScript["2a"] = Instance.new("TextButton", LinniScript["29"]);
LinniScript["2a"]["BorderSizePixel"] = 0;
LinniScript["2a"]["TextSize"] = 14;
LinniScript["2a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LinniScript["2a"]["Size"] = UDim2.new(0, 137, 0, 39);
LinniScript["2a"]["BackgroundTransparency"] = 1;
LinniScript["2a"]["Name"] = [[TabButton]];
LinniScript["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["2a"]["Text"] = [[]];
LinniScript["2a"]["Visible"] = false;


-- LinniHub.Template.TabButton.Icon
LinniScript["2b"] = Instance.new("ImageLabel", LinniScript["2a"]);
LinniScript["2b"]["BorderSizePixel"] = 0;
LinniScript["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["2b"]["AnchorPoint"] = Vector2.new(0, 0.5);
LinniScript["2b"]["Image"] = [[rbxassetid://97623395395101]];
LinniScript["2b"]["Size"] = UDim2.new(0, 25, 0, 25);
LinniScript["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["2b"]["BackgroundTransparency"] = 1;
LinniScript["2b"]["Name"] = [[Icon]];
LinniScript["2b"]["Position"] = UDim2.new(0.07, 0, 0.5, 0);


-- LinniHub.Template.TabButton.Icon.UIAspectRatioConstraint
LinniScript["2c"] = Instance.new("UIAspectRatioConstraint", LinniScript["2b"]);



-- LinniHub.Template.TabButton.Title
LinniScript["2d"] = Instance.new("TextLabel", LinniScript["2a"]);
LinniScript["2d"]["TextWrapped"] = true;
LinniScript["2d"]["BorderSizePixel"] = 0;
LinniScript["2d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LinniScript["2d"]["TextScaled"] = true;
LinniScript["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["2d"]["TextSize"] = 14;
LinniScript["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LinniScript["2d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["2d"]["BackgroundTransparency"] = 1;
LinniScript["2d"]["AnchorPoint"] = Vector2.new(0, 0.5);
LinniScript["2d"]["Size"] = UDim2.new(0, 90, 0, 17);
LinniScript["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["2d"]["Text"] = [[General]];
LinniScript["2d"]["Name"] = [[Title]];
LinniScript["2d"]["Position"] = UDim2.new(0.33, 0, 0.5, 0);


-- LinniHub.Template.TabButton.Title.UIGradient
LinniScript["2e"] = Instance.new("UIGradient", LinniScript["2d"]);
LinniScript["2e"]["Rotation"] = -90;
LinniScript["2e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- LinniHub.Template.TabFrame
LinniScript["2f"] = Instance.new("Frame", LinniScript["29"]);
LinniScript["2f"]["Visible"] = false;
LinniScript["2f"]["ZIndex"] = 0;
LinniScript["2f"]["BorderSizePixel"] = 0;
LinniScript["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["2f"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["2f"]["Name"] = [[TabFrame]];
LinniScript["2f"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.TabFrame.ScrollingFrameRight
LinniScript["30"] = Instance.new("ScrollingFrame", LinniScript["2f"]);
LinniScript["30"]["Active"] = true;
LinniScript["30"]["ZIndex"] = 2;
LinniScript["30"]["BorderSizePixel"] = 0;
LinniScript["30"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
LinniScript["30"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
LinniScript["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["30"]["Name"] = [[ScrollingFrameRight]];
LinniScript["30"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
LinniScript["30"]["Size"] = UDim2.new(0.5, 0, 1, 0);
LinniScript["30"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["30"]["Position"] = UDim2.new(0.5, 0, 0, 0);
LinniScript["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["30"]["ScrollBarThickness"] = 0;
LinniScript["30"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.TabFrame.ScrollingFrameRight.UIListLayout
LinniScript["31"] = Instance.new("UIListLayout", LinniScript["30"]);
LinniScript["31"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
LinniScript["31"]["Padding"] = UDim.new(0, 10);
LinniScript["31"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- LinniHub.Template.TabFrame.ScrollingFrameRight.UIPadding
LinniScript["32"] = Instance.new("UIPadding", LinniScript["30"]);
LinniScript["32"]["PaddingTop"] = UDim.new(0, 10);
LinniScript["32"]["PaddingBottom"] = UDim.new(0, 10);


-- LinniHub.Template.TabFrame.ScrollingFrameLeft
LinniScript["33"] = Instance.new("ScrollingFrame", LinniScript["2f"]);
LinniScript["33"]["Active"] = true;
LinniScript["33"]["ZIndex"] = 0;
LinniScript["33"]["BorderSizePixel"] = 0;
LinniScript["33"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
LinniScript["33"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
LinniScript["33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["33"]["Name"] = [[ScrollingFrameLeft]];
LinniScript["33"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
LinniScript["33"]["Size"] = UDim2.new(0.5, 0, 1, 0);
LinniScript["33"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["33"]["ScrollBarThickness"] = 0;
LinniScript["33"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.TabFrame.ScrollingFrameLeft.UIListLayout
LinniScript["34"] = Instance.new("UIListLayout", LinniScript["33"]);
LinniScript["34"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
LinniScript["34"]["Padding"] = UDim.new(0, 10);
LinniScript["34"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- LinniHub.Template.TabFrame.ScrollingFrameLeft.UIPadding
LinniScript["35"] = Instance.new("UIPadding", LinniScript["33"]);
LinniScript["35"]["PaddingTop"] = UDim.new(0, 10);
LinniScript["35"]["PaddingBottom"] = UDim.new(0, 10);


-- LinniHub.Template.Section
LinniScript["36"] = Instance.new("Frame", LinniScript["29"]);
LinniScript["36"]["Visible"] = false;
LinniScript["36"]["ZIndex"] = 2;
LinniScript["36"]["BorderSizePixel"] = 0;
LinniScript["36"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["36"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["36"]["Size"] = UDim2.new(0, 145, 0, 2);
LinniScript["36"]["Position"] = UDim2.new(0.04662, 0, 0.10811, 0);
LinniScript["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["36"]["Name"] = [[Section]];
LinniScript["36"]["BackgroundTransparency"] = 0.75;


-- LinniHub.Template.Section.UICorner
LinniScript["37"] = Instance.new("UICorner", LinniScript["36"]);
LinniScript["37"]["CornerRadius"] = UDim.new(0, 5);


-- LinniHub.Template.Section.Seperator
LinniScript["38"] = Instance.new("Frame", LinniScript["36"]);
LinniScript["38"]["BorderSizePixel"] = 0;
LinniScript["38"]["BackgroundColor3"] = Color3.fromRGB(56, 56, 56);
LinniScript["38"]["Size"] = UDim2.new(1, 0, 0, 2);
LinniScript["38"]["Position"] = UDim2.new(0, 0, 0, 24);
LinniScript["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["38"]["Name"] = [[Seperator]];


-- LinniHub.Template.Section.Seperator.UIGradient
LinniScript["39"] = Instance.new("UIGradient", LinniScript["38"]);
LinniScript["39"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 180, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(58, 144, 255))};


-- LinniHub.Template.Section.Title
LinniScript["3a"] = Instance.new("TextLabel", LinniScript["36"]);
LinniScript["3a"]["TextWrapped"] = true;
LinniScript["3a"]["BorderSizePixel"] = 0;
LinniScript["3a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LinniScript["3a"]["TextScaled"] = true;
LinniScript["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["3a"]["TextSize"] = 14;
LinniScript["3a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LinniScript["3a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["3a"]["BackgroundTransparency"] = 1;
LinniScript["3a"]["Size"] = UDim2.new(0, 95, 0, 13);
LinniScript["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["3a"]["Text"] = [[Section]];
LinniScript["3a"]["Name"] = [[Title]];
LinniScript["3a"]["Position"] = UDim2.new(0, 8, 0, 7);


-- LinniHub.Template.Section.Title.UIGradient
LinniScript["3b"] = Instance.new("UIGradient", LinniScript["3a"]);
LinniScript["3b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 90, 255)),ColorSequenceKeypoint.new(0.247, Color3.fromRGB(63, 156, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 248))};


-- LinniHub.Template.Section.SectionItems
LinniScript["3c"] = Instance.new("Frame", LinniScript["36"]);
LinniScript["3c"]["BorderSizePixel"] = 0;
LinniScript["3c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["3c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["3c"]["Size"] = UDim2.new(0, 145, 0, 0);
LinniScript["3c"]["Position"] = UDim2.new(0, 0, 0, 26);
LinniScript["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["3c"]["Name"] = [[SectionItems]];
LinniScript["3c"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.Section.SectionItems.UIListLayout
LinniScript["3d"] = Instance.new("UIListLayout", LinniScript["3c"]);
LinniScript["3d"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
LinniScript["3d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- LinniHub.Template.Section.SectionItems.UIPadding
LinniScript["3e"] = Instance.new("UIPadding", LinniScript["3c"]);
LinniScript["3e"]["PaddingTop"] = UDim.new(0, 6);


-- LinniHub.Template.Section.Mark
LinniScript["3f"] = Instance.new("Frame", LinniScript["36"]);
LinniScript["3f"]["BorderSizePixel"] = 0;
LinniScript["3f"]["BackgroundColor3"] = Color3.fromRGB(246, 246, 246);
LinniScript["3f"]["Size"] = UDim2.new(1, 0, 0, 2);
LinniScript["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["3f"]["Name"] = [[Mark]];


-- LinniHub.Template.Section.Mark.UIGradient
LinniScript["40"] = Instance.new("UIGradient", LinniScript["3f"]);
LinniScript["40"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- LinniHub.Template.Section.UIPadding
LinniScript["41"] = Instance.new("UIPadding", LinniScript["36"]);
LinniScript["41"]["PaddingBottom"] = UDim.new(0, 6);


-- LinniHub.Template.DropdownButton
LinniScript["42"] = Instance.new("TextButton", LinniScript["29"]);
LinniScript["42"]["TextWrapped"] = true;
LinniScript["42"]["BorderSizePixel"] = 0;
LinniScript["42"]["TextSize"] = 14;
LinniScript["42"]["TextColor3"] = Color3.fromRGB(246, 246, 246);
LinniScript["42"]["TextScaled"] = true;
LinniScript["42"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["42"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LinniScript["42"]["Selectable"] = false;
LinniScript["42"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LinniScript["42"]["Size"] = UDim2.new(1, 0, 0.11026, 0);
LinniScript["42"]["BackgroundTransparency"] = 1;
LinniScript["42"]["Name"] = [[DropdownButton]];
LinniScript["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["42"]["Text"] = [[Test1]];
LinniScript["42"]["Visible"] = false;
LinniScript["42"]["Position"] = UDim2.new(0.5, 0, 0.05513, 0);


-- LinniHub.Template.DropdownButton.UIGradient
LinniScript["43"] = Instance.new("UIGradient", LinniScript["42"]);
LinniScript["43"]["Enabled"] = false;
LinniScript["43"]["Rotation"] = -90;
LinniScript["43"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- LinniHub.Template.Notification
LinniScript["44"] = Instance.new("Frame", LinniScript["29"]);
LinniScript["44"]["Visible"] = false;
LinniScript["44"]["BorderSizePixel"] = 0;
LinniScript["44"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
LinniScript["44"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LinniScript["44"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["44"]["Size"] = UDim2.new(0, 265, 0, 65);
LinniScript["44"]["Position"] = UDim2.new(0.8244, 0, 0.88221, 0);
LinniScript["44"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["44"]["Name"] = [[Notification]];


-- LinniHub.Template.Notification.UICorner
LinniScript["45"] = Instance.new("UICorner", LinniScript["44"]);
LinniScript["45"]["CornerRadius"] = UDim.new(0, 10);


-- LinniHub.Template.Notification.UIGradient
LinniScript["46"] = Instance.new("UIGradient", LinniScript["44"]);
LinniScript["46"]["Rotation"] = 180;
LinniScript["46"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(11, 11, 11)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(5, 185, 191)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(26, 26, 26))};


-- LinniHub.Template.Notification.LightBlue
LinniScript["47"] = Instance.new("Frame", LinniScript["44"]);
LinniScript["47"]["BorderSizePixel"] = 0;
LinniScript["47"]["AutoLocalize"] = false;
LinniScript["47"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
LinniScript["47"]["BorderMode"] = Enum.BorderMode.Inset;
LinniScript["47"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["47"]["Position"] = UDim2.new(-0.00013, 0, -0.00077, 0);
LinniScript["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["47"]["Name"] = [[LightBlue]];
LinniScript["47"]["BackgroundTransparency"] = 0.8;


-- LinniHub.Template.Notification.LightBlue.UIGradient
LinniScript["48"] = Instance.new("UIGradient", LinniScript["47"]);
LinniScript["48"]["Rotation"] = -77;
LinniScript["48"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(16, 16, 16)),ColorSequenceKeypoint.new(0.461, Color3.fromRGB(0, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(16, 16, 16))};


-- LinniHub.Template.Notification.LightBlue.UICorner
LinniScript["49"] = Instance.new("UICorner", LinniScript["47"]);
LinniScript["49"]["CornerRadius"] = UDim.new(0, 10);


-- LinniHub.Template.Notification.LightBlue.UISizeConstraint
LinniScript["4a"] = Instance.new("UISizeConstraint", LinniScript["47"]);
LinniScript["4a"]["MaxSize"] = Vector2.new(265, math.huge);


-- LinniHub.Template.Notification.Blue
LinniScript["4b"] = Instance.new("Frame", LinniScript["44"]);
LinniScript["4b"]["BorderSizePixel"] = 0;
LinniScript["4b"]["AutoLocalize"] = false;
LinniScript["4b"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
LinniScript["4b"]["BorderMode"] = Enum.BorderMode.Inset;
LinniScript["4b"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["4b"]["Position"] = UDim2.new(-0.00013, 0, -0.00077, 0);
LinniScript["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["4b"]["Name"] = [[Blue]];
LinniScript["4b"]["BackgroundTransparency"] = 0.6;


-- LinniHub.Template.Notification.Blue.UIGradient
LinniScript["4c"] = Instance.new("UIGradient", LinniScript["4b"]);
LinniScript["4c"]["Rotation"] = 93;
LinniScript["4c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(16, 16, 16)),ColorSequenceKeypoint.new(0.491, Color3.fromRGB(0, 50, 123)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(16, 16, 16))};


-- LinniHub.Template.Notification.Blue.UICorner
LinniScript["4d"] = Instance.new("UICorner", LinniScript["4b"]);
LinniScript["4d"]["CornerRadius"] = UDim.new(0, 10);


-- LinniHub.Template.Notification.Blue.UISizeConstraint
LinniScript["4e"] = Instance.new("UISizeConstraint", LinniScript["4b"]);
LinniScript["4e"]["MaxSize"] = Vector2.new(265, math.huge);


-- LinniHub.Template.Notification.Cyan
LinniScript["4f"] = Instance.new("Frame", LinniScript["44"]);
LinniScript["4f"]["BorderSizePixel"] = 0;
LinniScript["4f"]["AutoLocalize"] = false;
LinniScript["4f"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
LinniScript["4f"]["BorderMode"] = Enum.BorderMode.Inset;
LinniScript["4f"]["ClipsDescendants"] = true;
LinniScript["4f"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["4f"]["Position"] = UDim2.new(-0.00013, 0, -0.00077, 0);
LinniScript["4f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["4f"]["Name"] = [[Cyan]];
LinniScript["4f"]["BackgroundTransparency"] = 0.8;


-- LinniHub.Template.Notification.Cyan.UIGradient
LinniScript["50"] = Instance.new("UIGradient", LinniScript["4f"]);
LinniScript["50"]["Rotation"] = -98;
LinniScript["50"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(16, 16, 16)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(0, 35, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(16, 16, 16))};


-- LinniHub.Template.Notification.Cyan.UICorner
LinniScript["51"] = Instance.new("UICorner", LinniScript["4f"]);
LinniScript["51"]["CornerRadius"] = UDim.new(0, 10);


-- LinniHub.Template.Notification.Cyan.UISizeConstraint
LinniScript["52"] = Instance.new("UISizeConstraint", LinniScript["4f"]);
LinniScript["52"]["MaxSize"] = Vector2.new(265, math.huge);


-- LinniHub.Template.Notification.Items
LinniScript["53"] = Instance.new("ImageLabel", LinniScript["44"]);
LinniScript["53"]["ZIndex"] = 2;
LinniScript["53"]["BorderSizePixel"] = 0;
LinniScript["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["53"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["53"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["53"]["BackgroundTransparency"] = 1;
LinniScript["53"]["Name"] = [[Items]];


-- LinniHub.Template.Notification.Items.UIListLayout
LinniScript["54"] = Instance.new("UIListLayout", LinniScript["53"]);
LinniScript["54"]["Padding"] = UDim.new(0, 5);
LinniScript["54"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
LinniScript["54"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- LinniHub.Template.Notification.Items.UIPadding
LinniScript["55"] = Instance.new("UIPadding", LinniScript["53"]);
LinniScript["55"]["PaddingTop"] = UDim.new(0, 15);
LinniScript["55"]["PaddingLeft"] = UDim.new(0, 15);
LinniScript["55"]["PaddingBottom"] = UDim.new(0, 15);


-- LinniHub.Template.Notification.Items.Title
LinniScript["56"] = Instance.new("TextLabel", LinniScript["53"]);
LinniScript["56"]["TextWrapped"] = true;
LinniScript["56"]["BorderSizePixel"] = 0;
LinniScript["56"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LinniScript["56"]["TextScaled"] = true;
LinniScript["56"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["56"]["TextSize"] = 14;
LinniScript["56"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LinniScript["56"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["56"]["BackgroundTransparency"] = 1;
LinniScript["56"]["AnchorPoint"] = Vector2.new(0, 0.5);
LinniScript["56"]["Size"] = UDim2.new(0, 235, 0, 15);
LinniScript["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["56"]["Text"] = [[Notification]];
LinniScript["56"]["Name"] = [[Title]];
LinniScript["56"]["Position"] = UDim2.new(0, 0, 0, 9);


-- LinniHub.Template.Notification.Items.Title.UIGradient
LinniScript["57"] = Instance.new("UIGradient", LinniScript["56"]);
LinniScript["57"]["Rotation"] = -90;
LinniScript["57"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- LinniHub.Template.Notification.Items.Title.Close
LinniScript["58"] = Instance.new("ImageButton", LinniScript["56"]);
LinniScript["58"]["BorderSizePixel"] = 0;
LinniScript["58"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["58"]["AnchorPoint"] = Vector2.new(0, 0.5);
LinniScript["58"]["Image"] = [[rbxassetid://10747384394]];
LinniScript["58"]["Size"] = UDim2.new(0.09706, 0, 1.33333, 0);
LinniScript["58"]["BackgroundTransparency"] = 1;
LinniScript["58"]["Name"] = [[Close]];
LinniScript["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["58"]["Position"] = UDim2.new(0.92, 0, 0.5, 0);


-- LinniHub.Template.Notification.Items.Title.Close.UIGradient
LinniScript["59"] = Instance.new("UIGradient", LinniScript["58"]);
LinniScript["59"]["Rotation"] = -90;
LinniScript["59"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- LinniHub.Template.Notification.Items.Title.Close.UIAspectRatioConstraint
LinniScript["5a"] = Instance.new("UIAspectRatioConstraint", LinniScript["58"]);
LinniScript["5a"]["AspectRatio"] = 1.054;


-- LinniHub.Template.Notification.Items.Content
LinniScript["5b"] = Instance.new("TextLabel", LinniScript["53"]);
LinniScript["5b"]["TextWrapped"] = true;
LinniScript["5b"]["BorderSizePixel"] = 0;
LinniScript["5b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LinniScript["5b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["5b"]["TextSize"] = 12;
LinniScript["5b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LinniScript["5b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["5b"]["BackgroundTransparency"] = 1;
LinniScript["5b"]["AnchorPoint"] = Vector2.new(0, 0.5);
LinniScript["5b"]["Size"] = UDim2.new(0, 218, 0, 10);
LinniScript["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["5b"]["Text"] = [[This is a notification]];
LinniScript["5b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["5b"]["Name"] = [[Content]];
LinniScript["5b"]["Position"] = UDim2.new(0, 0, 0, 19);


-- LinniHub.Template.Notification.Items.Content.UIGradient
LinniScript["5c"] = Instance.new("UIGradient", LinniScript["5b"]);
LinniScript["5c"]["Enabled"] = false;
LinniScript["5c"]["Rotation"] = -90;
LinniScript["5c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- LinniHub.Template.Notification.Items.SubContent
LinniScript["5d"] = Instance.new("TextLabel", LinniScript["53"]);
LinniScript["5d"]["TextWrapped"] = true;
LinniScript["5d"]["BorderSizePixel"] = 0;
LinniScript["5d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LinniScript["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["5d"]["TextSize"] = 12;
LinniScript["5d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LinniScript["5d"]["TextColor3"] = Color3.fromRGB(181, 181, 181);
LinniScript["5d"]["BackgroundTransparency"] = 1;
LinniScript["5d"]["AnchorPoint"] = Vector2.new(0, 0.5);
LinniScript["5d"]["Size"] = UDim2.new(0, 218, 0, 10);
LinniScript["5d"]["Visible"] = false;
LinniScript["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["5d"]["Text"] = [[This is a notification]];
LinniScript["5d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["5d"]["Name"] = [[SubContent]];
LinniScript["5d"]["Position"] = UDim2.new(0, 0, 0, 19);


-- LinniHub.Template.Notification.Items.SubContent.UIGradient
LinniScript["5e"] = Instance.new("UIGradient", LinniScript["5d"]);
LinniScript["5e"]["Enabled"] = false;
LinniScript["5e"]["Rotation"] = -90;
LinniScript["5e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- LinniHub.Template.NotificationList
LinniScript["5f"] = Instance.new("Frame", LinniScript["29"]);
LinniScript["5f"]["Visible"] = false;
LinniScript["5f"]["BorderSizePixel"] = 0;
LinniScript["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["5f"]["Size"] = UDim2.new(0.3349, 0, 1, 0);
LinniScript["5f"]["Position"] = UDim2.new(0.665, 0, 0, 0);
LinniScript["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["5f"]["Name"] = [[NotificationList]];
LinniScript["5f"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.NotificationList.UIListLayout
LinniScript["60"] = Instance.new("UIListLayout", LinniScript["5f"]);
LinniScript["60"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
LinniScript["60"]["Padding"] = UDim.new(0, 10);
LinniScript["60"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
LinniScript["60"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- LinniHub.Template.NotificationList.UIPadding
LinniScript["61"] = Instance.new("UIPadding", LinniScript["5f"]);
LinniScript["61"]["PaddingRight"] = UDim.new(0, 30);
LinniScript["61"]["PaddingBottom"] = UDim.new(0, 30);


-- LinniHub.Template.Button
LinniScript["62"] = Instance.new("Frame", LinniScript["29"]);
LinniScript["62"]["Visible"] = false;
LinniScript["62"]["BorderSizePixel"] = 0;
LinniScript["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["62"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["62"]["Size"] = UDim2.new(0, 145, 0, 39);
LinniScript["62"]["Position"] = UDim2.new(0, 0, 0.58209, 0);
LinniScript["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["62"]["Name"] = [[Button]];
LinniScript["62"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.Button.Button
LinniScript["63"] = Instance.new("TextButton", LinniScript["62"]);
LinniScript["63"]["BorderSizePixel"] = 0;
LinniScript["63"]["AutoButtonColor"] = false;
LinniScript["63"]["TextSize"] = 14;
LinniScript["63"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["63"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
LinniScript["63"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LinniScript["63"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["63"]["Size"] = UDim2.new(0, 131, 0, 24);
LinniScript["63"]["Name"] = [[Button]];
LinniScript["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["63"]["Text"] = [[]];
LinniScript["63"]["Position"] = UDim2.new(0.00752, 0, 0.16667, 0);


-- LinniHub.Template.Button.Button.UICorner
LinniScript["64"] = Instance.new("UICorner", LinniScript["63"]);
LinniScript["64"]["CornerRadius"] = UDim.new(0, 4);


-- LinniHub.Template.Button.Button.UIStroke
LinniScript["65"] = Instance.new("UIStroke", LinniScript["63"]);
LinniScript["65"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LinniScript["65"]["Thickness"] = 1.5;
LinniScript["65"]["Color"] = Color3.fromRGB(56, 56, 56);


-- LinniHub.Template.Button.Button.UIStroke.UIGradient
LinniScript["66"] = Instance.new("UIGradient", LinniScript["65"]);
LinniScript["66"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 180, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 39, 255))};


-- LinniHub.Template.Button.Button.UIGradientOff
LinniScript["67"] = Instance.new("UIGradient", LinniScript["63"]);
LinniScript["67"]["Rotation"] = -90;
LinniScript["67"]["Name"] = [[UIGradientOff]];
LinniScript["67"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 180, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(14, 43, 140))};


-- LinniHub.Template.Button.Button.TextLabel
LinniScript["68"] = Instance.new("TextLabel", LinniScript["63"]);
LinniScript["68"]["TextWrapped"] = true;
LinniScript["68"]["LineHeight"] = 1.1;
LinniScript["68"]["BorderSizePixel"] = 0;
LinniScript["68"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["68"]["TextSize"] = 14;
LinniScript["68"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LinniScript["68"]["TextColor3"] = Color3.fromRGB(246, 246, 246);
LinniScript["68"]["BackgroundTransparency"] = 1;
LinniScript["68"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LinniScript["68"]["Size"] = UDim2.new(0, 131, 0, 13);
LinniScript["68"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["68"]["Text"] = [[Button]];
LinniScript["68"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["68"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- LinniHub.Template.Button.Button.TextLabel.UIGradient
LinniScript["69"] = Instance.new("UIGradient", LinniScript["68"]);
LinniScript["69"]["Rotation"] = -90;
LinniScript["69"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- LinniHub.Template.Button.Button.UIGradientOn
LinniScript["6a"] = Instance.new("UIGradient", LinniScript["63"]);
LinniScript["6a"]["Enabled"] = false;
LinniScript["6a"]["Name"] = [[UIGradientOn]];
LinniScript["6a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- LinniHub.Template.Button.Button.UIListLayout
LinniScript["6b"] = Instance.new("UIListLayout", LinniScript["63"]);
LinniScript["6b"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
LinniScript["6b"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
LinniScript["6b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- LinniHub.Template.Button.Button.UIPadding
LinniScript["6c"] = Instance.new("UIPadding", LinniScript["63"]);
LinniScript["6c"]["PaddingTop"] = UDim.new(0, 6);
LinniScript["6c"]["PaddingBottom"] = UDim.new(0, 6);


-- LinniHub.Template.Button.UIListLayout
LinniScript["6d"] = Instance.new("UIListLayout", LinniScript["62"]);
LinniScript["6d"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
LinniScript["6d"]["Padding"] = UDim.new(0, 10);
LinniScript["6d"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
LinniScript["6d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
LinniScript["6d"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- LinniHub.Template.Button.UIPadding
LinniScript["6e"] = Instance.new("UIPadding", LinniScript["62"]);
LinniScript["6e"]["PaddingRight"] = UDim.new(0, 6);
LinniScript["6e"]["PaddingLeft"] = UDim.new(0, 6);


-- LinniHub.Template.Dropdown
LinniScript["6f"] = Instance.new("Frame", LinniScript["29"]);
LinniScript["6f"]["Visible"] = false;
LinniScript["6f"]["BorderSizePixel"] = 0;
LinniScript["6f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["6f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["6f"]["Size"] = UDim2.new(0, 145, 0, 54);
LinniScript["6f"]["Position"] = UDim2.new(0, 0, 0.78629, 0);
LinniScript["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["6f"]["Name"] = [[Dropdown]];
LinniScript["6f"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.Dropdown.UIListLayout
LinniScript["70"] = Instance.new("UIListLayout", LinniScript["6f"]);
LinniScript["70"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
LinniScript["70"]["Padding"] = UDim.new(0, 5);
LinniScript["70"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
LinniScript["70"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- LinniHub.Template.Dropdown.UIPadding
LinniScript["71"] = Instance.new("UIPadding", LinniScript["6f"]);
LinniScript["71"]["PaddingRight"] = UDim.new(0, 6);
LinniScript["71"]["PaddingLeft"] = UDim.new(0, 8);


-- LinniHub.Template.Dropdown.UIGradient
LinniScript["72"] = Instance.new("UIGradient", LinniScript["6f"]);
LinniScript["72"]["Rotation"] = -90;
LinniScript["72"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 180, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(14, 43, 140))};


-- LinniHub.Template.Dropdown.OnChanged
LinniScript["73"] = Instance.new("BindableEvent", LinniScript["6f"]);
LinniScript["73"]["Name"] = [[OnChanged]];


-- LinniHub.Template.Dropdown.DropdownButton
LinniScript["74"] = Instance.new("Frame", LinniScript["6f"]);
LinniScript["74"]["BorderSizePixel"] = 0;
LinniScript["74"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
LinniScript["74"]["Selectable"] = true;
LinniScript["74"]["ClipsDescendants"] = true;
LinniScript["74"]["Size"] = UDim2.new(0, 130, 0, 18);
LinniScript["74"]["Position"] = UDim2.new(-0.00763, 0, 0.14595, 0);
LinniScript["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["74"]["Name"] = [[DropdownButton]];
LinniScript["74"]["SelectionGroup"] = true;


-- LinniHub.Template.Dropdown.DropdownButton.Button
LinniScript["75"] = Instance.new("TextButton", LinniScript["74"]);
LinniScript["75"]["BorderSizePixel"] = 0;
LinniScript["75"]["AutoButtonColor"] = false;
LinniScript["75"]["TextSize"] = 14;
LinniScript["75"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["75"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
LinniScript["75"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LinniScript["75"]["Size"] = UDim2.new(0, 130, 0, 18);
LinniScript["75"]["Name"] = [[Button]];
LinniScript["75"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["75"]["Text"] = [[]];


-- LinniHub.Template.Dropdown.DropdownButton.Button.UICorner
LinniScript["76"] = Instance.new("UICorner", LinniScript["75"]);
LinniScript["76"]["CornerRadius"] = UDim.new(0, 4);


-- LinniHub.Template.Dropdown.DropdownButton.Button.UIStroke
LinniScript["77"] = Instance.new("UIStroke", LinniScript["75"]);
LinniScript["77"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LinniScript["77"]["Thickness"] = 1.5;
LinniScript["77"]["Color"] = Color3.fromRGB(56, 56, 56);


-- LinniHub.Template.Dropdown.DropdownButton.Button.UIStroke.UIGradient
LinniScript["78"] = Instance.new("UIGradient", LinniScript["77"]);
LinniScript["78"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 180, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 39, 255))};


-- LinniHub.Template.Dropdown.DropdownButton.Button.TextLabel
LinniScript["79"] = Instance.new("TextLabel", LinniScript["75"]);
LinniScript["79"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
LinniScript["79"]["BorderSizePixel"] = 0;
LinniScript["79"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["79"]["TextSize"] = 14;
LinniScript["79"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LinniScript["79"]["TextColor3"] = Color3.fromRGB(246, 246, 246);
LinniScript["79"]["BackgroundTransparency"] = 1;
LinniScript["79"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LinniScript["79"]["Size"] = UDim2.new(1, 0, 0.7, 0);
LinniScript["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["79"]["Text"] = [[Test]];
LinniScript["79"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- LinniHub.Template.Dropdown.DropdownButton.Button.TextLabel.UIGradient
LinniScript["7a"] = Instance.new("UIGradient", LinniScript["79"]);
LinniScript["7a"]["Rotation"] = -90;
LinniScript["7a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- LinniHub.Template.Dropdown.DropdownButton.Button.UIGradientOff
LinniScript["7b"] = Instance.new("UIGradient", LinniScript["75"]);
LinniScript["7b"]["Rotation"] = -90;
LinniScript["7b"]["Name"] = [[UIGradientOff]];
LinniScript["7b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 180, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(14, 43, 140))};


-- LinniHub.Template.Dropdown.DropdownButton.Button.UIGradientOn
LinniScript["7c"] = Instance.new("UIGradient", LinniScript["75"]);
LinniScript["7c"]["Enabled"] = false;
LinniScript["7c"]["Name"] = [[UIGradientOn]];
LinniScript["7c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- LinniHub.Template.Dropdown.DropdownButton.UICorner
LinniScript["7d"] = Instance.new("UICorner", LinniScript["74"]);
LinniScript["7d"]["CornerRadius"] = UDim.new(0, 4);


-- LinniHub.Template.Dropdown.DropdownButton.UIStroke
LinniScript["7e"] = Instance.new("UIStroke", LinniScript["74"]);
LinniScript["7e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LinniScript["7e"]["Color"] = Color3.fromRGB(45, 45, 45);


-- LinniHub.Template.Dropdown.DropdownButton.UIStroke.UIGradient
LinniScript["7f"] = Instance.new("UIGradient", LinniScript["7e"]);
LinniScript["7f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 180, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 39, 255))};


-- LinniHub.Template.Dropdown.DropdownButton.ScrollingFrame
LinniScript["80"] = Instance.new("ScrollingFrame", LinniScript["74"]);
LinniScript["80"]["Active"] = true;
LinniScript["80"]["BorderSizePixel"] = 0;
LinniScript["80"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
LinniScript["80"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
LinniScript["80"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
LinniScript["80"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["80"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
LinniScript["80"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
LinniScript["80"]["Size"] = UDim2.new(1, 0, 0.11377, 100);
LinniScript["80"]["Position"] = UDim2.new(0, 0, 0, 48);
LinniScript["80"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["80"]["ScrollBarThickness"] = 2;
LinniScript["80"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.Dropdown.DropdownButton.ScrollingFrame.UIListLayout
LinniScript["81"] = Instance.new("UIListLayout", LinniScript["80"]);
LinniScript["81"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
LinniScript["81"]["Padding"] = UDim.new(0, 5);
LinniScript["81"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- LinniHub.Template.Dropdown.DropdownButton.SeacrhBox
LinniScript["82"] = Instance.new("Frame", LinniScript["74"]);
LinniScript["82"]["Active"] = true;
LinniScript["82"]["BorderSizePixel"] = 0;
LinniScript["82"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
LinniScript["82"]["Selectable"] = true;
LinniScript["82"]["AnchorPoint"] = Vector2.new(0.5, 0);
LinniScript["82"]["Size"] = UDim2.new(0, 117, 0, 17);
LinniScript["82"]["Position"] = UDim2.new(0.5, 0, 0, 25);
LinniScript["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["82"]["Name"] = [[SeacrhBox]];


-- LinniHub.Template.Dropdown.DropdownButton.SeacrhBox.UIStroke
LinniScript["83"] = Instance.new("UIStroke", LinniScript["82"]);
LinniScript["83"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LinniScript["83"]["Thickness"] = 1.5;
LinniScript["83"]["Color"] = Color3.fromRGB(56, 56, 56);


-- LinniHub.Template.Dropdown.DropdownButton.SeacrhBox.UIStroke.UIGradient
LinniScript["84"] = Instance.new("UIGradient", LinniScript["83"]);
LinniScript["84"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 180, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 39, 255))};


-- LinniHub.Template.Dropdown.DropdownButton.SeacrhBox.UIGradient
LinniScript["85"] = Instance.new("UIGradient", LinniScript["82"]);
LinniScript["85"]["Rotation"] = -90;
LinniScript["85"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 180, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(14, 43, 140))};


-- LinniHub.Template.Dropdown.DropdownButton.SeacrhBox.TextBox
LinniScript["86"] = Instance.new("TextBox", LinniScript["82"]);
LinniScript["86"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["86"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
LinniScript["86"]["BorderSizePixel"] = 0;
LinniScript["86"]["TextWrapped"] = true;
LinniScript["86"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
LinniScript["86"]["TextSize"] = 11;
LinniScript["86"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["86"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LinniScript["86"]["PlaceholderText"] = [[Search Here]];
LinniScript["86"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["86"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["86"]["Text"] = [[]];
LinniScript["86"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.Dropdown.DropdownButton.SeacrhBox.UICorner
LinniScript["87"] = Instance.new("UICorner", LinniScript["82"]);
LinniScript["87"]["CornerRadius"] = UDim.new(0, 4);


-- LinniHub.Template.Dropdown.DropdownButton.ScrollingFrameSearch
LinniScript["88"] = Instance.new("ScrollingFrame", LinniScript["74"]);
LinniScript["88"]["Visible"] = false;
LinniScript["88"]["Active"] = true;
LinniScript["88"]["BorderSizePixel"] = 0;
LinniScript["88"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
LinniScript["88"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
LinniScript["88"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
LinniScript["88"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["88"]["Name"] = [[ScrollingFrameSearch]];
LinniScript["88"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
LinniScript["88"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
LinniScript["88"]["Size"] = UDim2.new(1, 0, 0.11377, 100);
LinniScript["88"]["Position"] = UDim2.new(0, 0, 0, 48);
LinniScript["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["88"]["ScrollBarThickness"] = 2;
LinniScript["88"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.Dropdown.DropdownButton.ScrollingFrameSearch.UIListLayout
LinniScript["89"] = Instance.new("UIListLayout", LinniScript["88"]);
LinniScript["89"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
LinniScript["89"]["Padding"] = UDim.new(0, 5);
LinniScript["89"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- LinniHub.Template.Dropdown.DropdownButton.UIGradient
LinniScript["8a"] = Instance.new("UIGradient", LinniScript["74"]);
LinniScript["8a"]["Rotation"] = -90;
LinniScript["8a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 180, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(14, 43, 140))};


-- LinniHub.Template.Dropdown.Title
LinniScript["8b"] = Instance.new("TextLabel", LinniScript["6f"]);
LinniScript["8b"]["TextWrapped"] = true;
LinniScript["8b"]["LineHeight"] = 1.1;
LinniScript["8b"]["BorderSizePixel"] = 0;
LinniScript["8b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LinniScript["8b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["8b"]["TextSize"] = 14;
LinniScript["8b"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LinniScript["8b"]["TextColor3"] = Color3.fromRGB(246, 246, 246);
LinniScript["8b"]["BackgroundTransparency"] = 1;
LinniScript["8b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LinniScript["8b"]["Size"] = UDim2.new(0, 131, 0, 13);
LinniScript["8b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["8b"]["Text"] = [[Dropdown]];
LinniScript["8b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["8b"]["Name"] = [[Title]];
LinniScript["8b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- LinniHub.Template.Paragraph
LinniScript["8c"] = Instance.new("Frame", LinniScript["29"]);
LinniScript["8c"]["Visible"] = false;
LinniScript["8c"]["BorderSizePixel"] = 0;
LinniScript["8c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["8c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["8c"]["Size"] = UDim2.new(0, 145, 0, 42);
LinniScript["8c"]["Position"] = UDim2.new(0, 0, 0.91602, 0);
LinniScript["8c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["8c"]["Name"] = [[Paragraph]];
LinniScript["8c"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.Paragraph.UIListLayout
LinniScript["8d"] = Instance.new("UIListLayout", LinniScript["8c"]);
LinniScript["8d"]["Padding"] = UDim.new(0, 5);
LinniScript["8d"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
LinniScript["8d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
LinniScript["8d"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- LinniHub.Template.Paragraph.Paragraph
LinniScript["8e"] = Instance.new("Frame", LinniScript["8c"]);
LinniScript["8e"]["BorderSizePixel"] = 0;
LinniScript["8e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["8e"]["Selectable"] = true;
LinniScript["8e"]["ClipsDescendants"] = true;
LinniScript["8e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["8e"]["Size"] = UDim2.new(0, 130, 0, 28);
LinniScript["8e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["8e"]["Name"] = [[Paragraph]];
LinniScript["8e"]["BackgroundTransparency"] = 0.8;


-- LinniHub.Template.Paragraph.Paragraph.UICorner
LinniScript["8f"] = Instance.new("UICorner", LinniScript["8e"]);
LinniScript["8f"]["CornerRadius"] = UDim.new(0, 4);


-- LinniHub.Template.Paragraph.Paragraph.UIStroke
LinniScript["90"] = Instance.new("UIStroke", LinniScript["8e"]);
LinniScript["90"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LinniScript["90"]["Thickness"] = 1.5;
LinniScript["90"]["Color"] = Color3.fromRGB(56, 56, 56);


-- LinniHub.Template.Paragraph.Paragraph.UIStroke.UIGradient
LinniScript["91"] = Instance.new("UIGradient", LinniScript["90"]);
LinniScript["91"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 180, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 39, 255))};


-- LinniHub.Template.Paragraph.Paragraph.Title
LinniScript["92"] = Instance.new("TextLabel", LinniScript["8e"]);
LinniScript["92"]["TextWrapped"] = true;
LinniScript["92"]["BorderSizePixel"] = 0;
LinniScript["92"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LinniScript["92"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LinniScript["92"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["92"]["TextSize"] = 17;
LinniScript["92"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LinniScript["92"]["TextColor3"] = Color3.fromRGB(246, 246, 246);
LinniScript["92"]["BackgroundTransparency"] = 1;
LinniScript["92"]["RichText"] = true;
LinniScript["92"]["Size"] = UDim2.new(0, 130, 0, 15);
LinniScript["92"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["92"]["Text"] = [[Paragraph]];
LinniScript["92"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["92"]["Name"] = [[Title]];
LinniScript["92"]["Position"] = UDim2.new(0, 0, 0, 27);


-- LinniHub.Template.Paragraph.Paragraph.Title.UIPadding
LinniScript["93"] = Instance.new("UIPadding", LinniScript["92"]);
LinniScript["93"]["PaddingRight"] = UDim.new(0, 6);
LinniScript["93"]["PaddingLeft"] = UDim.new(0, 6);


-- LinniHub.Template.Paragraph.Paragraph.UIPadding
LinniScript["94"] = Instance.new("UIPadding", LinniScript["8e"]);
LinniScript["94"]["PaddingTop"] = UDim.new(0, 8);
LinniScript["94"]["PaddingRight"] = UDim.new(0, 5);
LinniScript["94"]["PaddingLeft"] = UDim.new(0, 5);
LinniScript["94"]["PaddingBottom"] = UDim.new(0, 8);


-- LinniHub.Template.Paragraph.Paragraph.UIListLayout
LinniScript["95"] = Instance.new("UIListLayout", LinniScript["8e"]);
LinniScript["95"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
LinniScript["95"]["Padding"] = UDim.new(0, 5);
LinniScript["95"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- LinniHub.Template.Paragraph.Paragraph.Content
LinniScript["96"] = Instance.new("TextLabel", LinniScript["8e"]);
LinniScript["96"]["TextWrapped"] = true;
LinniScript["96"]["BorderSizePixel"] = 0;
LinniScript["96"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LinniScript["96"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LinniScript["96"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["96"]["TextSize"] = 13;
LinniScript["96"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LinniScript["96"]["TextColor3"] = Color3.fromRGB(246, 246, 246);
LinniScript["96"]["BackgroundTransparency"] = 1;
LinniScript["96"]["RichText"] = true;
LinniScript["96"]["Size"] = UDim2.new(0, 130, 0, 15);
LinniScript["96"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["96"]["Text"] = [[Content]];
LinniScript["96"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["96"]["Name"] = [[Content]];
LinniScript["96"]["Position"] = UDim2.new(0, 0, 0, 27);


-- LinniHub.Template.Paragraph.Paragraph.Content.UIPadding
LinniScript["97"] = Instance.new("UIPadding", LinniScript["96"]);
LinniScript["97"]["PaddingRight"] = UDim.new(0, 6);
LinniScript["97"]["PaddingLeft"] = UDim.new(0, 6);


-- LinniHub.Template.Paragraph.UIPadding
LinniScript["98"] = Instance.new("UIPadding", LinniScript["8c"]);
LinniScript["98"]["PaddingRight"] = UDim.new(0, 8);
LinniScript["98"]["PaddingLeft"] = UDim.new(0, 8);


-- LinniHub.Template.Slider
LinniScript["99"] = Instance.new("Frame", LinniScript["29"]);
LinniScript["99"]["Visible"] = false;
LinniScript["99"]["BorderSizePixel"] = 0;
LinniScript["99"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["99"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["99"]["Size"] = UDim2.new(0, 145, 0, 47);
LinniScript["99"]["Position"] = UDim2.new(0, 0, 0.63063, 0);
LinniScript["99"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["99"]["Name"] = [[Slider]];
LinniScript["99"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.Slider.UIListLayout
LinniScript["9a"] = Instance.new("UIListLayout", LinniScript["99"]);
LinniScript["9a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
LinniScript["9a"]["Padding"] = UDim.new(0, 6);
LinniScript["9a"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
LinniScript["9a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- LinniHub.Template.Slider.UIPadding
LinniScript["9b"] = Instance.new("UIPadding", LinniScript["99"]);
LinniScript["9b"]["PaddingTop"] = UDim.new(0, 10);
LinniScript["9b"]["PaddingRight"] = UDim.new(0, 6);
LinniScript["9b"]["PaddingLeft"] = UDim.new(0, 8);
LinniScript["9b"]["PaddingBottom"] = UDim.new(0, 10);


-- LinniHub.Template.Slider.Frame
LinniScript["9c"] = Instance.new("Frame", LinniScript["99"]);
LinniScript["9c"]["BorderSizePixel"] = 0;
LinniScript["9c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["9c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["9c"]["Size"] = UDim2.new(0, 125, 0, 13);
LinniScript["9c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["9c"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.Slider.Frame.UIListLayout
LinniScript["9d"] = Instance.new("UIListLayout", LinniScript["9c"]);
LinniScript["9d"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
LinniScript["9d"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
LinniScript["9d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
LinniScript["9d"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- LinniHub.Template.Slider.Frame.Title
LinniScript["9e"] = Instance.new("TextLabel", LinniScript["9c"]);
LinniScript["9e"]["TextWrapped"] = true;
LinniScript["9e"]["BorderSizePixel"] = 0;
LinniScript["9e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LinniScript["9e"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LinniScript["9e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["9e"]["TextSize"] = 13;
LinniScript["9e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LinniScript["9e"]["TextColor3"] = Color3.fromRGB(246, 246, 246);
LinniScript["9e"]["BackgroundTransparency"] = 1;
LinniScript["9e"]["RichText"] = true;
LinniScript["9e"]["Size"] = UDim2.new(0.75, 0, 0, 13);
LinniScript["9e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["9e"]["Text"] = [[Slider]];
LinniScript["9e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["9e"]["Name"] = [[Title]];
LinniScript["9e"]["Position"] = UDim2.new(0, 0, 0, 27);


-- LinniHub.Template.Slider.Frame.ValueText
LinniScript["9f"] = Instance.new("TextBox", LinniScript["9c"]);
LinniScript["9f"]["Active"] = false;
LinniScript["9f"]["TextColor3"] = Color3.fromRGB(246, 246, 246);
LinniScript["9f"]["BorderSizePixel"] = 0;
LinniScript["9f"]["TextXAlignment"] = Enum.TextXAlignment.Right;
LinniScript["9f"]["TextWrapped"] = true;
LinniScript["9f"]["TextSize"] = 14;
LinniScript["9f"]["Name"] = [[ValueText]];
LinniScript["9f"]["TextScaled"] = true;
LinniScript["9f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["9f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LinniScript["9f"]["Selectable"] = false;
LinniScript["9f"]["AnchorPoint"] = Vector2.new(0, 0.5);
LinniScript["9f"]["Size"] = UDim2.new(0.25, -1, 0, 13);
LinniScript["9f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
LinniScript["9f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["9f"]["Text"] = [[0]];
LinniScript["9f"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.Slider.Frame.ValueText.UIGradient
LinniScript["a0"] = Instance.new("UIGradient", LinniScript["9f"]);
LinniScript["a0"]["Enabled"] = false;
LinniScript["a0"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 90, 255)),ColorSequenceKeypoint.new(0.247, Color3.fromRGB(63, 156, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 248))};


-- LinniHub.Template.Slider.Trigger
LinniScript["a1"] = Instance.new("TextButton", LinniScript["99"]);
LinniScript["a1"]["BorderSizePixel"] = 0;
LinniScript["a1"]["AutoButtonColor"] = false;
LinniScript["a1"]["TextSize"] = 14;
LinniScript["a1"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["a1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["a1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LinniScript["a1"]["Size"] = UDim2.new(0, 120, 0, 10);
LinniScript["a1"]["BackgroundTransparency"] = 1;
LinniScript["a1"]["Name"] = [[Trigger]];
LinniScript["a1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["a1"]["Text"] = [[]];
LinniScript["a1"]["Position"] = UDim2.new(0.00763, 0, 0.59239, 0);


-- LinniHub.Template.Slider.Trigger.Fill
LinniScript["a2"] = Instance.new("TextButton", LinniScript["a1"]);
LinniScript["a2"]["Active"] = false;
LinniScript["a2"]["Interactable"] = false;
LinniScript["a2"]["BorderSizePixel"] = 0;
LinniScript["a2"]["AutoButtonColor"] = false;
LinniScript["a2"]["TextSize"] = 14;
LinniScript["a2"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["a2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["a2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LinniScript["a2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LinniScript["a2"]["Size"] = UDim2.new(0, 120, 0, 4);
LinniScript["a2"]["Name"] = [[Fill]];
LinniScript["a2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["a2"]["Text"] = [[]];
LinniScript["a2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- LinniHub.Template.Slider.Trigger.Fill.UIGradient
LinniScript["a3"] = Instance.new("UIGradient", LinniScript["a2"]);
LinniScript["a3"]["Rotation"] = 180;
LinniScript["a3"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 180, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(14, 43, 140))};


-- LinniHub.Template.Slider.Trigger.Fill.UICorner
LinniScript["a4"] = Instance.new("UICorner", LinniScript["a2"]);
LinniScript["a4"]["CornerRadius"] = UDim.new(10, 10);


-- LinniHub.Template.Slider.Trigger.Fill.Circle
LinniScript["a5"] = Instance.new("Frame", LinniScript["a2"]);
LinniScript["a5"]["BorderSizePixel"] = 0;
LinniScript["a5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["a5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LinniScript["a5"]["Size"] = UDim2.new(0, 10, 0, 10);
LinniScript["a5"]["Position"] = UDim2.new(0, 0, 0.5, 0);
LinniScript["a5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["a5"]["Name"] = [[Circle]];


-- LinniHub.Template.Slider.Trigger.Fill.Circle.UICorner
LinniScript["a6"] = Instance.new("UICorner", LinniScript["a5"]);
LinniScript["a6"]["CornerRadius"] = UDim.new(10, 10);


-- LinniHub.Template.Slider.OnChanged
LinniScript["a7"] = Instance.new("BindableEvent", LinniScript["99"]);
LinniScript["a7"]["Name"] = [[OnChanged]];


-- LinniHub.Template.Textbox
LinniScript["a8"] = Instance.new("Frame", LinniScript["29"]);
LinniScript["a8"]["Visible"] = false;
LinniScript["a8"]["BorderSizePixel"] = 0;
LinniScript["a8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["a8"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["a8"]["Size"] = UDim2.new(0, 145, 0, 35);
LinniScript["a8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["a8"]["Name"] = [[Textbox]];
LinniScript["a8"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.Textbox.UIListLayout
LinniScript["a9"] = Instance.new("UIListLayout", LinniScript["a8"]);
LinniScript["a9"]["Padding"] = UDim.new(0, 5);
LinniScript["a9"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
LinniScript["a9"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
LinniScript["a9"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- LinniHub.Template.Textbox.UIPadding
LinniScript["aa"] = Instance.new("UIPadding", LinniScript["a8"]);
LinniScript["aa"]["PaddingTop"] = UDim.new(0, 8);
LinniScript["aa"]["PaddingRight"] = UDim.new(0, 8);
LinniScript["aa"]["PaddingLeft"] = UDim.new(0, 8);
LinniScript["aa"]["PaddingBottom"] = UDim.new(0, 8);


-- LinniHub.Template.Textbox.OnChanged
LinniScript["ab"] = Instance.new("BindableEvent", LinniScript["a8"]);
LinniScript["ab"]["Name"] = [[OnChanged]];


-- LinniHub.Template.Textbox.Title
LinniScript["ac"] = Instance.new("TextLabel", LinniScript["a8"]);
LinniScript["ac"]["TextWrapped"] = true;
LinniScript["ac"]["BorderSizePixel"] = 0;
LinniScript["ac"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LinniScript["ac"]["TextTransparency"] = 0.7;
LinniScript["ac"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["ac"]["TextSize"] = 13;
LinniScript["ac"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LinniScript["ac"]["TextColor3"] = Color3.fromRGB(246, 246, 246);
LinniScript["ac"]["BackgroundTransparency"] = 1;
LinniScript["ac"]["Size"] = UDim2.new(0, 72, 0, 23);
LinniScript["ac"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["ac"]["Text"] = [[Textbox]];
LinniScript["ac"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["ac"]["Name"] = [[Title]];


-- LinniHub.Template.Textbox.Box
LinniScript["ad"] = Instance.new("TextButton", LinniScript["a8"]);
LinniScript["ad"]["TextWrapped"] = true;
LinniScript["ad"]["BorderSizePixel"] = 0;
LinniScript["ad"]["AutoButtonColor"] = false;
LinniScript["ad"]["TextSize"] = 14;
LinniScript["ad"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["ad"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
LinniScript["ad"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LinniScript["ad"]["Size"] = UDim2.new(0, 49, 0, 22);
LinniScript["ad"]["Name"] = [[Box]];
LinniScript["ad"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["ad"]["Text"] = [[]];
LinniScript["ad"]["Position"] = UDim2.new(0.5969, 0, 0.02174, 0);


-- LinniHub.Template.Textbox.Box.UICorner
LinniScript["ae"] = Instance.new("UICorner", LinniScript["ad"]);
LinniScript["ae"]["CornerRadius"] = UDim.new(0, 4);


-- LinniHub.Template.Textbox.Box.UIStroke
LinniScript["af"] = Instance.new("UIStroke", LinniScript["ad"]);
LinniScript["af"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LinniScript["af"]["Thickness"] = 1.5;
LinniScript["af"]["Color"] = Color3.fromRGB(56, 56, 56);


-- LinniHub.Template.Textbox.Box.UIStroke.UIGradient
LinniScript["b0"] = Instance.new("UIGradient", LinniScript["af"]);
LinniScript["b0"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 180, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 39, 255))};


-- LinniHub.Template.Textbox.Box.UIGradient
LinniScript["b1"] = Instance.new("UIGradient", LinniScript["ad"]);
LinniScript["b1"]["Rotation"] = -90;
LinniScript["b1"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 180, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(14, 43, 140))};


-- LinniHub.Template.Textbox.Box.Textbox
LinniScript["b2"] = Instance.new("TextBox", LinniScript["ad"]);
LinniScript["b2"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
LinniScript["b2"]["PlaceholderColor3"] = Color3.fromRGB(96, 96, 96);
LinniScript["b2"]["BorderSizePixel"] = 0;
LinniScript["b2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LinniScript["b2"]["TextWrapped"] = true;
LinniScript["b2"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
LinniScript["b2"]["TextSize"] = 12;
LinniScript["b2"]["Name"] = [[Textbox]];
LinniScript["b2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["b2"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LinniScript["b2"]["Selectable"] = false;
LinniScript["b2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LinniScript["b2"]["ClearTextOnFocus"] = false;
LinniScript["b2"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["b2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
LinniScript["b2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["b2"]["Text"] = [[]];
LinniScript["b2"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.Textbox.Box.Textbox.UIGradient
LinniScript["b3"] = Instance.new("UIGradient", LinniScript["b2"]);
LinniScript["b3"]["Enabled"] = false;
LinniScript["b3"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 90, 255)),ColorSequenceKeypoint.new(0.247, Color3.fromRGB(63, 156, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 248))};


-- LinniHub.Template.Textbox.Box.Textbox.UIPadding
LinniScript["b4"] = Instance.new("UIPadding", LinniScript["b2"]);
LinniScript["b4"]["PaddingTop"] = UDim.new(0, 5);
LinniScript["b4"]["PaddingLeft"] = UDim.new(0, 5);
LinniScript["b4"]["PaddingBottom"] = UDim.new(0, 5);


-- LinniHub.Template.Toggle
LinniScript["b5"] = Instance.new("Frame", LinniScript["29"]);
LinniScript["b5"]["Visible"] = false;
LinniScript["b5"]["BorderSizePixel"] = 0;
LinniScript["b5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["b5"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["b5"]["Size"] = UDim2.new(0, 145, 0, 35);
LinniScript["b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["b5"]["Name"] = [[Toggle]];
LinniScript["b5"]["BackgroundTransparency"] = 1;


-- LinniHub.Template.Toggle.UIListLayout
LinniScript["b6"] = Instance.new("UIListLayout", LinniScript["b5"]);
LinniScript["b6"]["Padding"] = UDim.new(0, 5);
LinniScript["b6"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
LinniScript["b6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
LinniScript["b6"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- LinniHub.Template.Toggle.UIPadding
LinniScript["b7"] = Instance.new("UIPadding", LinniScript["b5"]);
LinniScript["b7"]["PaddingTop"] = UDim.new(0, 5);
LinniScript["b7"]["PaddingRight"] = UDim.new(0, 9);
LinniScript["b7"]["PaddingLeft"] = UDim.new(0, 9);
LinniScript["b7"]["PaddingBottom"] = UDim.new(0, 5);


-- LinniHub.Template.Toggle.State
LinniScript["b8"] = Instance.new("BoolValue", LinniScript["b5"]);
LinniScript["b8"]["Name"] = [[State]];
LinniScript["b8"]["Value"] = true;


-- LinniHub.Template.Toggle.OnChanged
LinniScript["b9"] = Instance.new("BindableEvent", LinniScript["b5"]);
LinniScript["b9"]["Name"] = [[OnChanged]];


-- LinniHub.Template.Toggle.Title
LinniScript["ba"] = Instance.new("TextLabel", LinniScript["b5"]);
LinniScript["ba"]["TextWrapped"] = true;
LinniScript["ba"]["BorderSizePixel"] = 0;
LinniScript["ba"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LinniScript["ba"]["TextTransparency"] = 0.7;
LinniScript["ba"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LinniScript["ba"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["ba"]["TextSize"] = 13;
LinniScript["ba"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
LinniScript["ba"]["TextColor3"] = Color3.fromRGB(246, 246, 246);
LinniScript["ba"]["BackgroundTransparency"] = 1;
LinniScript["ba"]["Size"] = UDim2.new(0, 98, 0, 13);
LinniScript["ba"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["ba"]["Text"] = [[Toggle]];
LinniScript["ba"]["AutomaticSize"] = Enum.AutomaticSize.Y;
LinniScript["ba"]["Name"] = [[Title]];
LinniScript["ba"]["Position"] = UDim2.new(0, 0, 0, 27);


-- LinniHub.Template.Toggle.Toggle
LinniScript["bb"] = Instance.new("TextButton", LinniScript["b5"]);
LinniScript["bb"]["BorderSizePixel"] = 0;
LinniScript["bb"]["AutoButtonColor"] = false;
LinniScript["bb"]["TextSize"] = 14;
LinniScript["bb"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["bb"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
LinniScript["bb"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LinniScript["bb"]["Size"] = UDim2.new(0, 22, 0, 22);
LinniScript["bb"]["Name"] = [[Toggle]];
LinniScript["bb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["bb"]["Text"] = [[]];
LinniScript["bb"]["Position"] = UDim2.new(0.05517, 0, 0.13333, 0);


-- LinniHub.Template.Toggle.Toggle.UICorner
LinniScript["bc"] = Instance.new("UICorner", LinniScript["bb"]);
LinniScript["bc"]["CornerRadius"] = UDim.new(0, 4);


-- LinniHub.Template.Toggle.Toggle.UIStroke
LinniScript["bd"] = Instance.new("UIStroke", LinniScript["bb"]);
LinniScript["bd"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
LinniScript["bd"]["Thickness"] = 1.5;
LinniScript["bd"]["Color"] = Color3.fromRGB(56, 56, 56);


-- LinniHub.Template.Toggle.Toggle.UIStroke.UIGradient
LinniScript["be"] = Instance.new("UIGradient", LinniScript["bd"]);
LinniScript["be"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 180, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 39, 255))};


-- LinniHub.Template.Toggle.Toggle.UIGradient
LinniScript["bf"] = Instance.new("UIGradient", LinniScript["bb"]);
LinniScript["bf"]["Rotation"] = -90;
LinniScript["bf"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 180, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(14, 43, 140))};


-- LinniHub.Floating
LinniScript["c0"] = Instance.new("Frame", LinniScript["1"]);
LinniScript["c0"]["BorderSizePixel"] = 0;
LinniScript["c0"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
LinniScript["c0"]["Size"] = UDim2.new(0, 158, 0, 42);
LinniScript["c0"]["Position"] = UDim2.new(0.02, 0, 0.1, 0);
LinniScript["c0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["c0"]["Name"] = [[Floating]];


-- LinniHub.Floating.UICorner
LinniScript["c1"] = Instance.new("UICorner", LinniScript["c0"]);
LinniScript["c1"]["CornerRadius"] = UDim.new(0, 10);


-- LinniHub.Floating.LightBlue
LinniScript["c2"] = Instance.new("Frame", LinniScript["c0"]);
LinniScript["c2"]["BorderSizePixel"] = 0;
LinniScript["c2"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
LinniScript["c2"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["c2"]["Position"] = UDim2.new(-0.00013, 0, -0.00077, 0);
LinniScript["c2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["c2"]["Name"] = [[LightBlue]];
LinniScript["c2"]["BackgroundTransparency"] = 0.8;


-- LinniHub.Floating.LightBlue.UIGradient
LinniScript["c3"] = Instance.new("UIGradient", LinniScript["c2"]);
LinniScript["c3"]["Rotation"] = 50;
LinniScript["c3"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(16, 16, 16)),ColorSequenceKeypoint.new(0.461, Color3.fromRGB(0, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(16, 16, 16))};


-- LinniHub.Floating.LightBlue.UICorner
LinniScript["c4"] = Instance.new("UICorner", LinniScript["c2"]);
LinniScript["c4"]["CornerRadius"] = UDim.new(0, 10);


-- LinniHub.Floating.Blue
LinniScript["c5"] = Instance.new("Frame", LinniScript["c0"]);
LinniScript["c5"]["BorderSizePixel"] = 0;
LinniScript["c5"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
LinniScript["c5"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["c5"]["Position"] = UDim2.new(-0.00013, 0, -0.00077, 0);
LinniScript["c5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["c5"]["Name"] = [[Blue]];
LinniScript["c5"]["BackgroundTransparency"] = 0.6;


-- LinniHub.Floating.Blue.UIGradient
LinniScript["c6"] = Instance.new("UIGradient", LinniScript["c5"]);
LinniScript["c6"]["Rotation"] = -72;
LinniScript["c6"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(16, 16, 16)),ColorSequenceKeypoint.new(0.491, Color3.fromRGB(0, 50, 123)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(16, 16, 16))};


-- LinniHub.Floating.Blue.UICorner
LinniScript["c7"] = Instance.new("UICorner", LinniScript["c5"]);
LinniScript["c7"]["CornerRadius"] = UDim.new(0, 10);


-- LinniHub.Floating.Cyan
LinniScript["c8"] = Instance.new("CanvasGroup", LinniScript["c0"]);
LinniScript["c8"]["BorderSizePixel"] = 0;
LinniScript["c8"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
LinniScript["c8"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["c8"]["Position"] = UDim2.new(-0.00013, 0, -0.00077, 0);
LinniScript["c8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["c8"]["Name"] = [[Cyan]];
LinniScript["c8"]["BackgroundTransparency"] = 0.8;


-- LinniHub.Floating.Cyan.UIGradient
LinniScript["c9"] = Instance.new("UIGradient", LinniScript["c8"]);
LinniScript["c9"]["Rotation"] = -26;
LinniScript["c9"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(16, 16, 16)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(0, 35, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(16, 16, 16))};


-- LinniHub.Floating.Cyan.UICorner
LinniScript["ca"] = Instance.new("UICorner", LinniScript["c8"]);
LinniScript["ca"]["CornerRadius"] = UDim.new(0, 10);


-- LinniHub.Floating.Cyan.AbstractBg
LinniScript["cb"] = Instance.new("ImageLabel", LinniScript["c8"]);
LinniScript["cb"]["BorderSizePixel"] = 0;
LinniScript["cb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["cb"]["ImageColor3"] = Color3.fromRGB(0, 183, 22);
LinniScript["cb"]["Image"] = [[rbxassetid://88984077541230]];
LinniScript["cb"]["Size"] = UDim2.new(0, 549, 0, 364);
LinniScript["cb"]["Visible"] = false;
LinniScript["cb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["cb"]["BackgroundTransparency"] = 1;
LinniScript["cb"]["Rotation"] = 40;
LinniScript["cb"]["Name"] = [[AbstractBg]];
LinniScript["cb"]["Position"] = UDim2.new(0.41197, 0, 0.48528, 0);


-- LinniHub.Floating.DropShadowHolder
LinniScript["cc"] = Instance.new("Frame", LinniScript["c0"]);
LinniScript["cc"]["ZIndex"] = 0;
LinniScript["cc"]["BorderSizePixel"] = 0;
LinniScript["cc"]["Size"] = UDim2.new(1, 0, 1, 0);
LinniScript["cc"]["Name"] = [[DropShadowHolder]];
LinniScript["cc"]["BackgroundTransparency"] = 1;


-- LinniHub.Floating.DropShadowHolder.DropShadow
LinniScript["cd"] = Instance.new("ImageLabel", LinniScript["cc"]);
LinniScript["cd"]["ZIndex"] = 0;
LinniScript["cd"]["BorderSizePixel"] = 0;
LinniScript["cd"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
LinniScript["cd"]["ScaleType"] = Enum.ScaleType.Slice;
LinniScript["cd"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["cd"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LinniScript["cd"]["Image"] = [[rbxassetid://6014261993]]; -- Lunor Diganti disini
LinniScript["cd"]["Size"] = UDim2.new(1, 35, 1, 35);
LinniScript["cd"]["BackgroundTransparency"] = 1;
LinniScript["cd"]["Name"] = [[DropShadow]];
LinniScript["cd"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- LinniHub.Floating.Folder
LinniScript["ce"] = Instance.new("Folder", LinniScript["c0"]);



-- LinniHub.Floating.Folder.Logo
LinniScript["cf"] = Instance.new("ImageLabel", LinniScript["ce"]);
LinniScript["cf"]["BorderSizePixel"] = 0;
LinniScript["cf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["cf"]["Image"] = [[rbxassetid://120727887371733]];
LinniScript["cf"]["Size"] = UDim2.new(0, 24, 0, 25);
LinniScript["cf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["cf"]["BackgroundTransparency"] = 1;
LinniScript["cf"]["Name"] = [[Logo]];
LinniScript["cf"]["Position"] = UDim2.new(0, 8, 0, 8);


-- LinniHub.Floating.Folder.Logo.UIAspectRatioConstraint
LinniScript["d0"] = Instance.new("UIAspectRatioConstraint", LinniScript["cf"]);



-- LinniHub.Floating.Folder.Logo.UICorner
LinniScript["d1"] = Instance.new("UICorner", LinniScript["cf"]);



-- LinniHub.Floating.Folder.Frame
LinniScript["d2"] = Instance.new("Frame", LinniScript["ce"]);
LinniScript["d2"]["BorderSizePixel"] = 0;
LinniScript["d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["d2"]["AnchorPoint"] = Vector2.new(0, 0.5);
LinniScript["d2"]["Size"] = UDim2.new(0, 2, 0, 27);
LinniScript["d2"]["Position"] = UDim2.new(0, 40, 0.5, 0);
LinniScript["d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- LinniHub.Floating.Folder.Frame.UIGradient
LinniScript["d3"] = Instance.new("UIGradient", LinniScript["d2"]);
LinniScript["d3"]["Rotation"] = -90;
LinniScript["d3"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- LinniHub.Floating.Folder.Frame.UICorner
LinniScript["d4"] = Instance.new("UICorner", LinniScript["d2"]);
LinniScript["d4"]["CornerRadius"] = UDim.new(100, 100);


local Library = {}

function Library:CreateWindow(config)
    local window = {}
    
    -- Title dari config
    local customTitle = config.Title or "Default Title"

    -- Contoh elemen GUI
    local LinniScript = {}

    -- Create BackgroundFrame.Side.DraggablePart.Title
    LinniScript["20"] = Instance.new("TextLabel")
    LinniScript["20"].Name = "Title"
    LinniScript["20"].TextWrapped = true
    LinniScript["20"].BorderSizePixel = 0
    LinniScript["20"].TextXAlignment = Enum.TextXAlignment.Left
    LinniScript["20"].TextScaled = true
    LinniScript["20"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LinniScript["20"].TextSize = 14
    LinniScript["20"].FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    LinniScript["20"].TextColor3 = Color3.fromRGB(255, 255, 255)
    LinniScript["20"].BackgroundTransparency = 1
    LinniScript["20"].AnchorPoint = Vector2.new(0, 0.5)
    LinniScript["20"].Size = UDim2.new(0, 80, 0, 17)
    LinniScript["20"].Position = UDim2.new(0, 55, 0, 29)
    LinniScript["20"].BorderColor3 = Color3.fromRGB(0, 0, 0)
    LinniScript["20"].Text = customTitle -- GANTI DARI CONFIG

    -- Create Floating.Folder.Title
    LinniScript["d5"] = Instance.new("TextLabel")
    LinniScript["d5"].Name = "Title"
    LinniScript["d5"].TextWrapped = true
    LinniScript["d5"].BorderSizePixel = 0
    LinniScript["d5"].TextXAlignment = Enum.TextXAlignment.Left
    LinniScript["d5"].TextScaled = true
    LinniScript["d5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LinniScript["d5"].TextSize = 14
    LinniScript["d5"].FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    LinniScript["d5"].TextColor3 = Color3.fromRGB(255, 255, 255)
    LinniScript["d5"].BackgroundTransparency = 1
    LinniScript["d5"].AnchorPoint = Vector2.new(0, 0.5)
    LinniScript["d5"].Size = UDim2.new(0, 70, 0, 15)
    LinniScript["d5"].Position = UDim2.new(0, 53, 0, 21)
    LinniScript["d5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
    LinniScript["d5"].Text = customTitle -- GANTI DARI CONFIG

    -- Kembalikan objek window jika perlu
    return window
end

return Library



-- LinniHub.Floating.Folder.Title.UIGradient
LinniScript["d6"] = Instance.new("UIGradient", LinniScript["d5"]);
LinniScript["d6"]["Rotation"] = -90;
LinniScript["d6"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- LinniHub.Floating.Folder.Status
LinniScript["d7"] = Instance.new("ImageButton", LinniScript["ce"]);
LinniScript["d7"]["Active"] = false;
LinniScript["d7"]["BorderSizePixel"] = 0;
LinniScript["d7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["d7"]["Selectable"] = false;
LinniScript["d7"]["AnchorPoint"] = Vector2.new(0, 0.5);
LinniScript["d7"]["Image"] = [[rbxassetid://10734895698]];
LinniScript["d7"]["Size"] = UDim2.new(0, 19, 0, 20);
LinniScript["d7"]["BackgroundTransparency"] = 1;
LinniScript["d7"]["Name"] = [[Status]];
LinniScript["d7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["d7"]["Position"] = UDim2.new(0, 128, 0.5, 0);


-- LinniHub.Floating.Folder.Status.UIAspectRatioConstraint
LinniScript["d8"] = Instance.new("UIAspectRatioConstraint", LinniScript["d7"]);



-- LinniHub.Floating.Folder.Status.UICorner
LinniScript["d9"] = Instance.new("UICorner", LinniScript["d7"]);



-- LinniHub.Floating.Folder.Status.UIGradient
LinniScript["da"] = Instance.new("UIGradient", LinniScript["d7"]);
LinniScript["da"]["Rotation"] = -90;
LinniScript["da"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- LinniHub.Floating.Folder.DraggablePart
LinniScript["db"] = Instance.new("Frame", LinniScript["ce"]);
LinniScript["db"]["BorderSizePixel"] = 0;
LinniScript["db"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LinniScript["db"]["Size"] = UDim2.new(0, 40, 0, 42);
LinniScript["db"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LinniScript["db"]["Name"] = [[DraggablePart]];
LinniScript["db"]["BackgroundTransparency"] = 1;


-- Require LinniScript wrapper
local LinniScript_REQUIRE = require;
local LinniScript_MODULES = {};
local function require(Module:ModuleScript)
	local ModuleState = LinniScript_MODULES[Module];
	if ModuleState then
		if not ModuleState.Required then
			ModuleState.Required = true;
			ModuleState.Value = ModuleState.Closure();
		end
		return ModuleState.Value;
	end;
	return LinniScript_REQUIRE(Module);
end

LinniScript_MODULES[LinniScript["27"]] = {
	Closure = function()
		local script = LinniScript["27"];local LIB = {}
		local TABLIST = {}

		LIB.Options = {}

		local UserInputService = game:GetService("UserInputService")

		local TweenTime = 0.5
		local TweenStyle = Enum.EasingStyle.Quart
		local TweenDirection = Enum.EasingDirection.Out
		local function Tween(obj, Prop)
			local TweenService = game:GetService("TweenService")
			local Tween = TweenService:Create(
				obj,
				TweenInfo.new(
					TweenTime,
					TweenStyle,
					TweenDirection
				),
				Prop
			)
			Tween:Play()
			return Tween
		end

		local function TweenCustom(obj, Tweeninfo , Prop)
			local TweenService = game:GetService("TweenService")
			local Tween = TweenService:Create(
				obj,
				Tweeninfo,
				Prop
			)
			Tween:Play()
			return Tween
		end


		local MAKEDRAGGABLE = function(topbarobject, object)
			local tsv = game:GetService("TweenService")
			--local topbarobject = MainFrame.TopFrame
			--local object = MainFrame
			local Dragging = nil
			local DragInput = nil
			local DragStart = nil
			local StartPosition = nil

			local function Update(input)
				local Delta = input.Position - DragStart
				local pos =
					UDim2.new(
						StartPosition.X.Scale,
						StartPosition.X.Offset + Delta.X,
						StartPosition.Y.Scale,
						StartPosition.Y.Offset + Delta.Y
					)
				tsv:Create(object, TweenInfo.new(0.2,Enum.EasingStyle.Quart), {Position = pos}):Play()
				--object.Position = pos
			end

			topbarobject.InputBegan:Connect(
				function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						Dragging = true
						--workspace.Camera.CameraType = Enum.CameraType.Scriptable
						DragStart = input.Position
						StartPosition = object.Position

						input.Changed:Connect(
							function()
								if input.UserInputState == Enum.UserInputState.End then
									--workspace.Camera.CameraType = Enum.CameraType.Custom
									Dragging = false
								end
							end
						)
					end
				end
			)

			topbarobject.InputChanged:Connect(
				function(input)
					if
						input.UserInputType == Enum.UserInputType.MouseMovement or
						input.UserInputType == Enum.UserInputType.Touch
					then
						DragInput = input
					end
				end
			)

			game:GetService("UserInputService").InputChanged:Connect(
				function(input)
					if input == DragInput and Dragging then
						Update(input)
					end
				end
			)
		end



		local function OddOrEven(number)
			if number % 2 == 0 then
				return "Even"
			else
				return "Odd"
			end
		end
		local function Odd(number) -- Ganjil
			if number % 2 ~= 0 then
				return true
			else
				return false
			end
		end
		local function Even(number) -- Genap
			if number % 2 == 0 then
				return true
			else
				return false
			end
		end

		local GUI = script.Parent
		GUI.Enabled = false
		GUI.Parent = nil

		LIB.Version = "Custom"

		-- Notification GUI --
		local NotifyGui = Instance.new("ScreenGui")
		NotifyGui.Name = "Notification"
		if game:GetService("RunService"):IsStudio() then
			NotifyGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
		else
			NotifyGui.Parent = game:GetService("CoreGui")
		end
		NotifyGui.Enabled = true
		NotifyGui.IgnoreGuiInset = true

		local NotificationList = GUI.Template.NotificationList
		NotificationList.Parent = NotifyGui
		NotificationList.Visible = true
		-- ---------------- --

		local OriginalNotification = GUI.Template.Notification

		function LIB:Notify(tbl)
			local Title = tbl.Title or "Untitled"
			local Content = tbl.Content or "No content."
			local SubContent = tbl.SubContent
			local Duration = tbl.Duration

			local OriginalTransparencies = {}

			local newNotification = OriginalNotification:Clone()
			newNotification.Name = Title
			newNotification.Parent = NotificationList

			newNotification.Items.Title.Text = Title
			newNotification.Items.Content.Text = Content

			if SubContent then
				newNotification.Items.SubContent.Visible = true
				newNotification.Items.SubContent.Text = SubContent
			end

			for _,v in pairs(newNotification:GetChildren()) do
				if v:IsA("Frame") then
					OriginalTransparencies[v.Name] = v.BackgroundTransparency
					v.BackgroundTransparency = 1
				end
			end
			newNotification.BackgroundTransparency = 1
			newNotification.Items.Title.Close.ImageTransparency = 1
			newNotification.Items.Title.TextTransparency = 1
			newNotification.Items.Content.TextTransparency = 1
			newNotification.Items.SubContent.TextTransparency = 1

			newNotification.Visible = true

			task.spawn(function()
				for _,v in pairs(newNotification:GetChildren()) do
					if v:IsA("Frame") then
						TweenCustom(v, TweenInfo.new(0.25, TweenStyle, TweenDirection), {BackgroundTransparency = OriginalTransparencies[v.Name]})
					end
				end

				TweenCustom(newNotification, TweenInfo.new(0.25, TweenStyle, TweenDirection), {BackgroundTransparency = 0})
				TweenCustom(newNotification.Items.Title.Close, TweenInfo.new(0.25, TweenStyle, TweenDirection), {ImageTransparency = 0})
				TweenCustom(newNotification.Items.Title, TweenInfo.new(0.25, TweenStyle, TweenDirection), {TextTransparency = 0})
				TweenCustom(newNotification.Items.Content, TweenInfo.new(0.25, TweenStyle, TweenDirection), {TextTransparency = 0})
				TweenCustom(newNotification.Items.SubContent, TweenInfo.new(0.25, TweenStyle, TweenDirection), {TextTransparency = 0})


			end)
			local closingtask = task.spawn(function()
				if Duration then
					task.wait(Duration)

					for _,v in pairs(newNotification:GetChildren()) do
						if v:IsA("Frame") then
							TweenCustom(v, TweenInfo.new(0.25, TweenStyle, TweenDirection), {BackgroundTransparency = 1})
						end
					end

					TweenCustom(newNotification, TweenInfo.new(0.25, TweenStyle, TweenDirection), {BackgroundTransparency = 1})
					TweenCustom(newNotification.Items.Title.Close, TweenInfo.new(0.25, TweenStyle, TweenDirection), {ImageTransparency = 1})
					TweenCustom(newNotification.Items.Title, TweenInfo.new(0.25, TweenStyle, TweenDirection), {TextTransparency = 1})
					TweenCustom(newNotification.Items.Content, TweenInfo.new(0.25, TweenStyle, TweenDirection), {TextTransparency = 1})

					local lasttween = TweenCustom(newNotification.Items.SubContent, TweenInfo.new(0.25, TweenStyle, TweenDirection), {TextTransparency = 1})
					if lasttween then
						lasttween.Completed:Wait()
					end

					OriginalTransparencies = nil
					newNotification:Destroy()
				end
			end)

			newNotification.Items.Title.Close.MouseButton1Click:Connect(function()
				coroutine.close(closingtask)

				for _,v in pairs(newNotification:GetChildren()) do
					if v:IsA("Frame") then
						TweenCustom(v, TweenInfo.new(0.25, TweenStyle, TweenDirection), {BackgroundTransparency = 1})
					end
				end

				TweenCustom(newNotification, TweenInfo.new(0.25, TweenStyle, TweenDirection), {BackgroundTransparency = 1})
				TweenCustom(newNotification.Items.Title.Close, TweenInfo.new(0.25, TweenStyle, TweenDirection), {ImageTransparency = 1})
				TweenCustom(newNotification.Items.Title, TweenInfo.new(0.25, TweenStyle, TweenDirection), {TextTransparency = 1})
				TweenCustom(newNotification.Items.Content, TweenInfo.new(0.25, TweenStyle, TweenDirection), {TextTransparency = 1})

				local lasttween = TweenCustom(newNotification.Items.SubContent, TweenInfo.new(0.25, TweenStyle, TweenDirection), {TextTransparency = 1})
				if lasttween then
					lasttween.Completed:Wait()
				end



				OriginalTransparencies = nil
				newNotification:Destroy()
			end)
		end

		function LIB:CreateWindow(tbl)
			local self = {}

			local Title = tbl.Title
			local MinimizeKey = tbl.MinimizeKey -- TODO Later
			
			if game:GetService("RunService"):IsStudio() then
				if game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild(Title) then
					game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild(Title):Destroy()
				end
			else
				if game:GetService("CoreGui"):FindFirstChild(Title) then
					game:GetService("CoreGui"):FindFirstChild(Title):Destroy()
				end
			end
			
			local newGui = GUI:Clone()
			local Template = newGui.Template
			local Tabs = newGui.BackgroundFrame.Main.Tabs

			if game:GetService("RunService"):IsStudio() then
				newGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
			else
				newGui.Parent = game:GetService("CoreGui")
			end
			newGui.BackgroundFrame.Side.DraggablePart.Title.Text = Title
			newGui.Name = Title
			newGui.Enabled = true

			MAKEDRAGGABLE(newGui.BackgroundFrame.Side.DraggablePart, newGui.BackgroundFrame)
			MAKEDRAGGABLE(newGui.Floating.Folder.DraggablePart, newGui.Floating)

			newGui.Floating.Folder.Status.MouseButton1Click:Connect(function()
				if newGui.BackgroundFrame.Visible then
					newGui.BackgroundFrame.Visible = false

					newGui.Floating.Folder.Status.Image = "rbxassetid://10734942565"
				elseif not newGui.BackgroundFrame.Visible then
					newGui.BackgroundFrame.Visible = true

					newGui.Floating.Folder.Status.Image = "rbxassetid://10734895698"
				end
			end)

			local selected
			function self:AddTab(tbl)
				local self = {}
				local Title = tbl.Title
				local Icon = tbl.Icon

				local SectionNumber = 0

				local newTabButton = Template.TabButton:Clone()
				local newTab = Template.TabFrame:Clone()

				if not selected then
					selected = Title
				end
				print(selected)

				newTabButton.Name = Title
				newTab.Name = Title
				table.insert(TABLIST, Title) 
				newTab.Parent = Tabs
				newTabButton.Parent = newGui.BackgroundFrame.Side.TabButtons
				newTabButton.Title.Text = Title

				newTab.Visible = true
				newTabButton.Visible = true
				if Icon ~= nil then
					if require(GUI.IconLib).assets[Icon] then
						newTabButton.Icon.Image = require(GUI.IconLib).assets[Icon]
					else
						newTabButton.Icon.Image = Icon
					end
				end

				newTab.ScrollingFrameRight:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
					newTab.ScrollingFrameLeft.CanvasPosition = newTab.ScrollingFrameRight.CanvasPosition
				end)
				newTab.ScrollingFrameLeft:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
					newTab.ScrollingFrameRight.CanvasPosition = newTab.ScrollingFrameLeft.CanvasPosition
				end)


				if Title ~= selected then
					newTabButton.Title.Position = UDim2.new(0.07, 0,0.5, 0)
					newTabButton.Title.Size = UDim2.new(0, 125,0, 17)

					newTabButton.Icon.Position = UDim2.new(-0.25, 0,0.5, 0)

					newTabButton.Title.UIGradient.Enabled = false
					newTabButton.Title.TextTransparency = 0.7

					newTab.Visible = false
				end

				newTabButton.MouseButton1Click:Connect(function()

					selected = Title

					Tween(newTabButton.Title, {Position = UDim2.new(0.33, 0,0.5, 0)})
					Tween(newTabButton.Title, {Size = UDim2.new(0, 90,0, 17)})

					Tween(newTabButton.Icon, {Position = UDim2.new(0.07, 0,0.5, 0)})

					newTabButton.Title.UIGradient.Enabled = true
					Tween(newTabButton.Title, {TextTransparency = 0})

					newTab.Visible = true


					for i,v in pairs(newGui.BackgroundFrame.Side.TabButtons:GetChildren()) do
						if v:IsA("TextButton") then
							if v.Name ~= newTabButton.Name then
								Tween(v.Title, {Position = UDim2.new(0.07, 0,0.5, 0)})
								Tween(v.Title, {Size = UDim2.new(0, 125,0, 17)})

								Tween(v.Icon, {Position = UDim2.new(-0.25, 0,0.5, 0)})

								v.Title.UIGradient.Enabled = false

								Tween(v.Title, {TextTransparency = 0.7})
							end
						end


					end

					for i,v in pairs(newGui.BackgroundFrame.Main.Tabs:GetChildren()) do
						if v:IsA("Frame") then
							if v.Name ~= newTab.Name then
								v.Visible = false
							end
						end
					end
				end)

				function self:AddSection(tbl)
					local self = {}

					Title = tbl.Title

					local newSection = Template.Section:Clone()

					newSection.Name = Title
					newSection.Title.Text = Title

					SectionNumber += 1

					if OddOrEven(SectionNumber) == "Odd" then
						newSection.Parent = newTab.ScrollingFrameLeft
					elseif OddOrEven(SectionNumber) == "Even" then
						newSection.Parent = newTab.ScrollingFrameRight
					end

					newSection.Visible = true

					function self:AddParagraph(tbl)
						local Title = tbl.Title
						local Content = tbl.Content

						local newParagraph = Template.Paragraph:Clone()
						newParagraph.Paragraph.Title.Text = Title
						newParagraph.Paragraph.Content.Text = Content
						newParagraph.Parent = newSection.SectionItems
						newParagraph.Visible = true

						return newParagraph
					end

					function self:AddButton(tbl)
						local self = {}

						local Title = tbl.Title
						local Callback = tbl.Callback

						if not Callback then
							Callback = function() end
						end

						--local Description --IGNORED BECAUSE DESIGN ALREADY DONT HAVE DESCRIPTION
						local newButton = Template.Button:Clone()
						newButton.Button.TextLabel.Text = Title
						newButton.Parent = newSection.SectionItems
						newButton.Visible = true

						newButton.Button.MouseButton1Down:Connect(function()
							newButton.Button.TextLabel.UIGradient.Enabled = false
							newButton.Button.UIGradientOff.Enabled = false
							newButton.Button.UIGradientOn.Enabled = true
							Tween(newButton.Button, {BackgroundColor3 = Color3.fromRGB(200,200,200)})
						end)
						newButton.Button.MouseButton1Up:Connect(function()
							newButton.Button.TextLabel.UIGradient.Enabled = true
							newButton.Button.UIGradientOff.Enabled = true
							newButton.Button.UIGradientOn.Enabled = false
							Tween(newButton.Button, {BackgroundColor3 = Color3.fromRGB(40,40,40)})
						end)
						newButton.Button.MouseLeave:Connect(function()
							newButton.Button.TextLabel.UIGradient.Enabled = true
							newButton.Button.UIGradientOff.Enabled = true
							newButton.Button.UIGradientOn.Enabled = false
							Tween(newButton.Button, {BackgroundColor3 = Color3.fromRGB(40,40,40)})
						end)

						newButton.Button.MouseButton1Click:Connect(Callback)

						function self:SetTitle(newTitle)
							Title = newTitle
							newButton.Button.TextLabel.Text = Title
						end

						return self
					end

					function self:AddToggle(OptionName, tbl)
						local self = {}

						local Title = tbl.Title
						local Default = tbl.Default
						local Callback = tbl.Callback

						if not Callback then
							Callback = function() end
						end

						local state = Default or false

						self.Value = state
						LIB.Options[OptionName] = {}
						table.insert(LIB.Options[OptionName], OptionName)
						LIB.Options[OptionName].Value = state

						local newToggle = Template.Toggle:Clone()

						newToggle.Name = Title
						newToggle.Title.Text = Title
						newToggle.Parent = newSection.SectionItems

						if state == true then
							newToggle.Title.TextTransparency = 0

							newToggle.Toggle.BackgroundColor3 = Color3.fromRGB(255,255,255)
						end

						newToggle.Visible = true

						local firsttime = true
						function self:OnChanged(callback)
							if firsttime then
								callback(state)
								firsttime = false
							end
							newToggle.OnChanged.Event:Connect(function()
								callback(state)
							end)
						end

						task.spawn(function()
							Callback(state)
						end)

						newToggle.Toggle.MouseButton1Click:Connect(function()

							if state == false then -- turning on
								state = true

								self.Value = state
								LIB.Options[OptionName].Value = state
								newToggle.OnChanged:Fire(state)
								Callback(state)
								Tween(newToggle.Title, {TextTransparency = 0})
								Tween(newToggle.Toggle, {BackgroundColor3 = Color3.fromRGB(255,255,255)})
							elseif state == true then
								state = false

								self.Value = state
								LIB.Options[OptionName].Value = state
								newToggle.OnChanged:Fire(state)
								Callback(state)
								Tween(newToggle.Title, {TextTransparency = 0.7})
								Tween(newToggle.Toggle, {BackgroundColor3 = Color3.fromRGB(40,40,40)})
							end
						end)





						local function SetValue(value)
							state = value

							if state == true then
								Tween(newToggle.Title, {TextTransparency = 0})
								Tween(newToggle.Toggle, {BackgroundColor3 = Color3.fromRGB(255,255,255)})
							elseif state == false then
								Tween(newToggle.Title, {TextTransparency = 0.7})
								Tween(newToggle.Toggle, {BackgroundColor3 = Color3.fromRGB(40,40,40)})
							end

							self.Value = state
							LIB.Options[OptionName].Value = state
							newToggle.OnChanged:Fire(state)
							Callback(state)
						end

						LIB.Options[OptionName].SetValue = function(_, value)
							SetValue(value)
						end



						return self
					end

					function self:AddSlider(OptionName, tbl)
						local self = {}

						local Title = tbl.Title
						local min = tbl.Min
						local default = tbl.Default or min
						local max = tbl.Max

						self.Value = default
						LIB.Options[OptionName] = {}
						table.insert(LIB.Options[OptionName], OptionName)
						LIB.Options[OptionName].Value = default

						local Rounding = tbl.Rounding

						local inc = tbl.Rounding

						local Callback =  tbl.Callback

						local newSlider = Template.Slider:Clone()

						LIB.Options[OptionName] = {}
						table.insert(LIB.Options[OptionName], OptionName)
						LIB.Options[OptionName].Value = default

						newSlider.Parent = newSection.SectionItems
						newSlider.Name = Title
						newSlider.Visible = true
						newSlider.Frame.Title.Text = Title

						newSlider.OnChanged:Fire(default)

						-- Source slider daur ulang awkoakwoawkaowkaowo

						local Mouse = game.Players.LocalPlayer:GetMouse()

						local Trigger = newSlider.Trigger
						local Label = newSlider.Frame.ValueText
						local Fill = newSlider.Trigger.Fill.Circle
						local Parent = newSlider

						local perc = default
						local Percent
						local MouseDown = false

						inc = inc or 1



						local function convertValueToScale(value)
							return (value - min) / (max - min) * (1 - 0) + 0
						end


						Label.Text = tostring(default) or tostring(min)
						Fill.Position = UDim2.fromScale(convertValueToScale(default), 0.5)

						task.spawn(function()
							Callback(default)
						end)

						-- this also update
						local function Slide()
							MouseDown = true
							repeat
								task.wait()
								Percent = math.clamp((Mouse.X - Parent.AbsolutePosition.X) / Parent.AbsoluteSize.X, 0, 1)
								perc = min + (Percent * (max - min))

								-- New: precision based rounding
								local multiplier = 10 ^ inc
								perc = math.floor(perc * multiplier + 0.5) / multiplier
								perc = math.clamp(perc, min, max)

								-- Format output text
								if perc % 1 == 0 then
									Label.Text = tostring(perc) -- integer, no decimal
								else
									Label.Text = string.format("%."..inc.."f", perc) -- decimal format
								end

								self.Value = perc
								newSlider.OnChanged:Fire(perc)
								LIB.Options[OptionName].Value = perc
								Tween(Fill, { Position = UDim2.fromScale(Percent, 0.5) })
								task.spawn(function()
									Callback(perc, newSlider)
								end)
							until MouseDown == false
						end


						local function Update(value, fromtextbox)
							if not value or value > max or value < min then
								return
							end

							local multiplier = 10 ^ inc
							value = math.floor(value * multiplier + 0.5) / multiplier
							value = math.clamp(value, min, max)

							Tween(Fill, { Position = UDim2.fromScale(convertValueToScale(value), 0.5) })

							if not fromtextbox then
								-- Format output text
								if value % 1 == 0 then
									Label.Text = tostring(value) -- integer, no decimal
								else
									Label.Text = string.format("%."..inc.."f", value) -- decimal format
								end
							end

							perc = value

							self.Value = perc
							newSlider.OnChanged:Fire(perc)
							LIB.Options[OptionName].Value = perc
							task.spawn(function()
								Callback(value, newSlider)
							end)
						end


						-- start sliding
						Trigger.MouseButton1Down:Connect(function()
							Slide()
						end)

						-- stop sliding
						UserInputService.InputEnded:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
								MouseDown = false
							end
						end)

						Label:GetPropertyChangedSignal("Text"):Connect(function()
							Update(tonumber(Label.Text), true)
						end)
						Label.FocusLost:Connect(function()
							if Label.Text == "" then
								Label.Text = tostring(perc)
							end
						end)

						local firsttime = true
						function self:OnChanged(callback)
							if firsttime then
								callback(perc)
								firsttime = false
							end
							newSlider.OnChanged.Event:Connect(function()
								callback(perc)
							end)
						end

						function self:SetValue(value)
							Update(value)
						end

						LIB.Options[OptionName].SetValue = function(_, value)
							self:SetValue(value)
						end

						return self -- Slider
					end

					function self:AddDropdown(OptionName, tbl)
						local self = {}



						local Title = tbl.Title
						local Values = tbl.Values
						local Multi = tbl.Multi -- allow multi selection or not
						local Default = tbl.Default  -- could be a int as index or string for its content (FOR non Multi)
						local Callback = tbl.Callback

						if not Callback then
							Callback = function() end
						end

						local selected
						local selectedIndex
						local ValueState = {} -- Only on Multi

						local open = false

						if Multi then
							selected = {}
						end

						self.Value = Default
						LIB.Options[OptionName] = {}
						table.insert(LIB.Options[OptionName], OptionName)
						LIB.Options[OptionName].Values = Default

						local newDropdown = Template.Dropdown:Clone()

						newDropdown.Name = Title
						newDropdown.Title.Text = Title
						newDropdown.Parent = newSection.SectionItems
						newDropdown.Visible = true

						newDropdown.DropdownButton.Button.MouseButton1Down:Connect(function()
							newDropdown.DropdownButton.Button.TextLabel.UIGradient.Enabled = false
							newDropdown.DropdownButton.Button.UIGradientOff.Enabled = false
							newDropdown.DropdownButton.Button.UIGradientOn.Enabled = true
							Tween(newDropdown.DropdownButton.Button, {BackgroundColor3 = Color3.fromRGB(200,200,200)})
						end)
						newDropdown.DropdownButton.Button.MouseButton1Up:Connect(function()
							newDropdown.DropdownButton.Button.TextLabel.UIGradient.Enabled = true
							newDropdown.DropdownButton.Button.UIGradientOff.Enabled = true
							newDropdown.DropdownButton.Button.UIGradientOn.Enabled = false
							Tween(newDropdown.DropdownButton.Button, {BackgroundColor3 = Color3.fromRGB(40,40,40)})
						end)

						newDropdown.DropdownButton.Button.MouseLeave:Connect(function()
							newDropdown.DropdownButton.Button.TextLabel.UIGradient.Enabled = true
							newDropdown.DropdownButton.Button.UIGradientOff.Enabled = true
							newDropdown.DropdownButton.Button.UIGradientOn.Enabled = false
							Tween(newDropdown.DropdownButton.Button, {BackgroundColor3 = Color3.fromRGB(40,40,40)})
						end)

						newDropdown.DropdownButton.Button.MouseButton1Click:Connect(function()
							if open then
								-- Open > Close
								open = false
								Tween(newDropdown.DropdownButton, { Size = UDim2.new(0, 130,0, 18) })
							elseif not open then
								-- Close > Open
								open = true
								TweenCustom(newDropdown.DropdownButton, TweenInfo.new(TweenTime * 2, TweenStyle, TweenDirection), { Size = UDim2.new(0, 130,0, 167) })
							end

						end)

						--Search Handler
						newDropdown.DropdownButton.SeacrhBox.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
							if newDropdown.DropdownButton.SeacrhBox.TextBox.Text ~= "" then
								newDropdown.DropdownButton.ScrollingFrameSearch.Visible = true
								newDropdown.DropdownButton.ScrollingFrame.Visible = false

								for _,item in pairs(newDropdown.DropdownButton.ScrollingFrameSearch:GetChildren()) do
									if item:IsA("TextButton") then
										if string.find(item.Name, newDropdown.DropdownButton.SeacrhBox.TextBox.Text) then
											item.Visible = true
										else
											item.Visible = false
										end
									end
								end

							else
								newDropdown.DropdownButton.ScrollingFrameSearch.Visible = false
								newDropdown.DropdownButton.ScrollingFrame.Visible = true
							end
						end)

				--[[newDropdown.DropdownButton.SeacrhBox.TextBox.FocusLost:Connect(function()
					newDropdown.DropdownButton.ScrollingFrameSearch.Visible = false
					newDropdown.DropdownButton.ScrollingFrame.Visible = true
				end)]]

						-- End Search Handler

						--newDropdown

						if not Multi then
							if Default then
								selected = Default
							end



							if Default == nil then
								newDropdown.DropdownButton.Button.TextLabel.Text = "--"
							elseif type(Default) == "number" then
								newDropdown.DropdownButton.Button.TextLabel.Text = Values[Default]
							elseif type(Default) == "string" then
								if table.find(Values, Default) then
									newDropdown.DropdownButton.Button.TextLabel.Text = Default
								else
									newDropdown.DropdownButton.Button.TextLabel.Text = "--"
								end
							else
								newDropdown.DropdownButton.Button.TextLabel.Text = "--"
							end

							newDropdown.OnChanged:Fire(selected)
							Callback(selected)

							for _,Items in pairs(Values) do
								local newDropdownButton = Template.DropdownButton:Clone()
								newDropdownButton.Name = Items
								newDropdownButton.Text = Items
								newDropdownButton.Parent = newDropdown.DropdownButton.ScrollingFrame
								newDropdownButton.Visible = true

								if selected == Items then
									newDropdownButton.UIGradient.Enabled = true
								end

								newDropdownButton.MouseButton1Click:Connect(function()
									selected = Items
									selectedIndex = table.find(Values, Items)

									newDropdownButton.UIGradient.Enabled = true
									newDropdown.DropdownButton.ScrollingFrameSearch[newDropdownButton.Name].UIGradient.Enabled = true
									for i,v in pairs(newDropdown.DropdownButton.ScrollingFrameSearch:GetChildren()) do
										if v:IsA("TextButton") and v.Name ~= selected then
											v.UIGradient.Enabled = false
										end
									end

									for i,v in pairs(newDropdown.DropdownButton.ScrollingFrame:GetChildren()) do
										if v:IsA("TextButton") and v.Name ~= selected then
											v.UIGradient.Enabled = false
										end
									end

									newDropdown.DropdownButton.Button.TextLabel.Text = Items
									LIB.Options[OptionName].Value = selected
									newDropdown.OnChanged:Fire(selected)
									Callback(selected)
									self.Value = selected
									-- Hide SearchScroll
									newDropdown.DropdownButton.ScrollingFrameSearch.Visible = false
									newDropdown.DropdownButton.ScrollingFrame.Visible = true
									newDropdown.DropdownButton.SeacrhBox.TextBox.Text = ""
								end)

								local newDropdownButtonOnSearch = newDropdownButton:Clone()
								newDropdownButtonOnSearch.Parent = newDropdown.DropdownButton.ScrollingFrameSearch

								newDropdownButtonOnSearch.MouseButton1Click:Connect(function()
									selected = Items
									selectedIndex = table.find(Values, Items)

									newDropdownButtonOnSearch.UIGradient.Enabled = true
									newDropdown.DropdownButton.ScrollingFrame[newDropdownButton.Name].UIGradient.Enabled = true
									for i,v in pairs(newDropdown.DropdownButton.ScrollingFrameSearch:GetChildren()) do
										if v:IsA("TextButton") and v.Name ~= selected then
											v.UIGradient.Enabled = false
										end
									end

									for i,v in pairs(newDropdown.DropdownButton.ScrollingFrame:GetChildren()) do
										if v:IsA("TextButton") and v.Name ~= selected then
											v.UIGradient.Enabled = false
										end
									end

									newDropdown.DropdownButton.Button.TextLabel.Text = Items
									LIB.Options[OptionName].Value = selected
									newDropdown.OnChanged:Fire(selected)
									Callback(selected)
									self.Value = selected

									-- Hide SearchScroll
									newDropdown.DropdownButton.ScrollingFrameSearch.Visible = false
									newDropdown.DropdownButton.ScrollingFrame.Visible = true
									newDropdown.DropdownButton.SeacrhBox.TextBox.Text = ""
								end)

							end

							local firsttime = true
							function self:OnChanged(callback)
								if firsttime then
									callback(selected)
									firsttime = false
								end
								newDropdown.OnChanged.Event:Connect(function()
									callback(selected)
								end)
							end

							local function SetValue(item)
								if table.find(Values, item) then
									selected = item
									selectedIndex = table.find(Values, item)

									for i,v in pairs(newDropdown.DropdownButton.ScrollingFrame:GetChildren()) do
										if v:IsA("TextButton") and v.Name ~= selected then
											v.UIGradient.Enabled = false
										elseif v:IsA("TextButton") and v.Name == selected then
											v.UIGradient.Enabled = true
										end
									end
									for i,v in pairs(newDropdown.DropdownButton.ScrollingFrameSearch:GetChildren()) do
										if v:IsA("TextButton") and v.Name ~= selected then
											v.UIGradient.Enabled = false
										elseif v:IsA("TextButton") and v.Name == selected then
											v.UIGradient.Enabled = true
										end
									end

									newDropdown.DropdownButton.Button.TextLabel.Text = item
									LIB.Options[OptionName].Value = selected
									newDropdown.OnChanged:Fire(selected)
									Callback(selected)
									self.Value = selected
								elseif item == nil then
									selected = nil
									selectedIndex = nil

									for i,v in pairs(newDropdown.DropdownButton.ScrollingFrame:GetChildren()) do
										if v:IsA("TextButton")then
											v.UIGradient.Enabled = false
										end
									end
									for i,v in pairs(newDropdown.DropdownButton.ScrollingFrameSearch:GetChildren()) do
										if v:IsA("TextButton")then
											v.UIGradient.Enabled = false
										end
									end

									newDropdown.DropdownButton.Button.TextLabel.Text = "--"
									LIB.Options[OptionName].Value = selected
									newDropdown.OnChanged:Fire(selected)
									Callback(selected)
									self.Value = selected
								else
									selected = nil
									selectedIndex = nil

									for i,v in pairs(newDropdown.DropdownButton.ScrollingFrame:GetChildren()) do
										if v:IsA("TextButton")then
											v.UIGradient.Enabled = false
										end
									end
									for i,v in pairs(newDropdown.DropdownButton.ScrollingFrameSearch:GetChildren()) do
										if v:IsA("TextButton")then
											v.UIGradient.Enabled = false
										end
									end

									newDropdown.DropdownButton.Button.TextLabel.Text = "--"
									LIB.Options[OptionName].Value = selected
									newDropdown.OnChanged:Fire(selected)
									Callback(selected)
									self.Value = selected
								end
							end

							local function SetValues(newValues)
								Values = newValues
								for _,v in pairs(newDropdown.DropdownButton.ScrollingFrame:GetChildren()) do
									if v:IsA("TextButton") then
										v:Destroy()
									end
								end
								for _,v in pairs(newDropdown.DropdownButton.ScrollingFrameSearch:GetChildren()) do
									if v:IsA("TextButton") then
										v:Destroy()
									end
								end

								for _,Items in pairs(Values) do
									local newDropdownButton = Template.DropdownButton:Clone()
									newDropdownButton.Name = Items
									newDropdownButton.Text = Items
									newDropdownButton.Parent = newDropdown.DropdownButton.ScrollingFrame
									newDropdownButton.Visible = true

									if selected == Items then
										newDropdownButton.UIGradient.Enabled = true
									end

									newDropdownButton.MouseButton1Click:Connect(function()
										selected = Items
										selectedIndex = table.find(Values, Items)

										newDropdownButton.UIGradient.Enabled = true
										newDropdown.DropdownButton.ScrollingFrameSearch[newDropdownButton.Name].UIGradient.Enabled = true
										for i,v in pairs(newDropdown.DropdownButton.ScrollingFrameSearch:GetChildren()) do
											if v:IsA("TextButton") and v.Name ~= selected then
												v.UIGradient.Enabled = false
											end
										end

										for i,v in pairs(newDropdown.DropdownButton.ScrollingFrame:GetChildren()) do
											if v:IsA("TextButton") and v.Name ~= selected then
												v.UIGradient.Enabled = false
											end
										end

										newDropdown.DropdownButton.Button.TextLabel.Text = Items
										LIB.Options[OptionName].Values = selected
										newDropdown.OnChanged:Fire(selected)
										Callback(selected)
										self.Value = selected
										-- Hide SearchScroll
										newDropdown.DropdownButton.ScrollingFrameSearch.Visible = false
										newDropdown.DropdownButton.ScrollingFrame.Visible = true
										newDropdown.DropdownButton.SeacrhBox.TextBox.Text = ""
									end)

									local newDropdownButtonOnSearch = newDropdownButton:Clone()
									newDropdownButtonOnSearch.Parent = newDropdown.DropdownButton.ScrollingFrameSearch

									newDropdownButtonOnSearch.MouseButton1Click:Connect(function()
										selected = Items
										selectedIndex = table.find(Values, Items)

										newDropdownButtonOnSearch.UIGradient.Enabled = true
										newDropdown.DropdownButton.ScrollingFrame[newDropdownButton.Name].UIGradient.Enabled = true
										for i,v in pairs(newDropdown.DropdownButton.ScrollingFrameSearch:GetChildren()) do
											if v:IsA("TextButton") and v.Name ~= selected then
												v.UIGradient.Enabled = false
											end
										end

										for i,v in pairs(newDropdown.DropdownButton.ScrollingFrame:GetChildren()) do
											if v:IsA("TextButton") and v.Name ~= selected then
												v.UIGradient.Enabled = false
											end
										end

										newDropdown.DropdownButton.Button.TextLabel.Text = Items
										LIB.Options[OptionName].Values = selected
										newDropdown.OnChanged:Fire(selected)
										Callback(selected)
										self.Value = selected

										-- Hide SearchScroll
										newDropdown.DropdownButton.ScrollingFrameSearch.Visible = false
										newDropdown.DropdownButton.ScrollingFrame.Visible = true
										newDropdown.DropdownButton.SeacrhBox.TextBox.Text = ""
									end)

								end
							end

							self.SetValue = function(_, item)
								SetValue(item)
							end

							self.SetValues = function(_, newValues)
								SetValues(newValues)
							end

							LIB.Options[OptionName].SetValue = function(_, item)
								SetValue(item)
							end

							LIB.Options[OptionName].SetValues = function(_, newValues)
								SetValues(newValues)
							end


							LIB.Options[OptionName].Values = selected

							-- TODO: KERJAIN Search abistu Multi dropdown

							return self
						elseif Multi then

							-- ROMBAK ULANG
							if Default then
								selected = Default
							end
							local newselected = {}
							for k,v in pairs(selected) do

								newselected[v] = true
							end

							selected = newselected


							if type(selected) == "table" then

								local indexcount = 0
								for k,v in pairs(selected) do
									indexcount = indexcount + 1
								end

								if indexcount == 0 then
									newDropdown.DropdownButton.Button.TextLabel.Text = "--"
								elseif indexcount > 0 then

									-- GANTI TEXT --
									local selectednames = {}
									for k,v in pairs(selected) do
										table.insert(selectednames, k)
									end

									newDropdown.DropdownButton.Button.TextLabel.Text = table.concat(selectednames,", ")
									-----------------
								end
							else
								newDropdown.DropdownButton.Button.TextLabel.Text = "--"
							end






							Callback(selected)
							newDropdown.OnChanged:Fire(selected)

							for _,Items in pairs(Values) do
								local newDropdownButton = Template.DropdownButton:Clone()
								newDropdownButton.Name = Items
								newDropdownButton.Text = Items
								newDropdownButton.Parent = newDropdown.DropdownButton.ScrollingFrame
								newDropdownButton.Visible = true

								local selectednames = {}
								for k,v in pairs(selected) do
									table.insert(selectednames, k)
								end

								if table.find(selectednames, Items) then
									newDropdownButton.UIGradient.Enabled = true
								end



								newDropdownButton.MouseButton1Click:Connect(function()
									if not selected[Items] then
										-- Unselected > Selected

										selected[Items] = true

										newDropdownButton.UIGradient.Enabled = true
										newDropdown.DropdownButton.ScrollingFrameSearch[newDropdownButton.Name].UIGradient.Enabled = true

										-- GANTI TEXT --
										local selectednames = {}
										for k,v in pairs(selected) do
											table.insert(selectednames, k)
										end
										if #selectednames > 0 then
											newDropdown.DropdownButton.Button.TextLabel.Text = table.concat(selectednames,", ")
										elseif #selectednames == 0 then
											newDropdown.DropdownButton.Button.TextLabel.Text = "--"
										end
										-----------------

										self.Value = selected
										LIB.Options[OptionName].Value = selected
										newDropdown.OnChanged:Fire(selected)
										Callback(selected)

										-- Hide SearchScroll
										newDropdown.DropdownButton.ScrollingFrameSearch.Visible = false
										newDropdown.DropdownButton.ScrollingFrame.Visible = true
										newDropdown.DropdownButton.SeacrhBox.TextBox.Text = ""
									elseif selected[Items] then
										-- Selected > Unselected

										selected[Items] = nil

										newDropdownButton.UIGradient.Enabled = false
										newDropdown.DropdownButton.ScrollingFrameSearch[newDropdownButton.Name].UIGradient.Enabled = false

										-- GANTI TEXT --
										local selectednames = {}
										for k,v in pairs(selected) do
											table.insert(selectednames, k)
										end
										if #selectednames > 0 then
											newDropdown.DropdownButton.Button.TextLabel.Text = table.concat(selectednames,", ")
										elseif #selectednames == 0 then
											newDropdown.DropdownButton.Button.TextLabel.Text = "--"
										end
										-----------------

										self.Value = selected
										LIB.Options[OptionName].Value = selected
										newDropdown.OnChanged:Fire(selected)
										Callback(selected)

										-- Hide SearchScroll
										newDropdown.DropdownButton.ScrollingFrameSearch.Visible = false
										newDropdown.DropdownButton.ScrollingFrame.Visible = true
										newDropdown.DropdownButton.SeacrhBox.TextBox.Text = ""
									end
								end)

								local newDropdownButtonOnSearch = newDropdownButton:Clone()
								newDropdownButtonOnSearch.Parent = newDropdown.DropdownButton.ScrollingFrameSearch

								newDropdownButtonOnSearch.MouseButton1Click:Connect(function()
									if not selected[Items] then
										-- Unselected > Selected

										selected[Items] = true

										newDropdownButtonOnSearch.UIGradient.Enabled = true
										newDropdown.DropdownButton.ScrollingFrame[newDropdownButton.Name].UIGradient.Enabled = true
										-- GANTI TEXT --
										local selectednames = {}
										for k,v in pairs(selected) do
											table.insert(selectednames, k)
										end
										if #selectednames > 0 then
											newDropdown.DropdownButton.Button.TextLabel.Text = table.concat(selectednames,", ")
										elseif #selectednames == 0 then
											newDropdown.DropdownButton.Button.TextLabel.Text = "--"
										end
										-----------------

										self.Value = selected
										LIB.Options[OptionName].Value = selected
										newDropdown.OnChanged:Fire(selected)
										Callback(selected)

										-- Hide SearchScroll
										newDropdown.DropdownButton.ScrollingFrameSearch.Visible = false
										newDropdown.DropdownButton.ScrollingFrame.Visible = true
										newDropdown.DropdownButton.SeacrhBox.TextBox.Text = ""
									elseif selected[Items] then
										-- Selected > Unselected

										selected[Items] = nil

										newDropdownButtonOnSearch.UIGradient.Enabled = false
										newDropdown.DropdownButton.ScrollingFrame[newDropdownButton.Name].UIGradient.Enabled = false
										-- GANTI TEXT --
										local selectednames = {}
										for k,v in pairs(selected) do
											table.insert(selectednames, k)
										end
										if #selectednames > 0 then
											newDropdown.DropdownButton.Button.TextLabel.Text = table.concat(selectednames,", ")
										elseif #selectednames == 0 then
											newDropdown.DropdownButton.Button.TextLabel.Text = "--"
										end
										-----------------

										self.Value = selected
										LIB.Options[OptionName].Value = selected
										newDropdown.OnChanged:Fire(selected)
										Callback(selected)

										-- Hide SearchScroll
										newDropdown.DropdownButton.ScrollingFrameSearch.Visible = false
										newDropdown.DropdownButton.ScrollingFrame.Visible = true
										newDropdown.DropdownButton.SeacrhBox.TextBox.Text = ""
									end
								end)

							end

							local firsttime = true
							function self:OnChanged(callback)
								if firsttime then
									callback(selected)
									firsttime = false
								end
								newDropdown.OnChanged.Event:Connect(function()
									callback(selected)
								end)
							end

							local function SetValue(NewValue)
								if type(NewValue) == "table" and #NewValue > 0 then
									for _, v in pairs(newDropdown.DropdownButton.ScrollingFrame:GetChildren()) do
										if v:IsA("TextButton") then
											v.UIGradient.Enabled = false
										end
									end
									for _, v in pairs(newDropdown.DropdownButton.ScrollingFrameSearch:GetChildren()) do
										if v:IsA("TextButton") then
											v.UIGradient.Enabled = false
										end
									end

									for k,v in pairs(NewValue) do
										if table.find(Values, k) then



											selected[k] = v

											newDropdown.DropdownButton.ScrollingFrame[k].UIGradient.Enabled = true
											newDropdown.DropdownButton.ScrollingFrameSearch[k].UIGradient.Enabled = true
											-- GANTI TEXT --
											local selectednames = {}
											for k,v in pairs(selected) do
												table.insert(selectednames, k)
											end
											if #selectednames > 0 then
												newDropdown.DropdownButton.Button.TextLabel.Text = table.concat(selectednames,", ")
											elseif #selectednames == 0 then
												newDropdown.DropdownButton.Button.TextLabel.Text = "--"
											end
											-----------------

											self.Value = selected
											LIB.Options[OptionName].Value = selected
											newDropdown.OnChanged:Fire(selected)
											Callback(selected)
										else
											task.spawn(function()
												error("No '"..k.."'".." Found in dropdown table.")
											end)
										end
									end
								else
									selected = {}

									for _, v in pairs(newDropdown.DropdownButton.ScrollingFrame:GetChildren()) do
										if v:IsA("TextButton") then
											v.UIGradient.Enabled = false
										end
									end
									for _, v in pairs(newDropdown.DropdownButton.ScrollingFrameSearch:GetChildren()) do
										if v:IsA("TextButton") then
											v.UIGradient.Enabled = false
										end
									end

									newDropdown.DropdownButton.Button.TextLabel.Text = "--"
									self.Value = selected
									LIB.Options[OptionName].Value = selected
									newDropdown.OnChanged:Fire(selected)
									Callback(selected)
								end

							end

							local function SetValues(newValues)
								Values = newValues

								for i,v in pairs(newDropdown.DropdownButton.ScrollingFrame:GetChildren()) do
									if v:IsA("TextButton") then
										v:Destroy()
									end
								end
								for i,v in pairs(newDropdown.DropdownButton.ScrollingFrameSearch:GetChildren()) do
									if v:IsA("TextButton") then
										v:Destroy()
									end
								end

								for _,Items in pairs(Values) do
									local newDropdownButton = Template.DropdownButton:Clone()
									newDropdownButton.Name = Items
									newDropdownButton.Text = Items
									newDropdownButton.Parent = newDropdown.DropdownButton.ScrollingFrame
									newDropdownButton.Visible = true

									local selectednames = {}
									for k,v in pairs(selected) do
										table.insert(selectednames, k)
									end

									if table.find(selectednames, Items) then
										newDropdownButton.UIGradient.Enabled = true
									end



									newDropdownButton.MouseButton1Click:Connect(function()
										if not selected[Items] then
											-- Unselected > Selected

											selected[Items] = true

											newDropdownButton.UIGradient.Enabled = true
											newDropdown.DropdownButton.ScrollingFrameSearch[newDropdownButton.Name].UIGradient.Enabled = true

											-- GANTI TEXT --
											local selectednames = {}
											for k,v in pairs(selected) do
												table.insert(selectednames, k)
											end
											if #selectednames > 0 then
												newDropdown.DropdownButton.Button.TextLabel.Text = table.concat(selectednames,", ")
											elseif #selectednames == 0 then
												newDropdown.DropdownButton.Button.TextLabel.Text = "--"
											end
											-----------------

											self.Value = selected
											LIB.Options[OptionName].Value = selected
											newDropdown.OnChanged:Fire(selected)
											Callback(selected)

											-- Hide SearchScroll
											newDropdown.DropdownButton.ScrollingFrameSearch.Visible = false
											newDropdown.DropdownButton.ScrollingFrame.Visible = true
											newDropdown.DropdownButton.SeacrhBox.TextBox.Text = ""
										elseif selected[Items] then
											-- Selected > Unselected

											selected[Items] = nil

											newDropdownButton.UIGradient.Enabled = false
											newDropdown.DropdownButton.ScrollingFrameSearch[newDropdownButton.Name].UIGradient.Enabled = false

											-- GANTI TEXT --
											local selectednames = {}
											for k,v in pairs(selected) do
												table.insert(selectednames, k)
											end
											if #selectednames > 0 then
												newDropdown.DropdownButton.Button.TextLabel.Text = table.concat(selectednames,", ")
											elseif #selectednames == 0 then
												newDropdown.DropdownButton.Button.TextLabel.Text = "--"
											end
											-----------------

											self.Value = selected
											LIB.Options[OptionName].Value = selected
											newDropdown.OnChanged:Fire(selected)
											Callback(selected)

											-- Hide SearchScroll
											newDropdown.DropdownButton.ScrollingFrameSearch.Visible = false
											newDropdown.DropdownButton.ScrollingFrame.Visible = true
											newDropdown.DropdownButton.SeacrhBox.TextBox.Text = ""
										end
									end)

									local newDropdownButtonOnSearch = newDropdownButton:Clone()
									newDropdownButtonOnSearch.Parent = newDropdown.DropdownButton.ScrollingFrameSearch

									newDropdownButtonOnSearch.MouseButton1Click:Connect(function()
										if not selected[Items] then
											-- Unselected > Selected

											selected[Items] = true

											newDropdownButtonOnSearch.UIGradient.Enabled = true
											newDropdown.DropdownButton.ScrollingFrame[newDropdownButton.Name].UIGradient.Enabled = true
											-- GANTI TEXT --
											local selectednames = {}
											for k,v in pairs(selected) do
												table.insert(selectednames, k)
											end
											if #selectednames > 0 then
												newDropdown.DropdownButton.Button.TextLabel.Text = table.concat(selectednames,", ")
											elseif #selectednames == 0 then
												newDropdown.DropdownButton.Button.TextLabel.Text = "--"
											end
											-----------------

											self.Value = selected
											LIB.Options[OptionName].Value = selected
											newDropdown.OnChanged:Fire(selected)
											Callback(selected)

											-- Hide SearchScroll
											newDropdown.DropdownButton.ScrollingFrameSearch.Visible = false
											newDropdown.DropdownButton.ScrollingFrame.Visible = true
											newDropdown.DropdownButton.SeacrhBox.TextBox.Text = ""
										elseif selected[Items] then
											-- Selected > Unselected

											selected[Items] = nil

											newDropdownButtonOnSearch.UIGradient.Enabled = false
											newDropdown.DropdownButton.ScrollingFrame[newDropdownButton.Name].UIGradient.Enabled = false
											-- GANTI TEXT --
											local selectednames = {}
											for k,v in pairs(selected) do
												table.insert(selectednames, k)
											end
											if #selectednames > 0 then
												newDropdown.DropdownButton.Button.TextLabel.Text = table.concat(selectednames,", ")
											elseif #selectednames == 0 then
												newDropdown.DropdownButton.Button.TextLabel.Text = "--"
											end
											-----------------

											self.Value = selected
											LIB.Options[OptionName].Value = selected
											newDropdown.OnChanged:Fire(selected)
											Callback(selected)

											-- Hide SearchScroll
											newDropdown.DropdownButton.ScrollingFrameSearch.Visible = false
											newDropdown.DropdownButton.ScrollingFrame.Visible = true
											newDropdown.DropdownButton.SeacrhBox.TextBox.Text = ""
										end
									end)

								end
							end

							self.SetValue = function(_, item)
								SetValue(item)
							end

							LIB.Options[OptionName].SetValues = function(_, item)
								SetValue(item)
							end

							self.SetValues = function(_, item)
								SetValues(item)
							end

							LIB.Options[OptionName].SetValues = function(_, item)
								SetValue(item)
							end

							LIB.Options[OptionName].Values = selected

							return self
						end 

					end -- Dropdown (MULTI DROPDOWN IS THE WROST THING I WORKED ON) 

					function self:AddInput(OptionName, tbl)
						local self = {}

						local Title = tbl.Title
						local Default = tbl.Default
						local Placeholder = tbl.Placeholder
						local Numeric = tbl.Numeric
						local Finished = tbl.Finished -- True = calls callback when focuslost, False = Every text update will call callback
						local Callback = tbl.Callback

						if not Callback then
							Callback = function() end
						end

						self.Value = Default
						LIB.Options[OptionName] = {}
						table.insert(LIB.Options[OptionName], OptionName)
						LIB.Options[OptionName].Value = Default

						local newInput = Template.Textbox:Clone()
						newInput.Title.Text = Title
						newInput.Name = Title

						newInput.Parent = newSection.SectionItems
						newInput.Visible = true

						newInput.Box.Textbox.PlaceholderText = Placeholder or ""
						newInput.Box.Textbox.Text = Default

						Callback(newInput.Box.Textbox.Text)

						local oldtext
						newInput.Box.Textbox.Focused:Connect(function()
							oldtext = newInput.Box.Textbox.Text
						end)

						newInput.Box.Textbox:GetPropertyChangedSignal("Text"):Connect(function()
							if not Finished then
								if Numeric then
									newInput.Box.Textbox.Text = newInput.Box.Textbox.Text:gsub("[^%d.]", ""):gsub("(%..*)%.", "%1")
								end

								self.Value =newInput.Box.Textbox.Text
								Callback(newInput.Box.Textbox.Text)
								LIB.Options[OptionName].Value = newInput.Box.Textbox.Text
								newInput.OnChanged:Fire(newInput.Box.Textbox.Text)
							end


						end)

						newInput.Box.Textbox.FocusLost:Connect(function()
							if Finished then
								if Numeric then
									newInput.Box.Textbox.Text = newInput.Box.Textbox.Text:gsub("[^%d.]", ""):gsub("(%..*)%.", "%1")
									if newInput.Box.Textbox.Text == "" then
										newInput.Box.Textbox.Text = oldtext
									end
								end

								self.Value =newInput.Box.Textbox.Text
								Callback(newInput.Box.Textbox.Text)
								LIB.Options[OptionName].Value = newInput.Box.Textbox.Text
								newInput.OnChanged:Fire(newInput.Box.Textbox.Text)
							end
						end)

						local firsttime = true
						function self:OnChanged(callback)
							if firsttime then
								callback(newInput.Box.Textbox.Text)
								firsttime = false
							end
							newInput.OnChanged.Event:Connect(function()
								callback(newInput.Box.Textbox.Text)
							end)
						end

						function self:SetValue(newText)
							if Numeric then
								newInput.Box.Textbox.Text = newText:gsub("[^%d.]", ""):gsub("(%..*)%.", "%1")
							else
								newInput.Box.Textbox.Text = newText
							end
							self.Value =newInput.Box.Textbox.Text
							Callback(newInput.Box.Textbox.Text)
							LIB.Options[OptionName].Value = newInput.Box.Textbox.Text
							newInput.OnChanged:Fire(newInput.Box.Textbox.Text)
						end

						LIB.Options[OptionName].SetValue = function(_, newText)
							if Numeric then
								newInput.Box.Textbox.Text = newText:gsub("[^%d.]", ""):gsub("(%..*)%.", "%1")
							else
								newInput.Box.Textbox.Text = newText
							end

							self.Value =newInput.Box.Textbox.Text
							Callback(newInput.Box.Textbox.Text)
							LIB.Options[OptionName].Value = newInput.Box.Textbox.Text
							newInput.OnChanged:Fire(newInput.Box.Textbox.Text)
						end

						return self -- Input
					end

					return self -- Section
				end

				return self -- Tab

			end

			return self -- Window
		end

		return LIB
	end;
};
LinniScript_MODULES[LinniScript["28"]] = {
	Closure = function()
		local script = LinniScript["28"];return {
			assets = {
				["accessibility"] = "rbxassetid://10709751939",
				["activity"] = "rbxassetid://10709752035",
				["air-vent"] = "rbxassetid://10709752131",
				["airplay"] = "rbxassetid://10709752254",
				["alarm-check"] = "rbxassetid://10709752405",
				["alarm-clock"] = "rbxassetid://10709752630",
				["alarm-clock-off"] = "rbxassetid://10709752508",
				["alarm-minus"] = "rbxassetid://10709752732",
				["alarm-plus"] = "rbxassetid://10709752825",
				["album"] = "rbxassetid://10709752906",
				["alert-circle"] = "rbxassetid://10709752996",
				["alert-octagon"] = "rbxassetid://10709753064",
				["alert-triangle"] = "rbxassetid://10709753149",
				["align-center"] = "rbxassetid://10709753570",
				["align-center-horizontal"] = "rbxassetid://10709753272",
				["align-center-vertical"] = "rbxassetid://10709753421",
				["align-end-horizontal"] = "rbxassetid://10709753692",
				["align-end-vertical"] = "rbxassetid://10709753808",
				["align-horizontal-distribute-center"] = "rbxassetid://10747779791",
				["align-horizontal-distribute-end"] = "rbxassetid://10747784534",
				["align-horizontal-distribute-start"] = "rbxassetid://10709754118",
				["align-horizontal-justify-center"] = "rbxassetid://10709754204",
				["align-horizontal-justify-end"] = "rbxassetid://10709754317",
				["align-horizontal-justify-start"] = "rbxassetid://10709754436",
				["align-horizontal-space-around"] = "rbxassetid://10709754590",
				["align-horizontal-space-between"] = "rbxassetid://10709754749",
				["align-justify"] = "rbxassetid://10709759610",
				["align-left"] = "rbxassetid://10709759764",
				["align-right"] = "rbxassetid://10709759895",
				["align-start-horizontal"] = "rbxassetid://10709760051",
				["align-start-vertical"] = "rbxassetid://10709760244",
				["align-vertical-distribute-center"] = "rbxassetid://10709760351",
				["align-vertical-distribute-end"] = "rbxassetid://10709760434",
				["align-vertical-distribute-start"] = "rbxassetid://10709760612",
				["align-vertical-justify-center"] = "rbxassetid://10709760814",
				["align-vertical-justify-end"] = "rbxassetid://10709761003",
				["align-vertical-justify-start"] = "rbxassetid://10709761176",
				["align-vertical-space-around"] = "rbxassetid://10709761324",
				["align-vertical-space-between"] = "rbxassetid://10709761434",
				["anchor"] = "rbxassetid://10709761530",
				["angry"] = "rbxassetid://10709761629",
				["annoyed"] = "rbxassetid://10709761722",
				["aperture"] = "rbxassetid://10709761813",
				["apple"] = "rbxassetid://10709761889",
				["archive"] = "rbxassetid://10709762233",
				["archive-restore"] = "rbxassetid://10709762058",
				["armchair"] = "rbxassetid://10709762327",
				["arrow-big-down"] = "rbxassetid://10747796644",
				["arrow-big-left"] = "rbxassetid://10709762574",
				["arrow-big-right"] = "rbxassetid://10709762727",
				["arrow-big-up"] = "rbxassetid://10709762879",
				["arrow-down"] = "rbxassetid://10709767827",
				["arrow-down-circle"] = "rbxassetid://10709763034",
				["arrow-down-left"] = "rbxassetid://10709767656",
				["arrow-down-right"] = "rbxassetid://10709767750",
				["arrow-left"] = "rbxassetid://10709768114",
				["arrow-left-circle"] = "rbxassetid://10709767936",
				["arrow-left-right"] = "rbxassetid://10709768019",
				["arrow-right"] = "rbxassetid://10709768347",
				["arrow-right-circle"] = "rbxassetid://10709768226",
				["arrow-up"] = "rbxassetid://10709768939",
				["arrow-up-circle"] = "rbxassetid://10709768432",
				["arrow-up-down"] = "rbxassetid://10709768538",
				["arrow-up-left"] = "rbxassetid://10709768661",
				["arrow-up-right"] = "rbxassetid://10709768787",
				["asterisk"] = "rbxassetid://10709769095",
				["at-sign"] = "rbxassetid://10709769286",
				["award"] = "rbxassetid://10709769406",
				["axe"] = "rbxassetid://10709769508",
				["axis-3d"] = "rbxassetid://10709769598",
				["baby"] = "rbxassetid://10709769732",
				["backpack"] = "rbxassetid://10709769841",
				["baggage-claim"] = "rbxassetid://10709769935",
				["banana"] = "rbxassetid://10709770005",
				["banknote"] = "rbxassetid://10709770178",
				["bar-chart"] = "rbxassetid://10709773755",
				["bar-chart-2"] = "rbxassetid://10709770317",
				["bar-chart-3"] = "rbxassetid://10709770431",
				["bar-chart-4"] = "rbxassetid://10709770560",
				["bar-chart-horizontal"] = "rbxassetid://10709773669",
				["barcode"] = "rbxassetid://10747360675",
				["baseline"] = "rbxassetid://10709773863",
				["bath"] = "rbxassetid://10709773963",
				["battery"] = "rbxassetid://10709774640",
				["battery-charging"] = "rbxassetid://10709774068",
				["battery-full"] = "rbxassetid://10709774206",
				["battery-low"] = "rbxassetid://10709774370",
				["battery-medium"] = "rbxassetid://10709774513",
				["beaker"] = "rbxassetid://10709774756",
				["bed"] = "rbxassetid://10709775036",
				["bed-double"] = "rbxassetid://10709774864",
				["bed-single"] = "rbxassetid://10709774968",
				["beer"] = "rbxassetid://10709775167",
				["bell"] = "rbxassetid://10709775704",
				["bell-minus"] = "rbxassetid://10709775241",
				["bell-off"] = "rbxassetid://10709775320",
				["bell-plus"] = "rbxassetid://10709775448",
				["bell-ring"] = "rbxassetid://10709775560",
				["bike"] = "rbxassetid://10709775894",
				["binary"] = "rbxassetid://10709776050",
				["bitcoin"] = "rbxassetid://10709776126",
				["bluetooth"] = "rbxassetid://10709776655",
				["bluetooth-connected"] = "rbxassetid://10709776240",
				["bluetooth-off"] = "rbxassetid://10709776344",
				["bluetooth-searching"] = "rbxassetid://10709776501",
				["bold"] = "rbxassetid://10747813908",
				["bomb"] = "rbxassetid://10709781460",
				["bone"] = "rbxassetid://10709781605",
				["book"] = "rbxassetid://10709781824",
				["book-open"] = "rbxassetid://10709781717",
				["bookmark"] = "rbxassetid://10709782154",
				["bookmark-minus"] = "rbxassetid://10709781919",
				["bookmark-plus"] = "rbxassetid://10709782044",
				["bot"] = "rbxassetid://10709782230",
				["box"] = "rbxassetid://10709782497",
				["box-select"] = "rbxassetid://10709782342",
				["boxes"] = "rbxassetid://10709782582",
				["briefcase"] = "rbxassetid://10709782662",
				["brush"] = "rbxassetid://10709782758",
				["bug"] = "rbxassetid://10709782845",
				["building"] = "rbxassetid://10709783051",
				["building-2"] = "rbxassetid://10709782939",
				["bus"] = "rbxassetid://10709783137",
				["cake"] = "rbxassetid://10709783217",
				["calculator"] = "rbxassetid://10709783311",
				["calendar"] = "rbxassetid://10709789505",
				["calendar-check"] = "rbxassetid://10709783474",
				["calendar-check-2"] = "rbxassetid://10709783392",
				["calendar-clock"] = "rbxassetid://10709783577",
				["calendar-days"] = "rbxassetid://10709783673",
				["calendar-heart"] = "rbxassetid://10709783835",
				["calendar-minus"] = "rbxassetid://10709783959",
				["calendar-off"] = "rbxassetid://10709788784",
				["calendar-plus"] = "rbxassetid://10709788937",
				["calendar-range"] = "rbxassetid://10709789053",
				["calendar-search"] = "rbxassetid://10709789200",
				["calendar-x"] = "rbxassetid://10709789407",
				["calendar-x-2"] = "rbxassetid://10709789329",
				["camera"] = "rbxassetid://10709789686",
				["camera-off"] = "rbxassetid://10747822677",
				["car"] = "rbxassetid://10709789810",
				["carrot"] = "rbxassetid://10709789960",
				["cast"] = "rbxassetid://10709790097",
				["charge"] = "rbxassetid://10709790202",
				["check"] = "rbxassetid://10709790644",
				["check-circle"] = "rbxassetid://10709790387",
				["check-circle-2"] = "rbxassetid://10709790298",
				["check-square"] = "rbxassetid://10709790537",
				["chef-hat"] = "rbxassetid://10709790757",
				["cherry"] = "rbxassetid://10709790875",
				["chevron-down"] = "rbxassetid://10709790948",
				["chevron-first"] = "rbxassetid://10709791015",
				["chevron-last"] = "rbxassetid://10709791130",
				["chevron-left"] = "rbxassetid://10709791281",
				["chevron-right"] = "rbxassetid://10709791437",
				["chevron-up"] = "rbxassetid://10709791523",
				["chevrons-down"] = "rbxassetid://10709796864",
				["chevrons-down-up"] = "rbxassetid://10709791632",
				["chevrons-left"] = "rbxassetid://10709797151",
				["chevrons-left-right"] = "rbxassetid://10709797006",
				["chevrons-right"] = "rbxassetid://10709797382",
				["chevrons-right-left"] = "rbxassetid://10709797274",
				["chevrons-up"] = "rbxassetid://10709797622",
				["chevrons-up-down"] = "rbxassetid://10709797508",
				["chrome"] = "rbxassetid://10709797725",
				["circle"] = "rbxassetid://10709798174",
				["circle-dot"] = "rbxassetid://10709797837",
				["circle-ellipsis"] = "rbxassetid://10709797985",
				["circle-slashed"] = "rbxassetid://10709798100",
				["citrus"] = "rbxassetid://10709798276",
				["clapperboard"] = "rbxassetid://10709798350",
				["clipboard"] = "rbxassetid://10709799288",
				["clipboard-check"] = "rbxassetid://10709798443",
				["clipboard-copy"] = "rbxassetid://10709798574",
				["clipboard-edit"] = "rbxassetid://10709798682",
				["clipboard-list"] = "rbxassetid://10709798792",
				["clipboard-signature"] = "rbxassetid://10709798890",
				["clipboard-type"] = "rbxassetid://10709798999",
				["clipboard-x"] = "rbxassetid://10709799124",
				["clock"] = "rbxassetid://10709805144",
				["clock-1"] = "rbxassetid://10709799535",
				["clock-10"] = "rbxassetid://10709799718",
				["clock-11"] = "rbxassetid://10709799818",
				["clock-12"] = "rbxassetid://10709799962",
				["clock-2"] = "rbxassetid://10709803876",
				["clock-3"] = "rbxassetid://10709803989",
				["clock-4"] = "rbxassetid://10709804164",
				["clock-5"] = "rbxassetid://10709804291",
				["clock-6"] = "rbxassetid://10709804435",
				["clock-7"] = "rbxassetid://10709804599",
				["clock-8"] = "rbxassetid://10709804784",
				["clock-9"] = "rbxassetid://10709804996",
				["cloud"] = "rbxassetid://10709806740",
				["cloud-cog"] = "rbxassetid://10709805262",
				["cloud-drizzle"] = "rbxassetid://10709805371",
				["cloud-fog"] = "rbxassetid://10709805477",
				["cloud-hail"] = "rbxassetid://10709805596",
				["cloud-lightning"] = "rbxassetid://10709805727",
				["cloud-moon"] = "rbxassetid://10709805942",
				["cloud-moon-rain"] = "rbxassetid://10709805838",
				["cloud-off"] = "rbxassetid://10709806060",
				["cloud-rain"] = "rbxassetid://10709806277",
				["cloud-rain-wind"] = "rbxassetid://10709806166",
				["cloud-snow"] = "rbxassetid://10709806374",
				["cloud-sun"] = "rbxassetid://10709806631",
				["cloud-sun-rain"] = "rbxassetid://10709806475",
				["cloudy"] = "rbxassetid://10709806859",
				["clover"] = "rbxassetid://10709806995",
				["code"] = "rbxassetid://10709810463",
				["code-2"] = "rbxassetid://10709807111",
				["codepen"] = "rbxassetid://10709810534",
				["codesandbox"] = "rbxassetid://10709810676",
				["coffee"] = "rbxassetid://10709810814",
				["cog"] = "rbxassetid://10709810948",
				["coins"] = "rbxassetid://10709811110",
				["columns"] = "rbxassetid://10709811261",
				["command"] = "rbxassetid://10709811365",
				["compass"] = "rbxassetid://10709811445",
				["component"] = "rbxassetid://10709811595",
				["concierge-bell"] = "rbxassetid://10709811706",
				["connection"] = "rbxassetid://10747361219",
				["contact"] = "rbxassetid://10709811834",
				["contrast"] = "rbxassetid://10709811939",
				["cookie"] = "rbxassetid://10709812067",
				["copy"] = "rbxassetid://10709812159",
				["copyleft"] = "rbxassetid://10709812251",
				["copyright"] = "rbxassetid://10709812311",
				["corner-down-left"] = "rbxassetid://10709812396",
				["corner-down-right"] = "rbxassetid://10709812485",
				["corner-left-down"] = "rbxassetid://10709812632",
				["corner-left-up"] = "rbxassetid://10709812784",
				["corner-right-down"] = "rbxassetid://10709812939",
				["corner-right-up"] = "rbxassetid://10709813094",
				["corner-up-left"] = "rbxassetid://10709813185",
				["corner-up-right"] = "rbxassetid://10709813281",
				["cpu"] = "rbxassetid://10709813383",
				["croissant"] = "rbxassetid://10709818125",
				["crop"] = "rbxassetid://10709818245",
				["cross"] = "rbxassetid://10709818399",
				["crosshair"] = "rbxassetid://10709818534",
				["crown"] = "rbxassetid://10709818626",
				["cup-soda"] = "rbxassetid://10709818763",
				["curly-braces"] = "rbxassetid://10709818847",
				["currency"] = "rbxassetid://10709818931",
				["database"] = "rbxassetid://10709818996",
				["delete"] = "rbxassetid://10709819059",
				["diamond"] = "rbxassetid://10709819149",
				["dice-1"] = "rbxassetid://10709819266",
				["dice-2"] = "rbxassetid://10709819361",
				["dice-3"] = "rbxassetid://10709819508",
				["dice-4"] = "rbxassetid://10709819670",
				["dice-5"] = "rbxassetid://10709819801",
				["dice-6"] = "rbxassetid://10709819896",
				["dices"] = "rbxassetid://10723343321",
				["diff"] = "rbxassetid://10723343416",
				["disc"] = "rbxassetid://10723343537",
				["divide"] = "rbxassetid://10723343805",
				["divide-circle"] = "rbxassetid://10723343636",
				["divide-square"] = "rbxassetid://10723343737",
				["dollar-sign"] = "rbxassetid://10723343958",
				["download"] = "rbxassetid://10723344270",
				["download-cloud"] = "rbxassetid://10723344088",
				["droplet"] = "rbxassetid://10723344432",
				["droplets"] = "rbxassetid://10734883356",
				["drumstick"] = "rbxassetid://10723344737",
				["edit"] = "rbxassetid://10734883598",
				["edit-2"] = "rbxassetid://10723344885",
				["edit-3"] = "rbxassetid://10723345088",
				["egg"] = "rbxassetid://10723345518",
				["egg-fried"] = "rbxassetid://10723345347",
				["electricity"] = "rbxassetid://10723345749",
				["electricity-off"] = "rbxassetid://10723345643",
				["equal"] = "rbxassetid://10723345990",
				["equal-not"] = "rbxassetid://10723345866",
				["eraser"] = "rbxassetid://10723346158",
				["euro"] = "rbxassetid://10723346372",
				["expand"] = "rbxassetid://10723346553",
				["external-link"] = "rbxassetid://10723346684",
				["eye"] = "rbxassetid://10723346959",
				["eye-off"] = "rbxassetid://10723346871",
				["factory"] = "rbxassetid://10723347051",
				["fan"] = "rbxassetid://10723354359",
				["fast-forward"] = "rbxassetid://10723354521",
				["feather"] = "rbxassetid://10723354671",
				["figma"] = "rbxassetid://10723354801",
				["file"] = "rbxassetid://10723374641",
				["file-archive"] = "rbxassetid://10723354921",
				["file-audio"] = "rbxassetid://10723355148",
				["file-audio-2"] = "rbxassetid://10723355026",
				["file-axis-3d"] = "rbxassetid://10723355272",
				["file-badge"] = "rbxassetid://10723355622",
				["file-badge-2"] = "rbxassetid://10723355451",
				["file-bar-chart"] = "rbxassetid://10723355887",
				["file-bar-chart-2"] = "rbxassetid://10723355746",
				["file-box"] = "rbxassetid://10723355989",
				["file-check"] = "rbxassetid://10723356210",
				["file-check-2"] = "rbxassetid://10723356100",
				["file-clock"] = "rbxassetid://10723356329",
				["file-code"] = "rbxassetid://10723356507",
				["file-cog"] = "rbxassetid://10723356830",
				["file-cog-2"] = "rbxassetid://10723356676",
				["file-diff"] = "rbxassetid://10723357039",
				["file-digit"] = "rbxassetid://10723357151",
				["file-down"] = "rbxassetid://10723357322",
				["file-edit"] = "rbxassetid://10723357495",
				["file-heart"] = "rbxassetid://10723357637",
				["file-image"] = "rbxassetid://10723357790",
				["file-input"] = "rbxassetid://10723357933",
				["file-json"] = "rbxassetid://10723364435",
				["file-json-2"] = "rbxassetid://10723364361",
				["file-key"] = "rbxassetid://10723364605",
				["file-key-2"] = "rbxassetid://10723364515",
				["file-line-chart"] = "rbxassetid://10723364725",
				["file-lock"] = "rbxassetid://10723364957",
				["file-lock-2"] = "rbxassetid://10723364861",
				["file-minus"] = "rbxassetid://10723365254",
				["file-minus-2"] = "rbxassetid://10723365086",
				["file-output"] = "rbxassetid://10723365457",
				["file-pie-chart"] = "rbxassetid://10723365598",
				["file-plus"] = "rbxassetid://10723365877",
				["file-plus-2"] = "rbxassetid://10723365766",
				["file-question"] = "rbxassetid://10723365987",
				["file-scan"] = "rbxassetid://10723366167",
				["file-search"] = "rbxassetid://10723366550",
				["file-search-2"] = "rbxassetid://10723366340",
				["file-signature"] = "rbxassetid://10723366741",
				["file-spreadsheet"] = "rbxassetid://10723366962",
				["file-symlink"] = "rbxassetid://10723367098",
				["file-terminal"] = "rbxassetid://10723367244",
				["file-text"] = "rbxassetid://10723367380",
				["file-type"] = "rbxassetid://10723367606",
				["file-type-2"] = "rbxassetid://10723367509",
				["file-up"] = "rbxassetid://10723367734",
				["file-video"] = "rbxassetid://10723373884",
				["file-video-2"] = "rbxassetid://10723367834",
				["file-volume"] = "rbxassetid://10723374172",
				["file-volume-2"] = "rbxassetid://10723374030",
				["file-warning"] = "rbxassetid://10723374276",
				["file-x"] = "rbxassetid://10723374544",
				["file-x-2"] = "rbxassetid://10723374378",
				["files"] = "rbxassetid://10723374759",
				["film"] = "rbxassetid://10723374981",
				["filter"] = "rbxassetid://10723375128",
				["fingerprint"] = "rbxassetid://10723375250",
				["flag"] = "rbxassetid://10723375890",
				["flag-off"] = "rbxassetid://10723375443",
				["flag-triangle-left"] = "rbxassetid://10723375608",
				["flag-triangle-right"] = "rbxassetid://10723375727",
				["flame"] = "rbxassetid://10723376114",
				["flashlight"] = "rbxassetid://10723376471",
				["flashlight-off"] = "rbxassetid://10723376365",
				["flask-conical"] = "rbxassetid://10734883986",
				["flask-round"] = "rbxassetid://10723376614",
				["flip-horizontal"] = "rbxassetid://10723376884",
				["flip-horizontal-2"] = "rbxassetid://10723376745",
				["flip-vertical"] = "rbxassetid://10723377138",
				["flip-vertical-2"] = "rbxassetid://10723377026",
				["flower"] = "rbxassetid://10747830374",
				["flower-2"] = "rbxassetid://10723377305",
				["focus"] = "rbxassetid://10723377537",
				["folder"] = "rbxassetid://10723387563",
				["folder-archive"] = "rbxassetid://10723384478",
				["folder-check"] = "rbxassetid://10723384605",
				["folder-clock"] = "rbxassetid://10723384731",
				["folder-closed"] = "rbxassetid://10723384893",
				["folder-cog"] = "rbxassetid://10723385213",
				["folder-cog-2"] = "rbxassetid://10723385036",
				["folder-down"] = "rbxassetid://10723385338",
				["folder-edit"] = "rbxassetid://10723385445",
				["folder-heart"] = "rbxassetid://10723385545",
				["folder-input"] = "rbxassetid://10723385721",
				["folder-key"] = "rbxassetid://10723385848",
				["folder-lock"] = "rbxassetid://10723386005",
				["folder-minus"] = "rbxassetid://10723386127",
				["folder-open"] = "rbxassetid://10723386277",
				["folder-output"] = "rbxassetid://10723386386",
				["folder-plus"] = "rbxassetid://10723386531",
				["folder-search"] = "rbxassetid://10723386787",
				["folder-search-2"] = "rbxassetid://10723386674",
				["folder-symlink"] = "rbxassetid://10723386930",
				["folder-tree"] = "rbxassetid://10723387085",
				["folder-up"] = "rbxassetid://10723387265",
				["folder-x"] = "rbxassetid://10723387448",
				["folders"] = "rbxassetid://10723387721",
				["form-input"] = "rbxassetid://10723387841",
				["forward"] = "rbxassetid://10723388016",
				["frame"] = "rbxassetid://10723394389",
				["framer"] = "rbxassetid://10723394565",
				["frown"] = "rbxassetid://10723394681",
				["fuel"] = "rbxassetid://10723394846",
				["function-square"] = "rbxassetid://10723395041",
				["gamepad"] = "rbxassetid://10723395457",
				["gamepad-2"] = "rbxassetid://10723395215",
				["gauge"] = "rbxassetid://10723395708",
				["gavel"] = "rbxassetid://10723395896",
				["gem"] = "rbxassetid://10723396000",
				["ghost"] = "rbxassetid://10723396107",
				["gift"] = "rbxassetid://10723396402",
				["gift-card"] = "rbxassetid://10723396225",
				["git-branch"] = "rbxassetid://10723396676",
				["git-branch-plus"] = "rbxassetid://10723396542",
				["git-commit"] = "rbxassetid://10723396812",
				["git-compare"] = "rbxassetid://10723396954",
				["git-fork"] = "rbxassetid://10723397049",
				["git-merge"] = "rbxassetid://10723397165",
				["git-pull-request"] = "rbxassetid://10723397431",
				["git-pull-request-closed"] = "rbxassetid://10723397268",
				["git-pull-request-draft"] = "rbxassetid://10734884302",
				["glass"] = "rbxassetid://10723397788",
				["glass-2"] = "rbxassetid://10723397529",
				["glass-water"] = "rbxassetid://10723397678",
				["glasses"] = "rbxassetid://10723397895",
				["globe"] = "rbxassetid://10723404337",
				["globe-2"] = "rbxassetid://10723398002",
				["grab"] = "rbxassetid://10723404472",
				["graduation-cap"] = "rbxassetid://10723404691",
				["grape"] = "rbxassetid://10723404822",
				["grid"] = "rbxassetid://10723404936",
				["grip-horizontal"] = "rbxassetid://10723405089",
				["grip-vertical"] = "rbxassetid://10723405236",
				["hammer"] = "rbxassetid://10723405360",
				["hand"] = "rbxassetid://10723405649",
				["hand-metal"] = "rbxassetid://10723405508",
				["hard-drive"] = "rbxassetid://10723405749",
				["hard-hat"] = "rbxassetid://10723405859",
				["hash"] = "rbxassetid://10723405975",
				["haze"] = "rbxassetid://10723406078",
				["headphones"] = "rbxassetid://10723406165",
				["heart"] = "rbxassetid://10723406885",
				["heart-crack"] = "rbxassetid://10723406299",
				["heart-handshake"] = "rbxassetid://10723406480",
				["heart-off"] = "rbxassetid://10723406662",
				["heart-pulse"] = "rbxassetid://10723406795",
				["help-circle"] = "rbxassetid://10723406988",
				["hexagon"] = "rbxassetid://10723407092",
				["highlighter"] = "rbxassetid://10723407192",
				["history"] = "rbxassetid://10723407335",
				["home"] = "rbxassetid://10723407389",
				["hourglass"] = "rbxassetid://10723407498",
				["ice-cream"] = "rbxassetid://10723414308",
				["image"] = "rbxassetid://10723415040",
				["image-minus"] = "rbxassetid://10723414487",
				["image-off"] = "rbxassetid://10723414677",
				["image-plus"] = "rbxassetid://10723414827",
				["import"] = "rbxassetid://10723415205",
				["inbox"] = "rbxassetid://10723415335",
				["indent"] = "rbxassetid://10723415494",
				["indian-rupee"] = "rbxassetid://10723415642",
				["infinity"] = "rbxassetid://10723415766",
				["info"] = "rbxassetid://10723415903",
				["inspect"] = "rbxassetid://10723416057",
				["italic"] = "rbxassetid://10723416195",
				["japanese-yen"] = "rbxassetid://10723416363",
				["joystick"] = "rbxassetid://10723416527",
				["key"] = "rbxassetid://10723416652",
				["keyboard"] = "rbxassetid://10723416765",
				["lamp"] = "rbxassetid://10723417513",
				["lamp-ceiling"] = "rbxassetid://10723416922",
				["lamp-desk"] = "rbxassetid://10723417016",
				["lamp-floor"] = "rbxassetid://10723417131",
				["lamp-wall-down"] = "rbxassetid://10723417240",
				["lamp-wall-up"] = "rbxassetid://10723417356",
				["landmark"] = "rbxassetid://10723417608",
				["languages"] = "rbxassetid://10723417703",
				["laptop"] = "rbxassetid://10723423881",
				["laptop-2"] = "rbxassetid://10723417797",
				["lasso"] = "rbxassetid://10723424235",
				["lasso-select"] = "rbxassetid://10723424058",
				["laugh"] = "rbxassetid://10723424372",
				["layers"] = "rbxassetid://10723424505",
				["layout"] = "rbxassetid://10723425376",
				["layout-dashboard"] = "rbxassetid://10723424646",
				["layout-grid"] = "rbxassetid://10723424838",
				["layout-list"] = "rbxassetid://10723424963",
				["layout-template"] = "rbxassetid://10723425187",
				["leaf"] = "rbxassetid://10723425539",
				["library"] = "rbxassetid://10723425615",
				["life-buoy"] = "rbxassetid://10723425685",
				["lightbulb"] = "rbxassetid://10723425852",
				["lightbulb-off"] = "rbxassetid://10723425762",
				["line-chart"] = "rbxassetid://10723426393",
				["link"] = "rbxassetid://10723426722",
				["link-2"] = "rbxassetid://10723426595",
				["link-2-off"] = "rbxassetid://10723426513",
				["list"] = "rbxassetid://10723433811",
				["list-checks"] = "rbxassetid://10734884548",
				["list-end"] = "rbxassetid://10723426886",
				["list-minus"] = "rbxassetid://10723426986",
				["list-music"] = "rbxassetid://10723427081",
				["list-ordered"] = "rbxassetid://10723427199",
				["list-plus"] = "rbxassetid://10723427334",
				["list-start"] = "rbxassetid://10723427494",
				["list-video"] = "rbxassetid://10723427619",
				["list-x"] = "rbxassetid://10723433655",
				["loader"] = "rbxassetid://10723434070",
				["loader-2"] = "rbxassetid://10723433935",
				["locate"] = "rbxassetid://10723434557",
				["locate-fixed"] = "rbxassetid://10723434236",
				["locate-off"] = "rbxassetid://10723434379",
				["lock"] = "rbxassetid://10723434711",
				["log-in"] = "rbxassetid://10723434830",
				["log-out"] = "rbxassetid://10723434906",
				["luggage"] = "rbxassetid://10723434993",
				["magnet"] = "rbxassetid://10723435069",
				["mail"] = "rbxassetid://10734885430",
				["mail-check"] = "rbxassetid://10723435182",
				["mail-minus"] = "rbxassetid://10723435261",
				["mail-open"] = "rbxassetid://10723435342",
				["mail-plus"] = "rbxassetid://10723435443",
				["mail-question"] = "rbxassetid://10723435515",
				["mail-search"] = "rbxassetid://10734884739",
				["mail-warning"] = "rbxassetid://10734885015",
				["mail-x"] = "rbxassetid://10734885247",
				["mails"] = "rbxassetid://10734885614",
				["map"] = "rbxassetid://10734886202",
				["map-pin"] = "rbxassetid://10734886004",
				["map-pin-off"] = "rbxassetid://10734885803",
				["maximize"] = "rbxassetid://10734886735",
				["maximize-2"] = "rbxassetid://10734886496",
				["medal"] = "rbxassetid://10734887072",
				["megaphone"] = "rbxassetid://10734887454",
				["megaphone-off"] = "rbxassetid://10734887311",
				["meh"] = "rbxassetid://10734887603",
				["menu"] = "rbxassetid://10734887784",
				["message-circle"] = "rbxassetid://10734888000",
				["message-square"] = "rbxassetid://10734888228",
				["mic"] = "rbxassetid://10734888864",
				["mic-2"] = "rbxassetid://10734888430",
				["mic-off"] = "rbxassetid://10734888646",
				["microscope"] = "rbxassetid://10734889106",
				["microwave"] = "rbxassetid://10734895076",
				["milestone"] = "rbxassetid://10734895310",
				["minimize"] = "rbxassetid://10734895698",
				["minimize-2"] = "rbxassetid://10734895530",
				["minus"] = "rbxassetid://10734896206",
				["minus-circle"] = "rbxassetid://10734895856",
				["minus-square"] = "rbxassetid://10734896029",
				["monitor"] = "rbxassetid://10734896881",
				["monitor-off"] = "rbxassetid://10734896360",
				["monitor-speaker"] = "rbxassetid://10734896512",
				["moon"] = "rbxassetid://10734897102",
				["more-horizontal"] = "rbxassetid://10734897250",
				["more-vertical"] = "rbxassetid://10734897387",
				["mountain"] = "rbxassetid://10734897956",
				["mountain-snow"] = "rbxassetid://10734897665",
				["mouse"] = "rbxassetid://10734898592",
				["mouse-pointer"] = "rbxassetid://10734898476",
				["mouse-pointer-2"] = "rbxassetid://10734898194",
				["mouse-pointer-click"] = "rbxassetid://10734898355",
				["move"] = "rbxassetid://10734900011",
				["move-3d"] = "rbxassetid://10734898756",
				["move-diagonal"] = "rbxassetid://10734899164",
				["move-diagonal-2"] = "rbxassetid://10734898934",
				["move-horizontal"] = "rbxassetid://10734899414",
				["move-vertical"] = "rbxassetid://10734899821",
				["music"] = "rbxassetid://10734905958",
				["music-2"] = "rbxassetid://10734900215",
				["music-3"] = "rbxassetid://10734905665",
				["music-4"] = "rbxassetid://10734905823",
				["navigation"] = "rbxassetid://10734906744",
				["navigation-2"] = "rbxassetid://10734906332",
				["navigation-2-off"] = "rbxassetid://10734906144",
				["navigation-off"] = "rbxassetid://10734906580",
				["network"] = "rbxassetid://10734906975",
				["newspaper"] = "rbxassetid://10734907168",
				["octagon"] = "rbxassetid://10734907361",
				["option"] = "rbxassetid://10734907649",
				["outdent"] = "rbxassetid://10734907933",
				["package"] = "rbxassetid://10734909540",
				["package-2"] = "rbxassetid://10734908151",
				["package-check"] = "rbxassetid://10734908384",
				["package-minus"] = "rbxassetid://10734908626",
				["package-open"] = "rbxassetid://10734908793",
				["package-plus"] = "rbxassetid://10734909016",
				["package-search"] = "rbxassetid://10734909196",
				["package-x"] = "rbxassetid://10734909375",
				["paint-bucket"] = "rbxassetid://10734909847",
				["paintbrush"] = "rbxassetid://10734910187",
				["paintbrush-2"] = "rbxassetid://10734910030",
				["palette"] = "rbxassetid://10734910430",
				["palmtree"] = "rbxassetid://10734910680",
				["paperclip"] = "rbxassetid://10734910927",
				["party-popper"] = "rbxassetid://10734918735",
				["pause"] = "rbxassetid://10734919336",
				["pause-circle"] = "rbxassetid://10735024209",
				["pause-octagon"] = "rbxassetid://10734919143",
				["pen-tool"] = "rbxassetid://10734919503",
				["pencil"] = "rbxassetid://10734919691",
				["percent"] = "rbxassetid://10734919919",
				["person-standing"] = "rbxassetid://10734920149",
				["phone"] = "rbxassetid://10734921524",
				["phone-call"] = "rbxassetid://10734920305",
				["phone-forwarded"] = "rbxassetid://10734920508",
				["phone-incoming"] = "rbxassetid://10734920694",
				["phone-missed"] = "rbxassetid://10734920845",
				["phone-off"] = "rbxassetid://10734921077",
				["phone-outgoing"] = "rbxassetid://10734921288",
				["pie-chart"] = "rbxassetid://10734921727",
				["piggy-bank"] = "rbxassetid://10734921935",
				["pin"] = "rbxassetid://10734922324",
				["pin-off"] = "rbxassetid://10734922180",
				["pipette"] = "rbxassetid://10734922497",
				["pizza"] = "rbxassetid://10734922774",
				["plane"] = "rbxassetid://10734922971",
				["play"] = "rbxassetid://10734923549",
				["play-circle"] = "rbxassetid://10734923214",
				["plus"] = "rbxassetid://10734924532",
				["plus-circle"] = "rbxassetid://10734923868",
				["plus-square"] = "rbxassetid://10734924219",
				["podcast"] = "rbxassetid://10734929553",
				["pointer"] = "rbxassetid://10734929723",
				["pound-sterling"] = "rbxassetid://10734929981",
				["power"] = "rbxassetid://10734930466",
				["power-off"] = "rbxassetid://10734930257",
				["printer"] = "rbxassetid://10734930632",
				["puzzle"] = "rbxassetid://10734930886",
				["quote"] = "rbxassetid://10734931234",
				["radio"] = "rbxassetid://10734931596",
				["radio-receiver"] = "rbxassetid://10734931402",
				["rectangle-horizontal"] = "rbxassetid://10734931777",
				["rectangle-vertical"] = "rbxassetid://10734932081",
				["recycle"] = "rbxassetid://10734932295",
				["redo"] = "rbxassetid://10734932822",
				["redo-2"] = "rbxassetid://10734932586",
				["refresh-ccw"] = "rbxassetid://10734933056",
				["refresh-cw"] = "rbxassetid://10734933222",
				["refrigerator"] = "rbxassetid://10734933465",
				["regex"] = "rbxassetid://10734933655",
				["repeat"] = "rbxassetid://10734933966",
				["repeat-1"] = "rbxassetid://10734933826",
				["reply"] = "rbxassetid://10734934252",
				["reply-all"] = "rbxassetid://10734934132",
				["rewind"] = "rbxassetid://10734934347",
				["rocket"] = "rbxassetid://10734934585",
				["rocking-chair"] = "rbxassetid://10734939942",
				["rotate-3d"] = "rbxassetid://10734940107",
				["rotate-ccw"] = "rbxassetid://10734940376",
				["rotate-cw"] = "rbxassetid://10734940654",
				["rss"] = "rbxassetid://10734940825",
				["ruler"] = "rbxassetid://10734941018",
				["russian-ruble"] = "rbxassetid://10734941199",
				["sailboat"] = "rbxassetid://10734941354",
				["save"] = "rbxassetid://10734941499",
				["scale"] = "rbxassetid://10734941912",
				["scale-3d"] = "rbxassetid://10734941739",
				["scaling"] = "rbxassetid://10734942072",
				["scan"] = "rbxassetid://10734942565",
				["scan-face"] = "rbxassetid://10734942198",
				["scan-line"] = "rbxassetid://10734942351",
				["scissors"] = "rbxassetid://10734942778",
				["screen-share"] = "rbxassetid://10734943193",
				["screen-share-off"] = "rbxassetid://10734942967",
				["scroll"] = "rbxassetid://10734943448",
				["search"] = "rbxassetid://10734943674",
				["send"] = "rbxassetid://10734943902",
				["separator-horizontal"] = "rbxassetid://10734944115",
				["separator-vertical"] = "rbxassetid://10734944326",
				["server"] = "rbxassetid://10734949856",
				["server-cog"] = "rbxassetid://10734944444",
				["server-crash"] = "rbxassetid://10734944554",
				["server-off"] = "rbxassetid://10734944668",
				["settings"] = "rbxassetid://10734950309",
				["settings-2"] = "rbxassetid://10734950020",
				["share"] = "rbxassetid://10734950813",
				["share-2"] = "rbxassetid://10734950553",
				["sheet"] = "rbxassetid://10734951038",
				["shield"] = "rbxassetid://10734951847",
				["shield-alert"] = "rbxassetid://10734951173",
				["shield-check"] = "rbxassetid://10734951367",
				["shield-close"] = "rbxassetid://10734951535",
				["shield-off"] = "rbxassetid://10734951684",
				["shirt"] = "rbxassetid://10734952036",
				["shopping-bag"] = "rbxassetid://10734952273",
				["shopping-cart"] = "rbxassetid://10734952479",
				["shovel"] = "rbxassetid://10734952773",
				["shower-head"] = "rbxassetid://10734952942",
				["shrink"] = "rbxassetid://10734953073",
				["shrub"] = "rbxassetid://10734953241",
				["shuffle"] = "rbxassetid://10734953451",
				["sidebar"] = "rbxassetid://10734954301",
				["sidebar-close"] = "rbxassetid://10734953715",
				["sidebar-open"] = "rbxassetid://10734954000",
				["sigma"] = "rbxassetid://10734954538",
				["signal"] = "rbxassetid://10734961133",
				["signal-high"] = "rbxassetid://10734954807",
				["signal-low"] = "rbxassetid://10734955080",
				["signal-medium"] = "rbxassetid://10734955336",
				["signal-zero"] = "rbxassetid://10734960878",
				["siren"] = "rbxassetid://10734961284",
				["skip-back"] = "rbxassetid://10734961526",
				["skip-forward"] = "rbxassetid://10734961809",
				["skull"] = "rbxassetid://10734962068",
				["slack"] = "rbxassetid://10734962339",
				["slash"] = "rbxassetid://10734962600",
				["slice"] = "rbxassetid://10734963024",
				["sliders"] = "rbxassetid://10734963400",
				["sliders-horizontal"] = "rbxassetid://10734963191",
				["smartphone"] = "rbxassetid://10734963940",
				["smartphone-charging"] = "rbxassetid://10734963671",
				["smile"] = "rbxassetid://10734964441",
				["smile-plus"] = "rbxassetid://10734964188",
				["snowflake"] = "rbxassetid://10734964600",
				["sofa"] = "rbxassetid://10734964852",
				["sort-asc"] = "rbxassetid://10734965115",
				["sort-desc"] = "rbxassetid://10734965287",
				["speaker"] = "rbxassetid://10734965419",
				["sprout"] = "rbxassetid://10734965572",
				["square"] = "rbxassetid://10734965702",
				["star"] = "rbxassetid://10734966248",
				["star-half"] = "rbxassetid://10734965897",
				["star-off"] = "rbxassetid://10734966097",
				["stethoscope"] = "rbxassetid://10734966384",
				["sticker"] = "rbxassetid://10734972234",
				["sticky-note"] = "rbxassetid://10734972463",
				["stop-circle"] = "rbxassetid://10734972621",
				["stretch-horizontal"] = "rbxassetid://10734972862",
				["stretch-vertical"] = "rbxassetid://10734973130",
				["strikethrough"] = "rbxassetid://10734973290",
				["subscript"] = "rbxassetid://10734973457",
				["sun"] = "rbxassetid://10734974297",
				["sun-dim"] = "rbxassetid://10734973645",
				["sun-medium"] = "rbxassetid://10734973778",
				["sun-moon"] = "rbxassetid://10734973999",
				["sun-snow"] = "rbxassetid://10734974130",
				["sunrise"] = "rbxassetid://10734974522",
				["sunset"] = "rbxassetid://10734974689",
				["superscript"] = "rbxassetid://10734974850",
				["swiss-franc"] = "rbxassetid://10734975024",
				["switch-camera"] = "rbxassetid://10734975214",
				["sword"] = "rbxassetid://10734975486",
				["swords"] = "rbxassetid://10734975692",
				["syringe"] = "rbxassetid://10734975932",
				["table"] = "rbxassetid://10734976230",
				["table-2"] = "rbxassetid://10734976097",
				["tablet"] = "rbxassetid://10734976394",
				["tag"] = "rbxassetid://10734976528",
				["tags"] = "rbxassetid://10734976739",
				["target"] = "rbxassetid://10734977012",
				["tent"] = "rbxassetid://10734981750",
				["terminal"] = "rbxassetid://10734982144",
				["terminal-square"] = "rbxassetid://10734981995",
				["text-cursor"] = "rbxassetid://10734982395",
				["text-cursor-input"] = "rbxassetid://10734982297",
				["thermometer"] = "rbxassetid://10734983134",
				["thermometer-snowflake"] = "rbxassetid://10734982571",
				["thermometer-sun"] = "rbxassetid://10734982771",
				["thumbs-down"] = "rbxassetid://10734983359",
				["thumbs-up"] = "rbxassetid://10734983629",
				["ticket"] = "rbxassetid://10734983868",
				["timer"] = "rbxassetid://10734984606",
				["timer-off"] = "rbxassetid://10734984138",
				["timer-reset"] = "rbxassetid://10734984355",
				["toggle-left"] = "rbxassetid://10734984834",
				["toggle-right"] = "rbxassetid://10734985040",
				["tornado"] = "rbxassetid://10734985247",
				["toy-brick"] = "rbxassetid://10747361919",
				["train"] = "rbxassetid://10747362105",
				["trash"] = "rbxassetid://10747362393",
				["trash-2"] = "rbxassetid://10747362241",
				["tree-deciduous"] = "rbxassetid://10747362534",
				["tree-pine"] = "rbxassetid://10747362748",
				["trees"] = "rbxassetid://10747363016",
				["trending-down"] = "rbxassetid://10747363205",
				["trending-up"] = "rbxassetid://10747363465",
				["triangle"] = "rbxassetid://10747363621",
				["trophy"] = "rbxassetid://10747363809",
				["truck"] = "rbxassetid://10747364031",
				["tv"] = "rbxassetid://10747364593",
				["tv-2"] = "rbxassetid://10747364302",
				["type"] = "rbxassetid://10747364761",
				["umbrella"] = "rbxassetid://10747364971",
				["underline"] = "rbxassetid://10747365191",
				["undo"] = "rbxassetid://10747365484",
				["undo-2"] = "rbxassetid://10747365359",
				["unlink"] = "rbxassetid://10747365771",
				["unlink-2"] = "rbxassetid://10747397871",
				["unlock"] = "rbxassetid://10747366027",
				["upload"] = "rbxassetid://10747366434",
				["upload-cloud"] = "rbxassetid://10747366266",
				["usb"] = "rbxassetid://10747366606",
				["user"] = "rbxassetid://10747373176",
				["user-check"] = "rbxassetid://10747371901",
				["user-cog"] = "rbxassetid://10747372167",
				["user-minus"] = "rbxassetid://10747372346",
				["user-plus"] = "rbxassetid://10747372702",
				["user-x"] = "rbxassetid://10747372992",
				["users"] = "rbxassetid://10747373426",
				["utensils"] = "rbxassetid://10747373821",
				["utensils-crossed"] = "rbxassetid://10747373629",
				["venetian-mask"] = "rbxassetid://10747374003",
				["verified"] = "rbxassetid://10747374131",
				["vibrate"] = "rbxassetid://10747374489",
				["vibrate-off"] = "rbxassetid://10747374269",
				["video"] = "rbxassetid://10747374938",
				["video-off"] = "rbxassetid://10747374721",
				["view"] = "rbxassetid://10747375132",
				["voicemail"] = "rbxassetid://10747375281",
				["volume"] = "rbxassetid://10747376008",
				["volume-1"] = "rbxassetid://10747375450",
				["volume-2"] = "rbxassetid://10747375679",
				["volume-x"] = "rbxassetid://10747375880",
				["wallet"] = "rbxassetid://10747376205",
				["wand"] = "rbxassetid://10747376565",
				["wand-2"] = "rbxassetid://10747376349",
				["watch"] = "rbxassetid://10747376722",
				["waves"] = "rbxassetid://10747376931",
				["webcam"] = "rbxassetid://10747381992",
				["wifi"] = "rbxassetid://10747382504",
				["wifi-off"] = "rbxassetid://10747382268",
				["wind"] = "rbxassetid://10747382750",
				["wrap-text"] = "rbxassetid://10747383065",
				["wrench"] = "rbxassetid://10747383470",
				["x"] = "rbxassetid://10747384394",
				["x-circle"] = "rbxassetid://10747383819",
				["x-octagon"] = "rbxassetid://10747384037",
				["x-square"] = "rbxassetid://10747384217",
				["zoom-in"] = "rbxassetid://10747384552",
				["zoom-out"] = "rbxassetid://10747384679",
			},
		}
	end;
};

return require(LinniScript["27"])
