local cloneref = (cloneref or clonereference or function(instance: any) return instance end)
local httpService = cloneref(game:GetService("HttpService"))
local isfolder, isfile, listfiles = isfolder, isfile, listfiles
local makefolder, writefile, readfile, delfile = makefolder, writefile, readfile, delfile

if typeof(copyfunction) == "function" then
    local isfolder_copy, isfile_copy = copyfunction(isfolder), copyfunction(isfile)
    local success, _ = pcall(function() return isfolder_copy("test" .. tostring(math.random(1000000, 9999999))) end)
    if not success then
        isfolder = function(folder) local s, d = pcall(isfolder_copy, folder) return s and d or false end
        isfile = function(file) local s, d = pcall(isfile_copy, file) return s and d or false end
    end
end

local FileSystem = {}
FileSystem.BasePath = "ObsidianLibSettings"
FileSystem.ThemesPath = FileSystem.BasePath .. "/themes"

function FileSystem:Init()
    if not isfolder(self.BasePath) then makefolder(self.BasePath) end
    if not isfolder(self.ThemesPath) then makefolder(self.ThemesPath) end
end

function FileSystem:ReadFile(path)
    if not isfile(path) then return nil end
    local success, data = pcall(readfile, path)
    return success and data or nil
end

function FileSystem:WriteFile(path, content)
    local success, err = pcall(writefile, path, content)
    return success, err
end

function FileSystem:DeleteFile(path)
    if not isfile(path) then return false, "File not found" end
    local success, err = pcall(delfile, path)
    return success, err
end

function FileSystem:ListFiles(path)
    if not isfolder(path) then return {} end
    local success, files = pcall(listfiles, path)
    return success and files or {}
end

FileSystem:Init()

local Theme = {}
Theme.__index = Theme

function Theme.new(name, data)
    local self = setmetatable({}, Theme)
    self.Name = name
    self.BackgroundColor = Color3.fromHex(data.BackgroundColor or "160534")
    self.MainColor = Color3.fromHex(data.MainColor or "31173e")
    self.AccentColor = Color3.fromHex(data.AccentColor or "f1782e")
    self.OutlineColor = Color3.fromHex(data.OutlineColor or "460062")
    self.FontColor = Color3.fromHex(data.FontColor or "ffe6ab")
    self.FontFace = data.FontFace or "Fantasy"
    return self
end

function Theme:Serialize()
    return httpService:JSONEncode({
        BackgroundColor = self.BackgroundColor:ToHex(),
        MainColor = self.MainColor:ToHex(),
        AccentColor = self.AccentColor:ToHex(),
        OutlineColor = self.OutlineColor:ToHex(),
        FontColor = self.FontColor:ToHex(),
        FontFace = self.FontFace,
    })
end

local ThemeManager = {}
ThemeManager.__index = ThemeManager

function ThemeManager.new(library)
    local self = setmetatable({}, ThemeManager)
    self.Library = assert(library, "Library must be provided!")
    self.BuiltInThemes = {}
    self.CustomThemes = {}
    self.Events = {
        ThemeApplied = Instance.new("BindableEvent"),
        CustomThemesChanged = Instance.new("BindableEvent"),
    }
    self:_LoadBuiltInThemes()
    self:ReloadCustomThemes()
    return self
end

