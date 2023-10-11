if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

local nr2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local nr2_item = table.deepcopy(data.raw["item"]["nuclear-reactor"])
nr2_item.name = "nuclear-reactor-2"
nr2_item.icons = {{icon = nr2_item.icon, tint = nr2_tint}}
nr2_item.place_result = "nuclear-reactor-2"

local nr2 = table.deepcopy(data.raw["reactor"]["nuclear-reactor"])
nr2.name = "nuclear-reactor-2"
nr2.minable.result = "nuclear-reactor-2"
nr2.fast_replaceable_group = "nuclear-reactor"
nr2.picture.layers[1].filename = "__k2-danger-ores__/graphics/entity/reactor-2.png"
nr2.picture.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-reactor-2.png"
nr2.consumption = KDO.string.msv(nr2.consumption, 2) --"80MW"
nr2.heat_buffer.max_temperature = nr2.heat_buffer.max_temperature * 2
nr2.heat_buffer.max_transfer = KDO.string.msv(nr2.heat_buffer.max_transfer, 2)
nr2.heat_buffer.specific_heat = KDO.string.msv(nr2.heat_buffer.specific_heat, 2) --"20MJ"
nr2.heat_buffer.max_transfer = KDO.string.msv(nr2.heat_buffer.max_transfer, 2) --"20GW"
nr2.icons = {{icon = nr2_item.icon, tint = nr2_tint}}

local nr2_recipe = {
    type = "recipe",
    name = "nuclear-reactor-2",
    ingredients = {
        {"nuclear-reactor", 4},
        {"low-density-structure", 100},
        {"processing-unit", 100},
        {"refined-concrete", 1000},
        {"heat-pipe", 100}
    },
    result = "nuclear-reactor-2",
    enabled = false,
    energy_required = 8
}

data.raw["reactor"]["nuclear-reactor"].next_upgrade = "nuclear-reactor-2"
data.raw["reactor"]["nuclear-reactor"].fast_replaceable_group = "nuclear-reactor"

data:extend{nr2_item, nr2, nr2_recipe}

--=================================================================================================

local he2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local he2_item = table.deepcopy(data.raw["item"]["heat-exchanger"])
he2_item.name = "heat-exchanger-2"
he2_item.icons = {{icon = he2_item.icon, tint = he2_tint}}
he2_item.place_result = "heat-exchanger-2"

local he2 = table.deepcopy(data.raw["boiler"]["heat-exchanger"])
he2.name = "heat-exchanger-2"
he2.minable.result = "heat-exchanger-2"
he2.fast_replaceable_group = "heat-exchanger"
he2.target_temperature = he2.target_temperature * 2 --1000
he2.energy_consumption = KDO.string.msv(he2.energy_consumption, 2) --"20MW"
he2.energy_source.max_temperature = he2.energy_source.max_temperature * 2
he2.energy_source.specific_heat = KDO.string.msv(he2.energy_source.specific_heat, 2) --"2MJ"
he2.energy_source.max_transfer = KDO.string.msv(he2.energy_source.max_transfer, 2) --"4GW"
he2.energy_source.min_working_temperature = he2.energy_source.min_working_temperature * 2
he2.icons = {{icon = he2_item.icon, tint = he2_tint}}
he2.structure.north.layers[1].filename = "__k2-danger-ores__/graphics/entity/heatex-N-idle-2.png"
he2.structure.north.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-heatex-N-idle-2.png"
he2.structure.east.layers[1].filename = "__k2-danger-ores__/graphics/entity/heatex-E-idle-2.png"
he2.structure.east.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-heatex-E-idle-2.png"
he2.structure.south.layers[1].filename = "__k2-danger-ores__/graphics/entity/heatex-S-idle-2.png"
he2.structure.south.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-heatex-S-idle-2.png"
he2.structure.west.layers[1].filename = "__k2-danger-ores__/graphics/entity/heatex-W-idle-2.png"
he2.structure.west.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-heatex-W-idle-2.png"

local he2_recipe = {
    type = "recipe",
    name = "heat-exchanger-2",
    ingredients = {
        {"heat-exchanger", 2},
        {"low-density-structure", 10},
        {"heat-pipe", 10}
    },
    result = "heat-exchanger-2",
    enabled = false,
    energy_required = 3
}

data.raw["boiler"]["heat-exchanger"].next_upgrade = "heat-exchanger-2"
data.raw["boiler"]["heat-exchanger"].fast_replaceable_group = "heat-exchanger"

data:extend{he2_item, he2, he2_recipe}

--=================================================================================================

local st2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local st2_item = table.deepcopy(data.raw["item"]["steam-turbine"])
st2_item.name = "steam-turbine-2"
st2_item.icons = {{icon = st2_item.icon, tint = st2_tint}}
st2_item.place_result = "steam-turbine-2"

local st2 = table.deepcopy(data.raw["generator"]["steam-turbine"])
st2.name = "steam-turbine-2"
st2.minable.result = "steam-turbine-2"
st2.maximum_temperature = st2.maximum_temperature * 2 - 15
st2.scale_fluid_usage = true
st2.max_power_output = "20MW"
st2.icons = {{icon = st2_item.icon, tint = st2_tint}}
st2.horizontal_animation.layers[1].filename = "__k2-danger-ores__/graphics/entity/steam-turbine-H-2.png"
st2.horizontal_animation.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-steam-turbine-H-2.png"
st2.vertical_animation.layers[1].filename = "__k2-danger-ores__/graphics/entity/steam-turbine-V-2.png"
st2.vertical_animation.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-steam-turbine-V-2.png"

local st2_recipe = {
    type = "recipe",
    name = "steam-turbine-2",
    ingredients = {
        {"steam-turbine", 2},
        {"low-density-structure", 25},
        {"processing-unit", 25},
        {"heat-pipe", 15}
    },
    result = "steam-turbine-2",
    enabled = false,
    energy_required = 3
}

data.raw["generator"]["steam-turbine"].next_upgrade = "steam-turbine-2"

data:extend{st2_item, st2, st2_recipe}

--=================================================================================================

data.raw["heat-pipe"]["heat-pipe"].heat_buffer.max_temperature = data.raw["heat-pipe"]["heat-pipe"].heat_buffer.max_temperature * 2

data:extend({{
    type = "technology",
    name = "nuclear-power-2",
    icon_size = 256,
    icon_mipmaps = 4,
    icon = "__base__/graphics/technology/nuclear-power.png",
    prerequisites = {"nuclear-power", "production-science-pack"},
    effects = {
        {type = "unlock-recipe", recipe = "steam-turbine-2"},
        {type = "unlock-recipe", recipe = "nuclear-reactor-2"},
        {type = "unlock-recipe", recipe = "heat-exchanger-2"}
    },
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
        },
        time = 30
    },
    order = "d-a"
}})
