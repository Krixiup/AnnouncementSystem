-- Services --
local ReplicatedStorage = game:GetService('ReplicatedStorage')

-- Required --
local AnnouncementSystem = require(ReplicatedStorage:WaitForChild('AnnouncementSystem'))

return function (context, message : string)
	task.defer(AnnouncementSystem.Announce, context.Executor, message)
	
	return (`Successfully sent message`)
end