function ThemeManager:_LoadBuiltInThemes()
    local themesData = {
        ["Default"] = {1, '{"FontColor":"ffe6ab","MainColor":"31173e","AccentColor":"f1782e","BackgroundColor":"160534","OutlineColor":"460062"}'},
        ["Mspaint"] = {2, '{"FontColor":"ffffff","MainColor":"191919","AccentColor":"7d55ff","BackgroundColor":"0f0f0f","OutlineColor":"282828"}'},
        ["BBot"] = {3, '{"FontColor":"ffffff","MainColor":"1e1e1e","AccentColor":"7e48a3","BackgroundColor":"232323","OutlineColor":"141414"}'},
        ["Fatality"] = {4, '{"FontColor":"ffffff","MainColor":"1e1842","AccentColor":"c50754","BackgroundColor":"191335","OutlineColor":"3c355d"}'},
        ["Jester"] = {5, '{"FontColor":"ffffff","MainColor":"242424","AccentColor":"db4467","BackgroundColor":"1c1c1c","OutlineColor":"373737"}'},
        ["Mint"] = {6, '{"FontColor":"ffffff","MainColor":"242424","AccentColor":"3db488","BackgroundColor":"1c1c1c","OutlineColor":"373737"}'},
        ["Tokyo Night"] = {7, '{"FontColor":"ffffff","MainColor":"191925","AccentColor":"6759b3","BackgroundColor":"16161f","OutlineColor":"323232"}'},
        ["Ubuntu"] = {8, '{"FontColor":"ffffff","MainColor":"3e3e3e","AccentColor":"e2581e","BackgroundColor":"323232","OutlineColor":"191919"}'},
        ["Quartz"] = {9, '{"FontColor":"ffffff","MainColor":"232330","AccentColor":"426e87","BackgroundColor":"1d1b26","OutlineColor":"27232f"}'},
        ["Nord"] = {10, '{"FontColor":"eceff4","MainColor":"3b4252","AccentColor":"88c0d0","BackgroundColor":"2e3440","OutlineColor":"4c566a"}'},
        ["Dracula"] = {11, '{"FontColor":"f8f8f2","MainColor":"44475a","AccentColor":"ff79c6","BackgroundColor":"282a36","OutlineColor":"6272a4"}'},
        ["Monokai"] = {12, '{"FontColor":"f8f8f2","MainColor":"272822","AccentColor":"f92672","BackgroundColor":"1e1f1c","OutlineColor":"49483e"}'},
        ["Gruvbox"] = {13, '{"FontColor":"ebdbb2","MainColor":"3c3836","AccentColor":"fb4934","BackgroundColor":"282828","OutlineColor":"504945"}'},
        ["Solarized"] = {14, '{"FontColor":"839496","MainColor":"073642","AccentColor":"cb4b16","BackgroundColor":"002b36","OutlineColor":"586e75"}'},
        ["Catppuccin"] = {15, '{"FontColor":"d9e0ee","MainColor":"302d41","AccentColor":"f5c2e7","BackgroundColor":"1e1e2e","OutlineColor":"575268"}'},
        ["One Dark"] = {16, '{"FontColor":"abb2bf","MainColor":"282c34","AccentColor":"c678dd","BackgroundColor":"21252b","OutlineColor":"5c6370"}'},
        ["Cyberpunk"] = {17, '{"FontColor":"f9f9f9","MainColor":"262335","AccentColor":"00ff9f","BackgroundColor":"1a1a2e","OutlineColor":"413c5e"}'},
        ["Oceanic Next"] = {18, '{"FontColor":"d8dee9","MainColor":"1b2b34","AccentColor":"6699cc","BackgroundColor":"16232a","OutlineColor":"343d46"}'},
        ["Material"] = {19, '{"FontColor":"eeffff","MainColor":"212121","AccentColor":"82aaff","BackgroundColor":"151515","OutlineColor":"424242"}'},
        ["Solar Flare"] = {20, '{"FontColor":"ffffff","MainColor":"4e1609","AccentColor":"ff7043","BackgroundColor":"2b0702","OutlineColor":"6f1e07"}'},
        ["Aurora"] = {21, '{"FontColor":"e0f7fa","MainColor":"2b303b","AccentColor":"81a1c1","BackgroundColor":"1c222b","OutlineColor":"3e4755"}'},
        ["Emerald Dream"] = {22, '{"FontColor":"e0ffe0","MainColor":"014421","AccentColor":"33cc99","BackgroundColor":"001a10","OutlineColor":"02442b"}'},
        ["Sunset Horizon"] = {23, '{"FontColor":"ffffff","MainColor":"9f4f48","AccentColor":"fbc687","BackgroundColor":"2a0f0f","OutlineColor":"7b3f39"}'},
        ["Retro Wave"] = {24, '{"FontColor":"f0f8ff","MainColor":"2d033b","AccentColor":"ff77ff","BackgroundColor":"1a0126","OutlineColor":"5b114b"}'},
        ["Forest Mist"] = {25, '{"FontColor":"dcedc8","MainColor":"2e4d2b","AccentColor":"a8d5ba","BackgroundColor":"1b2f20","OutlineColor":"3c5a3d"}'},
        ["Deep Space"] = {26, '{"FontColor":"cfd8dc","MainColor":"0d1b2a","AccentColor":"4e8bbf","BackgroundColor":"081421","OutlineColor":"284259"}'},
        ["Candy Pop"] = {27, '{"FontColor":"ffffff","MainColor":"5e2e65","AccentColor":"00e6e6","BackgroundColor":"1c002a","OutlineColor":"4a0044"}'},
        ["Vintage Paper"] = {28, '{"FontColor":"2f2f2f","MainColor":"d8cfc4","AccentColor":"b89c73","BackgroundColor":"f3e9d2","OutlineColor":"a68f7c"}'},
        ["Neon Jungle"] = {29, '{"FontColor":"ccff99","MainColor":"1a1f27","AccentColor":"00ff88","BackgroundColor":"0d0d0d","OutlineColor":"2a2a2a"}'},
        ["Midnight Blue"] = {30, '{"FontColor":"e0eaf2","MainColor":"1a2634","AccentColor":"5c8fc0","BackgroundColor":"0f1221","OutlineColor":"2c3e50"}'},
        ["Rose Quartz"] = {31, '{"FontColor":"ffffff","MainColor":"c48793","AccentColor":"f7cad0","BackgroundColor":"2f1b24","OutlineColor":"6f4b57"}'},
        ["Sandstone"] = {32, '{"FontColor":"2e1e1e","MainColor":"c2b280","AccentColor":"d7b889","BackgroundColor":"f5e6ca","OutlineColor":"a79876"}'},
        ["Lunar Eclipse"] = {33, '{"FontColor":"dcdcdc","MainColor":"2c2933","AccentColor":"908ec3","BackgroundColor":"1b1823","OutlineColor":"3e3a4e"}'},
        ["Flame Ember"] = {34, '{"FontColor":"ffffff","MainColor":"692423","AccentColor":"ff7043","BackgroundColor":"2e0005","OutlineColor":"8b3a3a"}'},
        ["Glacial"] = {35, '{"FontColor":"e0f7fa","MainColor":"2c3e50","AccentColor":"4dd0e1","BackgroundColor":"1a2d3a","OutlineColor":"2c5f58"}'},
        ["Mystic Violet"] = {36, '{"FontColor":"f0e6ff","MainColor":"3e1f47","AccentColor":"ba68c8","BackgroundColor":"2a102f","OutlineColor":"5c3d63"}'},
        ["Goldenrod"] = {37, '{"FontColor":"ffffff","MainColor":"8c7a3f","AccentColor":"ffd54f","BackgroundColor":"4c3d20","OutlineColor":"6e5e3a"}'},
        ["Canyon Clay"] = {38, '{"FontColor":"ffffff","MainColor":"7f5539","AccentColor":"d78e6c","BackgroundColor":"3a2117","OutlineColor":"6c4a3b"}'},
        ["Iceberg"] = {39, '{"FontColor":"ffffff","MainColor":"1e3d59","AccentColor":"00b7ff","BackgroundColor":"12273d","OutlineColor":"30577a"}'},
        ["Peach Fuzz"] = {40, '{"FontColor":"ffffff","MainColor":"b6846b","AccentColor":"ff8e72","BackgroundColor":"3a2525","OutlineColor":"7f5a56"}'},
        ["Slate Grey"] = {41, '{"FontColor":"ffffff","MainColor":"607d8b","AccentColor":"b0bec5","BackgroundColor":"263238","OutlineColor":"546e7a"}'},
        ["Buttercup"] = {42, '{"FontColor":"ffffff","MainColor":"967011","AccentColor":"ffeb3b","BackgroundColor":"3a301a","OutlineColor":"7a6d28"}'},
        ["Electric Lime"] = {43, '{"FontColor":"d4d4d4","MainColor":"454f09","AccentColor":"aeea00","BackgroundColor":"222222","OutlineColor":"4f4f4f"}'},
        ["Twilight"] = {44, '{"FontColor":"e0e6f8","MainColor":"121212","AccentColor":"9fa8da","BackgroundColor":"0a0a0a","OutlineColor":"333444"}'},
        ["Dusty Rose"] = {45, '{"FontColor":"ffffff","MainColor":"ba6b6c","AccentColor":"f4a7b9","BackgroundColor":"3d1f23","OutlineColor":"70454b"}'},
        ["Mint Chocolate"] = {46, '{"FontColor":"ffffff","MainColor":"2e4639","AccentColor":"a1c349","BackgroundColor":"1c2f24","OutlineColor":"3c5a4e"}'},
        ["Ocean Breeze"] = {47, '{"FontColor":"e0f7fa","MainColor":"005377","AccentColor":"00bcd4","BackgroundColor":"002d3a","OutlineColor":"014f62"}'},
        ["Crimson Tide"] = {48, '{"FontColor":"ffffff","MainColor":"5a0000","AccentColor":"ff1744","BackgroundColor":"330000","OutlineColor":"990000"}'},
        ["Lavender Mist"] = {49, '{"FontColor":"faf0ff","MainColor":"7e5a9b","AccentColor":"cba5e6","BackgroundColor":"44275a","OutlineColor":"71538c"}'},
        ["Steel Blue"] = {50, '{"FontColor":"f1f5f9","MainColor":"1f3a58","AccentColor":"607d8b","BackgroundColor":"152439","OutlineColor":"2c526d"}'},
        ["Peanut Butter"] = {51, '{"FontColor":"ffffff","MainColor":"e1a95f","AccentColor":"ffca80","BackgroundColor":"2b221a","OutlineColor":"7a6326"}'},
        ["Ocean Pearl"] = {52, '{"FontColor":"ffffff","MainColor":"036865","AccentColor":"42eecf","BackgroundColor":"002f3a","OutlineColor":"014f52"}'},
        ["Berry Smoothie"] = {53, '{"FontColor":"ffffff","MainColor":"722f37","AccentColor":"d36ba6","BackgroundColor":"40102b","OutlineColor":"703060"}'},
        ["Mocha Mist"] = {54, '{"FontColor":"f5e1da","MainColor":"6b4c3b","AccentColor":"bc987e","BackgroundColor":"3c2b24","OutlineColor":"795b48"}'},
        ["Celestial"] = {55, '{"FontColor":"eaeaf2","MainColor":"1f1c3c","AccentColor":"7986cb","BackgroundColor":"0b0928","OutlineColor":"362e61"}'},
        ["Opal Glow"] = {56, '{"FontColor":"f0fff0","MainColor":"567572","AccentColor":"b2f5ea","BackgroundColor":"213837","OutlineColor":"2b4f3c"}'},
        ["Copper Canyon"] = {57, '{"FontColor":"ffffff","MainColor":"7c2d12","AccentColor":"ff7043","BackgroundColor":"38190a","OutlineColor":"5c321d"}'},
        ["Vodka Lime"] = {58, '{"FontColor":"70a634","MainColor":"6f8740","AccentColor":"396b07","BackgroundColor":"2a2a2a","OutlineColor":"4f4f4f"}'},
        ["Stormy Night"] = {59, '{"FontColor":"e0e0e0","MainColor":"2f3e4e","AccentColor":"627d98","BackgroundColor":"1b232f","OutlineColor":"34455b"}'},
        ["Sunrise Glow"] = {60, '{"FontColor":"ffffff","MainColor":"ad6700","AccentColor":"ffeb99","BackgroundColor":"3d281e","OutlineColor":"8c5200"}'},
        ["Marshmallow"] = {61, '{"FontColor":"000000","MainColor":"eccbea","AccentColor":"f8bbd0","BackgroundColor":"e4dfdf","OutlineColor":"96a8d7"}'},
        ["Jade Forest"] = {62, '{"FontColor":"f0fff0","MainColor":"0a2c2a","AccentColor":"3bbf9b","BackgroundColor":"081d1b","OutlineColor":"205752"}'},
        ["Midnight Orchid"] = {63, '{"FontColor":"f8f8ff","MainColor":"2a1e3b","AccentColor":"b86bbe","BackgroundColor":"1a0c27","OutlineColor":"4f2b55"}'},
        ["Desert Storm"] = {64, '{"FontColor":"ffffff","MainColor":"c6ab80","AccentColor":"af8e6a","BackgroundColor":"372d26","OutlineColor":"6b5541"}'},
        ["Tropical Punch"] = {65, '{"FontColor":"ffffff","MainColor":"e96c98","AccentColor":"ffc200","BackgroundColor":"4d2b47","OutlineColor":"e83296"}'},
        ["Graphite"] = {66, '{"FontColor":"d1d1d1","MainColor":"2b2b2b","AccentColor":"777777","BackgroundColor":"1a1a1a","OutlineColor":"444444"}'},
        ["Peacock Feather"] = {67, '{"FontColor":"ffffff","MainColor":"004953","AccentColor":"00bcd4","BackgroundColor":"002f3d","OutlineColor":"006370"}'},
        ["Candy Cane"] = {68, '{"FontColor":"000000","MainColor":"ff9191","AccentColor":"ec3737","BackgroundColor":"fccbcb","OutlineColor":"b49797"}'},
        ["Dust Bowl"] = {69, '{"FontColor":"ffffff","MainColor":"5c4537","AccentColor":"b2957e","BackgroundColor":"3b3024","OutlineColor":"7a6d58"}'},
        ["Inferno"] = {70, '{"FontColor":"ffffff","MainColor":"4b000f","AccentColor":"ff3300","BackgroundColor":"2e0005","OutlineColor":"7a0011"}'},
    }
    for name, data in pairs(themesData) do
        local success, themeData = pcall(httpService.JSONDecode, httpService, data[2])
        if success then
            self.BuiltInThemes[name] = { Order = data[1], Theme = Theme.new(name, themeData) }
        end
    end
