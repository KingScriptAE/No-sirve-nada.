
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/KingScriptAE/No-sirve-nada./refs/heads/main/main.lua"))()

function gradient(text, startColor, endColor)
    local result = ""
    local chars = {}
    
    for uchar in text:gmatch("[%z\1-\127\194-\244][\128-\191]*") do
        table.insert(chars, uchar)
    end
    
    local length = #chars
    
    for i = 1, length do
        local t = (i - 1) / math.max(length - 1, 1)
        local r = startColor.R + (endColor.R - startColor.R) * t
        local g = startColor.G + (endColor.G - startColor.G) * t
        local b = startColor.B + (endColor.B - startColor.B) * t
        
        result = result .. string.format('<font color="rgb(%d,%d,%d)">%s</font>', 
            math.floor(r * 255), 
            math.floor(g * 255), 
            math.floor(b * 255), 
            chars[i])
    end
    
    return result
end

local Confirmed = false  

WindUI:Popup({
    Title = gradient("欢迎霖溺用户使用霖溺脚本", Color3.fromHex("#eb1010"), Color3.fromHex("#1023eb")),
    Icon = "info",
    Content = gradient("作者:霖溺", Color3.fromHex("#10eb3c"), Color3.fromHex("#67c97a")) .. gradient(" \n@霖溺团队制作", Color3.fromHex("#001e80"), Color3.fromHex("#16f2d9")),  
    Buttons = {  
        {
            Title = gradient("关闭脚本", Color3.fromHex("#e80909"), Color3.fromHex("#630404")),
            Callback = function() end,
            Variant = "Tertiary",
        },
        {
            Title = gradient("加载脚本", Color3.fromHex("#90f09e"), Color3.fromHex("#13ed34")),
            Callback = function() Confirmed = true end,
            Variant = "Secondary",
        }
    }
})

repeat task.wait() until Confirmed

WindUI:Notify({
    Title = gradient("霖溺免费脚本", Color3.fromHex("#eb1010"), Color3.fromHex("#1023eb")),
    Content = "脚本加载成功",
    Icon = "check-circle",
    Duration = 3,
})

local Window = WindUI:CreateWindow({
    Title = gradient("像素刀片", Color3.fromHex("#001e80"), Color3.fromHex("#16f2d9")), 
    Icon = "rbxassetid://129260712070622",
    IconThemed = true,
    Author = gradient("@霖溺", Color3.fromHex("#1bf2b2"), Color3.fromHex("#1bcbf2")),
    Folder = "CloudHub",
    Size = UDim2.fromOffset(300, 270),
    Transparent = true,
    Theme = "Dark",
    SideBarWidth = 200,
    HideSearchBar = true,
    ScrollBarEnabled = true,
    Background = "rbxassetid://99599917888886",

})

Window:SetBackgroundImage("rbxassetid://99599917888886")
Window:SetBackgroundImageTransparency(0.9)

Window:EditOpenButton({
    Title = "打开霖溺脚本",
    Icon = "monitor",
    CornerRadius = UDim.new(2, 6),
    StrokeThickness = 2,
    Color = ColorSequence.new(
        Color3.fromHex("1E213D"),
        Color3.fromHex("1F75FE")
    ),
    Draggable = true,
})

local replicatedStorage = game:GetService("ReplicatedStorage")
local runService = game:GetService("RunService")
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer

local function roomTeleport(character)
    for _, v in workspace:GetChildren() do   
        if v:FindFirstChild("ExitZone") then
            character.HumanoidRootPart.CFrame = v.ExitZone.CFrame
            task.wait(0.5)
            character.HumanoidRootPart.CFrame = CFrame.new(v:GetPivot().Position)
            task.wait(0.5)
        end
    end
end

local Tabs = {
InfoTab = Window:Tab({ Title = gradient("脚本使用提示信息", Color3.fromHex("#ffffff"), Color3.fromHex("#636363")), Icon = "info" }),
    TeleportTab = Window:Tab({ Title = gradient("传送功能", Color3.fromHex("#ffffff"), Color3.fromHex("#636363")), Icon = "user" }),
    CombatTab = Window:Tab({ Title = gradient("战斗功能", Color3.fromHex("#ffffff"), Color3.fromHex("#636363")), Icon = "sword" }),
}

