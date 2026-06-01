-- Services --
local ReplicatedStorage = game:GetService('ReplicatedStorage')
local Players = game:GetService('Players')

-- Variables --
local Module = ReplicatedStorage.AnnouncementSystem

-- Required --
local Cmdr = require(ReplicatedStorage:WaitForChild('CmdrClient'))

local Settings = require(Module.Settings)

-- Main --
local function Start()
	if not table.find(Settings.Admins, Players.LocalPlayer.UserId) then return end

	Cmdr:SetActivationKeys({ Enum.KeyCode.F2 })
end

Start()