end

function ThemeManager:GetTheme(name)
    return (self.CustomThemes[name] and self.CustomThemes[name].Theme)
        or (self.BuiltInThemes[name] and self.BuiltInThemes[name].Theme)
end

function ThemeManager:ApplyTheme(name)
    local theme = self:GetTheme(name)
    if not theme then return false, "Theme not found" end

    local scheme = self.Library.Scheme
    scheme.BackgroundColor = theme.BackgroundColor
    scheme.MainColor = theme.MainColor
    scheme.AccentColor = theme.AccentColor
    scheme.OutlineColor = theme.OutlineColor
    scheme.FontColor = theme.FontColor
    
    self.Library:SetFont(Enum.Font[theme.FontFace])
    self.Library:UpdateColorsUsingRegistry()
    
    self.Events.ThemeApplied:Fire(theme)
    self.Library:Notify(("Applied theme: %q"):format(name))
    return true
end

function ThemeManager:ReloadCustomThemes()
    self.CustomThemes = {}
    local themeFiles = FileSystem:ListFiles(FileSystem.ThemesPath)
    for _, filePath in ipairs(themeFiles) do
        if filePath:sub(-5) == ".json" then
            local name = filePath:match("([^/\\]+)%.json$")
            local content = FileSystem:ReadFile(filePath)
            if content then
                local success, data = pcall(httpService.JSONDecode, httpService, content)
                if success then
                    self.CustomThemes[name] = { Theme = Theme.new(name, data) }
                end
            end
        end
    end
    self.Events.CustomThemesChanged:Fire()
