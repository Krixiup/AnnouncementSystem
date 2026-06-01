--[[

    PLEASE OPEN THE SETTINGS FOR ALL THE INFO REGARDING THIS SYSTEM

]]

-- Services --
local MessagingService = game:GetService('MessagingService')

-- Required --
local NameColour = require('@self/Components/NameColour')
local Network = require('@self/Network')

-- Main --
local AnnouncementSystem = {}

-- Public Functions --
function AnnouncementSystem.Announce(player : Player, message : string)
    local PlayerName = player.DisplayName
    local PlayerColour = NameColour.GetNameColor(PlayerName)
    print(PlayerColour)
    PlayerColour = PlayerColour:ToHex()

    local FormattedMessage = `<font color="#{PlayerColour}">{ PlayerName }</font>{ utf8.char(0xE000) }: { message }`

	MessagingService:PublishAsync('GlobalAnnouncement', FormattedMessage)
end

MessagingService:SubscribeAsync('GlobalAnnouncement', function(message : string)
    Network.Packets.Announce:Fire(message['Data'])
end)

return AnnouncementSystem