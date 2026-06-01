return {
	------ [ IMPORTANT ] ------
	Admins = {
		1538206586
	},

	Canvas = game:GetService('RunService'):IsClient() and
		game.Players.LocalPlayer.PlayerGui:WaitForChild('MainUI'):WaitForChild('Announcements'),

	------ [ OPTIONAL ] ------
	AnnouncementDuration = 5,

	-- Tween Infos --
	AnnouncementUpInfo = TweenInfo.new(
		0.25,
		Enum.EasingStyle.Back,
		Enum.EasingDirection.Out
	),

	AnnouncementDownInfo = TweenInfo.new(
		0.25,
		Enum.EasingStyle.Back,
		Enum.EasingDirection.InOut
	),
}