Tabs.InfoTab:Section({Title = "提示信息"})
Tabs.InfoTab:Paragraph({
    Title = "联系:",
    Desc = "1345639578",
    Image = "https://play-lh.googleusercontent.com/7cIIPlWm4m7AGqVpEsIfyL-HW4cQla4ucXnfalMft1TMIYQIlf2vqgmthlZgbNAQoaQ",
    ImageSize = 42,

    ThumbnailSize = 120
})
Tabs.InfoTab:Paragraph({
    Title = "更新信息",
    Desc = "由霖溺更新",
    Image = "https://play-lh.googleusercontent.com/7cIIPlWm4m7AGqVpEsIfyL-HW4cQla4ucXnfalMft1TMIYQIlf2vqgmthlZgbNAQoaQ",
    ImageSize = 42,

    ThumbnailSize = 120
})
local player = game:GetService("Players").LocalPlayer
local replicatedStorage = game:GetService("ReplicatedStorage")
local runService = game:GetService("RunService")

getgenv().teleport_settings = {
    enabled = false,
    max_distance = 490,
    delay = 0.1,
    height_offset = 3,
    target_check_interval = 0.2
}
Tabs.TeleportTab:Section({Title = "传送设置"})

Tabs.TeleportTab:Paragraph({
    Title = "提示",
    Desc = "先开启自动攻击范围再开启自动传送至npc"
})

local function teleportToZombie()
    if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
        return nil
    end
    
    local closestZombie, closestDistance = nil, teleport_settings.max_distance
    local characterPosition = player.Character:GetPivot().Position
    
    for _, v in next, workspace:GetChildren() do
        if v ~= player.Character and v:IsA("Model") then
            local humanoid = v:FindFirstChild("Humanoid")
            if humanoid and humanoid.Health > 0 then
                local distance = (v:GetPivot().Position - characterPosition).magnitude
                if distance < closestDistance then
                    closestZombie = v
                    closestDistance = distance
                end
            end
        end
    end
    
    return closestZombie
end
Tabs.TeleportTab:Toggle({
    Title = "传送至僵尸",
    Callback = function(value)
        teleport_settings.enabled = value
        if value then
            coroutine.wrap(function()
                local lastCheckTime = 0
                
                while teleport_settings.enabled and task.wait(teleport_settings.delay) do
                    if os.clock() - lastCheckTime >= teleport_settings.target_check_interval then
                        local zombie = teleportToZombie()
                        if zombie then
                            pcall(function()
                                player.Character:SetPrimaryPartCFrame(
                                    CFrame.new(zombie:GetPivot().Position + 
                                        Vector3.new(0, teleport_settings.height_offset, 0))
                                )
                            end)
                        end
                        lastCheckTime = os.clock()
                    end
                end
            end)()
        end
    end
})

Tabs.TeleportTab:Slider({
    Title = "传送距离",
    Value = {Min = 200, Max = 1000, Default = 500},
    Callback = function(value)
        teleport_settings.max_distance = value
    end
})


local combatSettings = {
    tornadoEnabled = false,
    killAuraEnabled = false
}

Tabs.CombatTab:Section({Title = "战斗功能"})
Tabs.CombatTab:Paragraph({
    Title = "超强攻击",
    Desc = "目前只对第一张地图生效"
})
Tabs.CombatTab:Toggle({
    Title = "自动范围攻击",
    Callback = function(state)
        combatSettings.tornadoEnabled = state
        if state then
            runService.RenderStepped:Connect(function()
                local character = localPlayer.Character
                if character then
                    for _, v in workspace:GetChildren() do   
                        if v:FindFirstChild("Humanoid") and v:GetAttribute("hadEntrance") and v:FindFirstChild("Health") then
                            replicatedStorage.remotes.useAbility:FireServer("tornado")
                            replicatedStorage.remotes.abilityHit:FireServer(v.Humanoid, math.huge, {["stun"] = {["dur"] = 1}})
                        end
                    end
                end
            end)
        end
    end
})

Tabs.TeleportTab:Toggle({
    Title = "房间传送功能[有bug]",
    Callback = function(state)
        if state then
            local roomCheck = false
            runService.RenderStepped:Connect(function()
                local character = localPlayer.Character
                if character and not roomCheck then
                    roomCheck = true
                    roomTeleport(character)
                    roomCheck = false
                end
            end)
        end
    end
})

WindUI:Notify({
    Title = "脚本加载完成",
    Content = "请加入群聊",
    Icon = "check-circle",
    Duration = 5,
})
