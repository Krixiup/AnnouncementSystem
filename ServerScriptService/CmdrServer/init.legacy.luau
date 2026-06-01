-- Services --
local ReplicatedStorage = game:GetService('ReplicatedStorage')

-- Variables --
local Module = ReplicatedStorage:WaitForChild('AnnouncementSystem')
local Packages = Module:WaitForChild('Packages')

local Commands = script.Commands
local Hooks = script.Hooks

-- Required --
local Cmdr = require(Packages.Cmdr)

-- Main --
Cmdr:RegisterDefaultCommands()

Cmdr:RegisterCommandsIn(Commands)
Cmdr:RegisterHooksIn(Hooks)