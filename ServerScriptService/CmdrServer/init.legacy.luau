-- Services --
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Variables --
local System = ReplicatedStorage:WaitForChild("AnnouncementSystem")
local Packages = System:WaitForChild("Packages")

local Commands = script.Commands
local Types = script.Types
local Hooks = script.Hooks

-- Required --
local Cmdr = require(Packages.Cmdr)

-- Main --
Cmdr:RegisterDefaultCommands()

Cmdr:RegisterCommandsIn(Commands)
Cmdr:RegisterTypesIn(Types)
Cmdr:RegisterHooksIn(Hooks)