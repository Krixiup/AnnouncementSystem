-- Services --
local TweenService = game:GetService('TweenService')

-- Variables --
local Assets = script.Parent.Parent.Assets
local AnnouncementFrame = Assets.AnnouncementFrame

-- Required --
local Settings = require('../Settings')
local Types = require('../Types')

local Trove = require('../Packages/Trove')
local _Trove = Trove.new()

-- Types --
type Callback = Types.Callback

-- Main --
local Announcement = {}

function Announcement.Display(message : string, callback : Callback?)
    if not Settings.Canvas then return end

    local Cloned = _Trove:Clone(AnnouncementFrame)
    local MessageLabel = Cloned.MessageLabel
    
    local UIScale = Cloned.UIScale
    UIScale.Scale = 0

    MessageLabel.Text = message
    
    Cloned.Parent = Settings.Canvas

    task.delay(Settings.AnnouncementDuration, function()
        local Tween = TweenService:Create(UIScale, Settings.AnnouncementDownInfo, {Scale = 0})
        _Trove:Add(Tween)
        
        Tween:Play()

        Tween.Completed:Wait()

        _Trove:Remove(Cloned)
    end)
    
    TweenService:Create(UIScale, Settings.AnnouncementUpInfo, {Scale = 1}):Play()

    if callback then
        callback()
    end
end

return Announcement