end

function ThemeManager:SaveCustomTheme(name, themeData)
    if not name or name:gsub("%s", "") == "" then
        return false, "Invalid theme name"
    end
    
    local theme = Theme.new(name, themeData)
    local success, err = FileSystem:WriteFile(FileSystem.ThemesPath .. "/" .. name .. ".json", theme:Serialize())
    
    if success then
        self:ReloadCustomThemes()
        self.Library:Notify(("Theme %q saved successfully"):format(name))
    end
    return success, err
end

function ThemeManager:DeleteCustomTheme(name)
    if not name or not self.CustomThemes[name] then
        return false, "Custom theme not found"
    end
    
    local success, err = FileSystem:DeleteFile(FileSystem.ThemesPath .. "/" .. name .. ".json")
    if success then
        self:ReloadCustomThemes()
        self.Library:Notify(("Theme %q deleted"):format(name))
    end
    return success, err
end

function ThemeManager:SaveDefaultThemeChoice(name)
    FileSystem:WriteFile(FileSystem.ThemesPath .. "/default.txt", name)
    self.Library:Notify(("Set default theme to %q"):format(name))
end

function ThemeManager:LoadDefaultTheme()
    local defaultName = FileSystem:ReadFile(FileSystem.ThemesPath .. "/default.txt")
    if defaultName and self:GetTheme(defaultName) then
        self:ApplyTheme(defaultName)
    else
        self:ApplyTheme("Default")
    end
