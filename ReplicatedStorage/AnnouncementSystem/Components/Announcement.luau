-- Services --
local CollectionService = game:GetService('CollectionService')
local TweenService = game:GetService('TweenService')

-- Variables --
local Assets = script.Parent.Parent.Assets
local AnnouncementTemplate = Assets.AnnouncementTemplate

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
	local CanvasLocation = CollectionService:GetTagged('AnnouncementCanvas')
    if not CanvasLocation then return end

    local Cloned = _Trove:Clone(AnnouncementTemplate)
    Cloned.GroupTransparency = 1

    local MessageLabel = Cloned.MessageLabel
    MessageLabel.Text = message
    
	Cloned.Parent = CanvasLocation

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
