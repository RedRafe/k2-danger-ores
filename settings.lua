data:extend{
	{
		name = 'k2-danger-ores:robot_energy_multipler',
		type = 'int-setting',
		setting_type = 'startup',
		default_value = 10,
		minimum_value = 1,
		maximum_value = 100,
		order = 'a'
	},
	{
		name = 'k2-danger-ores:robot_energy_multipler_include_construction_robots',
		type = 'bool-setting',
		setting_type = 'startup',
		default_value = false,
		order = 'b'
	},
	{
		name = 'k2-danger-ores:tiered_entities',
		type = 'bool-setting',
		setting_type = 'startup',
		default_value = true,
		order = 'e'
	},
	{
		name = 'k2-danger-ores:technology_tweaks',
		type = 'bool-setting',
		setting_type = 'startup',
		default_value = true,
		order = 'f'
	},
	{
		name = 'k2-danger-ores:increase_belt_speed',
		type = 'bool-setting',
		setting_type = 'startup',
		default_value = true,
		order = 'g'
	},
	{
		name = 'k2-danger-ores:bonus_inventory',
		type = 'bool-setting',
		setting_type = 'startup',
		default_value = true,
		order = 'h'
	},
	{
		name = 'k2-danger-ores:win_condition',
		type = 'int-setting',
		setting_type = 'startup',
		default_value = 0,
		minimum_value = 0,
		maximum_value = 100000,
		order = 'i'
	},
}