end

local ThemeManagerUI = {}

function ThemeManagerUI:Init(groupbox, manager)
    self.GroupBox = assert(groupbox, "GroupBox must be provided!")
    self.Manager = assert(manager, "ThemeManager instance must be provided!")
    self.Library = self.Manager.Library
    
    self:_CreateControls()
    self:_ConnectEvents()
    
    self.Manager:LoadDefaultTheme()
end

function ThemeManagerUI:_CreateControls()
    local g = self.GroupBox
    local scheme = self.Library.Scheme
    
    g:AddLabel("Background Color"):AddColorPicker("BackgroundColor", { Default = scheme.BackgroundColor })
    g:AddLabel("Main Color"):AddColorPicker("MainColor", { Default = scheme.MainColor })
    g:AddLabel("Accent Color"):AddColorPicker("AccentColor", { Default = scheme.AccentColor })
    g:AddLabel("Outline Color"):AddColorPicker("OutlineColor", { Default = scheme.OutlineColor })
    g:AddLabel("Font Color"):AddColorPicker("FontColor", { Default = scheme.FontColor })
    g:AddDropdown("FontFace", {
        Text = "Font Face", Default = "Fantasy",
        Values = { "BuilderSans", "Code", "Fantasy", "Gotham", "Jura", "Roboto", "RobotoMono", "SourceSans" },
    })

    g:AddDivider()

    local builtInNames = {}
    for name, data in pairs(self.Manager.BuiltInThemes) do table.insert(builtInNames, name) end
    table.sort(builtInNames, function(a, b) return self.Manager.BuiltInThemes[a].Order < self.Manager.BuiltInThemes[b].Order end)
    
    g:AddDropdown("ThemeManager_ThemeList", { Text = "Built-in Themes", Values = builtInNames, Default = "Default" })
    g:AddButton("Set as Default (Built-in)", function()
        self.Manager:SaveDefaultThemeChoice(self.Library.Options.ThemeManager_ThemeList.Value)
    end)

    g:AddDivider()
    
    g:AddInput("ThemeManager_CustomThemeName", { Text = "Custom Theme Name" })
    g:AddButton("Create Theme", function()
        self:_SaveCurrentAsCustomTheme(self.Library.Options.ThemeManager_CustomThemeName.Value)
    end)
    
    g:AddDropdown("ThemeManager_CustomThemeList", { Text = "Custom Themes", Values = {}, AllowNull = true })
    g:AddButton("Load Theme", function()
        local name = self.Library.Options.ThemeManager_CustomThemeList.Value
        if name then self.Manager:ApplyTheme(name) end
    end)
    g:AddButton("Overwrite Theme", function()
        local name = self.Library.Options.ThemeManager_CustomThemeList.Value
        if name then self:_SaveCurrentAsCustomTheme(name) end
    end)
    g:AddButton("Delete Theme", function()
        local name = self.Library.Options.ThemeManager_CustomThemeList.Value
        if name then 
            local success, err = self.Manager:DeleteCustomTheme(name)
            if not success then self.Library:Notify("Error: " .. err, 3) end
        end
    end)
    g:AddButton("Refresh List", function()
        self.Manager:ReloadCustomThemes()
    end)
    g:AddButton("Set as Default (Custom)", function()
        local name = self.Library.Options.ThemeManager_CustomThemeList.Value
        if name then self.Manager:SaveDefaultThemeChoice(name) end
    end)
