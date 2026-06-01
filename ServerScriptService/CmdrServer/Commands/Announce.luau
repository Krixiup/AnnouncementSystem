return {
	Name = 'announce',
	Aliases = {'anc'},
	Description = 'Announce something globally',
	Group = 'Admin',
	Args = {
		{
			Type = 'string',
			Name = 'Message',
			Description = 'The message you want to send'
		}
	}
}