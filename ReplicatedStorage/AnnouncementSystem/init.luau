-- Services --
local MessagingService = game:GetService('MessagingService')

-- Required --
local Network = require('@self/Network')

-- Main --
local AnnouncementSystem = {}

-- Public Functions --
function AnnouncementSystem.Announce(player : Player, message : string)
    local FormattedMessage = `<font color="#ffd500">{ player.DisplayName }</font>{ utf8.char(0xE000) }: { message }`

	MessagingService:PublishAsync('GlobalAnnouncement', FormattedMessage)
end

MessagingService:SubscribeAsync('GlobalAnnouncement', function(message : string)
    Network.Packets.Announce:Fire(message['Data'])
end)

return AnnouncementSystem