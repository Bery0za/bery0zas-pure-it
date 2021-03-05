data:extend(
{
    {
        type = "bool-setting",
        name = "bery0zas-pure-it-pollutefromboxes",
        setting_type = "startup",
        default_value = true,
    },
    {
        type = "int-setting",
        name = "bery0zas-pure-it-amountofcollectedpollution",
        setting_type = "startup",
        default_value = 50,
        minimum_value = 0,
        maximum_value = 100,
    },
})

if mods['bobplates'] then
	data:extend({
		{
			type = "bool-setting",
			name = "bery0zas-pure-it-integrate-bobs",
			setting_type = "startup",
			default_value = true,
		}
	})
end

if mods['angelsrefining'] or mods['angelspetrochem'] then
	data:extend({
		{
			type = "bool-setting",
			name = "bery0zas-pure-it-integrate-angels",
			setting_type = "startup",
			default_value = true,
		}
	})
end