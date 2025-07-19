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
    Title = "脚本加载完成",
    Content = "请加入群聊",
    Icon = "check-circle",
    Duration = 5,
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
})


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

local settings = {
    teleport = {
        enabled = false,
        max_distance = 490,
        delay = 0.1,
        height_offset = 3,
        target_check_interval = 0.2,
        connection = nil
    },
    combat = {
        tornadoEnabled = false,
        killAuraEnabled = false,
        connection = nil
    },
    room = {
        enabled = false,
        roomCheck = false,
        connection = nil
    }
}

local function roomTeleport(character)
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end
    
    for _,v in workspace:GetDescendants() do
        if v.ClassName == "ProximityPrompt" and v.Enabled then
            character.HumanoidRootPart.CFrame = v.Parent.CFrame
            fireproximityprompt(v)
            task.wait(0.1)
        end
    end
    
    for _,v in workspace:GetChildren() do   
        if v:FindFirstChild("ExitZone") then
            character.HumanoidRootPart.CFrame = v.ExitZone.CFrame
            task.wait(0.25)
            character.HumanoidRootPart.CFrame = CFrame.new(v:GetPivot().Position)
            task.wait(0.25)
        end
    end
end

local function teleportToZombie()
    if not localPlayer.Character or not localPlayer.Character:FindFirstChild("HumanoidRootPart") then
        return nil
    end
    
    local closestZombie, closestDistance = nil, settings.teleport.max_distance
    local characterPosition = localPlayer.Character:GetPivot().Position
    
    for _, v in next, workspace:GetChildren() do
        if v ~= localPlayer.Character and v:IsA("Model") then
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

Tabs.TeleportTab:Section({Title = "传送设置"})
Tabs.TeleportTab:Paragraph({
    Title = "提示:",
    Desc = "先开启自动攻击范围再开启自动传送至npc"
})

Tabs.TeleportTab:Toggle({
    Title = "传送至僵尸",
    Callback = function(value)
        settings.teleport.enabled = value
        
        if settings.teleport.connection then
            settings.teleport.connection:Disconnect()
            settings.teleport.connection = nil
        end
        
        if value then
            settings.teleport.connection = runService.RenderStepped:Connect(function()
                local lastCheckTime = 0
                
                if os.clock() - lastCheckTime >= settings.teleport.target_check_interval then
                    local zombie = teleportToZombie()
                    if zombie then
                        pcall(function()
                            localPlayer.Character:SetPrimaryPartCFrame(
                                CFrame.new(zombie:GetPivot().Position + 
                                    Vector3.new(0, settings.teleport.height_offset, 0))
                            )
                        end)
                    end
                    lastCheckTime = os.clock()
                end
            end)
        end
    end
})

Tabs.TeleportTab:Slider({
    Title = "传送距离",
    Value = {Min = 200, Max = 1000, Default = 500},
    Callback = function(value)
        settings.teleport.max_distance = value
    end
})

Tabs.TeleportTab:Toggle({
    Title = "房间传送功能[可能会有点问题]",
    Callback = function(state)
        settings.room.enabled = state
        
        if settings.room.connection then
            settings.room.connection:Disconnect()
            settings.room.connection = nil
        end
        
        if state then
            settings.room.connection = runService.RenderStepped:Connect(function()
                local character = localPlayer.Character
                if character and not settings.room.roomCheck then
                    settings.room.roomCheck = true
                    roomTeleport(character)
                    settings.room.roomCheck = false
                end
            end)
        end
    end
})

Tabs.CombatTab:Section({Title = "战斗功能"})
Tabs.CombatTab:Paragraph({
    Title = "超强攻击",
    Desc = "自动检测身边的npc,有时候房间没加载就没伤害"
})

Tabs.CombatTab:Toggle({
    Title = "自动范围攻击",
    Callback = function(state)
        settings.combat.tornadoEnabled = state
        
        if settings.combat.connection then
            settings.combat.connection:Disconnect()
            settings.combat.connection = nil
        end
        
        if state then
            settings.combat.connection = runService.RenderStepped:Connect(function()
                local character = localPlayer.Character
                if character then
                    for _,v in workspace:GetChildren() do   
                        if v:FindFirstChild("Humanoid") or (v:FindFirstChildWhichIsA("Model") and v:FindFirstChildWhichIsA("Model"):FindFirstChild("Humanoid")) then
                            if v:GetAttribute("hadEntrance") and v:FindFirstChild("Health") then
                                local humanoid = v:FindFirstChild("Humanoid") or v:FindFirstChildWhichIsA("Model"):FindFirstChild("Humanoid")
                                replicatedStorage.remotes.useAbility:FireServer("tornado")
                                replicatedStorage.remotes.abilityHit:FireServer(humanoid, math.huge, {["stun"] = {["dur"] = 1}})
                            end
                        end
                    end
                end
            end)
        end
    end
})
