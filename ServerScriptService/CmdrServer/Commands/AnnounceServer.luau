-- Services --
local ReplicatedStorage = game:GetService('ReplicatedStorage')

-- Variables --
local System = ReplicatedStorage:WaitForChild('AnnouncementSystem')

-- Required --
local AnnouncementSystem = require(System)

return function (context, message : string)
	task.defer(AnnouncementSystem, context.Executor, message)
	
	return (`Successfully sent message`)
end