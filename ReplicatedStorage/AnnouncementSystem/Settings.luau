--[[

	Thank you for using my system! I hope you are able to incorporate
	it into your game(s) easily. If you ever have any troubles or
	suggestions, feel free to make a post in my discord :)
	- Krixiup (discord.gg/YT5jfhtUn8)

	Credits:
    	- 5uphi (Packets module) buffer based data serialization, used for server client communication.
        - Sleitnick (Trove module) memory managment & garbage collection.
		- eryn (Cmdr module) roblox command console.

	Setup:
    	1. Put user ids in the Admins table, allows them to access the announcement command.
		2. The rest of the settings are optional, you can adjust everything to your likings.

	Enjoy!

	License:
		MIT License

		Copyright (c) 2026 Krixiup

		Permission is hereby granted, free of charge, to any person obtaining a copy
		of this software and associated documentation files (the "Software"), to deal
		in the Software without restriction, including without limitation the rights
		to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
		copies of the Software, and to permit persons to whom the Software is
		furnished to do so, subject to the following conditions:

		The above copyright notice and this permission notice shall be included in all
		copies or substantial portions of the Software.

		THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
		IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
		FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
		AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
		LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
		OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
		SOFTWARE.

]]


return {
	------ [ IMPORTANT ] ------
	Admins = {
		1538206586,
		0,
		1
	},

	------ [ OPTIONAL ] ------
	AnnouncementDuration = 5,

	-- Tween Infos --
	AnnouncementUpInfo = TweenInfo.new(
		0.2,
		Enum.EasingStyle.Sine,
		Enum.EasingDirection.Out
	),

	AnnouncementDownInfo = TweenInfo.new(
		0.2,
		Enum.EasingStyle.Sine,
		Enum.EasingDirection.In
	),
}
