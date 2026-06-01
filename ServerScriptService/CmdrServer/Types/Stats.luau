local STATS = {
	"Money",
	"Speed"
}

return function (registry)
	registry:RegisterType("stat", registry.Cmdr.Util.MakeEnumType("stat", STATS))
end