-- Services --
local ReplicatedStorage = game:GetService('ReplicatedStorage')

-- Variables --
local Module = ReplicatedStorage.AnnouncementSystem
local Components = Module.Components

-- Required --
local Announcement = require(Components.Announcement)
local Network = require(Module.Network)

-- Main --
Network.Packets.Announce.OnClientEvent:Connect(function(message : string)
    task.defer(Announcement.Display, message)
end)