end

function ThemeManagerUI:_ConnectEvents()
    local options = self.Library.Options
    
    local function onSettingsChanged()
        self.Library:UpdateColorsUsingRegistry()
    end
    options.BackgroundColor:OnChanged(onSettingsChanged)
    options.MainColor:OnChanged(onSettingsChanged)
    options.AccentColor:OnChanged(onSettingsChanged)
    options.OutlineColor:OnChanged(onSettingsChanged)
    options.FontColor:OnChanged(onSettingsChanged)
    options.FontFace:OnChanged(function(value)
        self.Library:SetFont(Enum.Font[value])
        onSettingsChanged()
    end)
    
    options.ThemeManager_ThemeList:OnChanged(function(value)
        self.Manager:ApplyTheme(value)
    end)

    self.Manager.Events.ThemeApplied.Event:Connect(function(theme)
        options.BackgroundColor:SetValueRGB(theme.BackgroundColor)
        options.MainColor:SetValueRGB(theme.MainColor)
        options.AccentColor:SetValueRGB(theme.AccentColor)
        options.OutlineColor:SetValueRGB(theme.OutlineColor)
        options.FontColor:SetValueRGB(theme.FontColor)
        options.FontFace:SetValue(theme.FontFace)
        
        if self.Manager.CustomThemes[theme.Name] then
            options.ThemeManager_ThemeList:SetValue(nil)
        else
            options.ThemeManager_ThemeList:SetValue(theme.Name)
        end
    end)
    
    self.Manager.Events.CustomThemesChanged.Event:Connect(function()
        local customNames = {}
        for name in pairs(self.Manager.CustomThemes) do table.insert(customNames, name) end
        table.sort(customNames)
        options.ThemeManager_CustomThemeList:SetValues(customNames)
        options.ThemeManager_CustomThemeList:SetValue(nil)
    end)
end

function ThemeManagerUI:_SaveCurrentAsCustomTheme(name)
    local themeData = {
        BackgroundColor = self.Library.Options.BackgroundColor.Value:ToHex(),
        MainColor = self.Library.Options.MainColor.Value:ToHex(),
        AccentColor = self.Library.Options.AccentColor.Value:ToHex(),
        OutlineColor = self.Library.Options.OutlineColor.Value:ToHex(),
        FontColor = self.Library.Options.FontColor.Value:ToHex(),
        FontFace = self.Library.Options.FontFace.Value
    }
    local success, err = self.Manager:SaveCustomTheme(name, themeData)
    if not success then
        self.Library:Notify("Error: " .. err, 3)
    end
end

local PublicAPI = {}

function PublicAPI:ApplyToTab(library, tab)
    assert(library and tab, "Library and Tab must be provided!")
    local groupbox = tab:AddLeftGroupbox("Themes", "paintbrush")
    
    local manager = ThemeManager.new(library)
    ThemeManagerUI:Init(groupbox, manager)
    
    getgenv().ObsidianThemeManager = manager 
    
    return manager
end

return PublicAPI