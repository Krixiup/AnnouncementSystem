--[[ https://devforum.roblox.com/t/how-to-get-a-users-default-chat-colour-simple-module/957515 ]] --

-- Variables --
local ColorOffset = 0

NAME_COLORS =
	{
		Color3.new(253/255, 41/255, 67/255), -- BrickColor.new("Bright red").Color,
		Color3.new(1/255, 162/255, 255/255), -- BrickColor.new("Bright blue").Color,
		Color3.new(2/255, 184/255, 87/255), -- BrickColor.new("Earth green").Color,
		BrickColor.new("Bright violet").Color,
		BrickColor.new("Bright orange").Color,
		BrickColor.new("Bright yellow").Color,
		BrickColor.new("Light reddish violet").Color,
		BrickColor.new("Brick yellow").Color,
	}

-- Main --
local NameColour = {}

-- Private Functions --
local function GetNameValue(playerName : string)
	local value = 0
	for index = 1, #playerName do
		local cValue = string.byte(string.sub(playerName, index, index))
		local reverseIndex = #playerName - index + 1
		if #playerName%2 == 1 then
			reverseIndex = reverseIndex - 1
		end
		if reverseIndex%4 >= 2 then
			cValue = -cValue
		end
		value = value + cValue
	end
	return value
end

-- Public Functions --
function NameColour.GetNameColor(playerName : string)
    return NAME_COLORS[((GetNameValue(playerName) + ColorOffset) % #NAME_COLORS) + 1]
end

return NameColour