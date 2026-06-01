-- Services --
local TweenService = game:GetService('TweenService')

-- Variables --
local Assets = script.Parent.Parent.Assets
local AnnouncementCanvas = Assets.AnnouncementCanvas

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
    if not Settings.CanvasLocation then return end

    local Cloned = _Trove:Clone(AnnouncementCanvas)
    Cloned.GroupTransparency = 1

    local MessageLabel = Cloned.MessageLabel
    MessageLabel.Text = message
    
    Cloned.Parent = Settings.CanvasLocation

    task.delay(Settings.AnnouncementDuration, function()
        local Tween = _Trove:Add(TweenService:Create(Cloned, Settings.AnnouncementDownInfo, {GroupTransparency = 1}))
        Tween:Play()

        Tween.Completed:Wait()

        task.wait(0.1)

        _Trove:Remove(Cloned)
        _Trove:Remove(Tween)
    end)
    
    TweenService:Create(Cloned, Settings.AnnouncementUpInfo, {GroupTransparency = 0}):Play()

    if callback then
        callback()
    end
end

return Announcement