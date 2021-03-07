data:extend(
{
    {
        type = "bool-setting",
        name = "bery0zas-pure-it-pollutefromboxes",
        setting_type = "startup",
        default_value = true,
		order = "a[repollute]-a[switch]"
    },
    {
        type = "int-setting",
        name = "bery0zas-pure-it-amountofcollectedpollution",
        setting_type = "startup",
        default_value = 50,
        minimum_value = 0,
        maximum_value = 100,
		order = "a[repollute]-b[amount]"
    },
})

if mods['bobplates'] then
	data:extend({
		{
			type = "bool-setting",
			name = "bery0zas-pure-it-integrate-bobs",
			setting_type = "startup",
			default_value = true,
			order = "b[mods]-b[bobs]-a[integrate]"
		}
	})
end

if mods['angelspetrochem'] then
	data:extend({
		{
			type = "bool-setting",
			name = "bery0zas-pure-it-integrate-angelspetrochem",
			setting_type = "startup",
			default_value = true,
			order = "b[mods]-a[angels]-a[integrate]"
		},
		{
			type = "bool-setting",
			name = "bery0zas-pure-it-leave-halite",
			setting_type = "startup",
			default_value = false,
			order = "b[mods]-a[angels]-b[recipes]"
		}
	})
end