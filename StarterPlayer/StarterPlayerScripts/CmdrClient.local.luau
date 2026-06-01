-- Services --
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

-- Variables --
local System = ReplicatedStorage.AnnouncementSystem

-- Required --
local Cmdr = require(ReplicatedStorage:WaitForChild("CmdrClient"))

local Settings = require(System.Settings)

-- Main --
local CmdrHandler = {}

function CmdrHandler.Start()
	if not table.find(Settings.Admins, Players.LocalPlayer.UserId) then return end

	Cmdr:SetActivationKeys({ Enum.KeyCode.X })
end

return CmdrHandler