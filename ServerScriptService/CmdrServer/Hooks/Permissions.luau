-- Services --
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Variables --
local System = ReplicatedStorage:WaitForChild("AnnouncementSystem")

-- Required --
local Settings = require(System.Settings)

-- Main --
return function (registry)
	registry:RegisterHook("BeforeRun", function(context)
		local UserId = context.Executor.UserId

		if context.Group == "Admin" and not table.find(Settings.Admins, UserId) then
			return "You don't have permission to run this command"
		end

		if not table.find(Settings.Admins, UserId) then
			return "You don't have permission to run this command"
		end
	end)
end