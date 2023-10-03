if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

local nuclear_reactor2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local nuclear_reactor2_item = table.deepcopy(data.raw["item"]["nuclear-reactor"])
nuclear_reactor2_item.name = "nuclear-reactor-2"
nuclear_reactor2_item.icons = {{icon = nuclear_reactor2_item.icon, tint = nuclear_reactor2_tint}}
nuclear_reactor2_item.place_result = "nuclear-reactor-2"

local nuclear_reactor2 = table.deepcopy(data.raw["reactor"]["nuclear-reactor"])
nuclear_reactor2.name = "nuclear-reactor-2"
nuclear_reactor2.minable.result = "nuclear-reactor-2"
nuclear_reactor2.maximum_temperature = 985
nuclear_reactor2.fast_replaceable_group = "nuclear-reactor"
nuclear_reactor2.picture.layers[1].filename = "__k2-danger-ores__/graphics/entity/reactor-2.png"
nuclear_reactor2.picture.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-reactor-2.png"
nuclear_reactor2.consumption = "80MW"
nuclear_reactor2.heat_buffer.max_temperature = 2000
nuclear_reactor2.heat_buffer.specific_heat = "20MJ"
nuclear_reactor2.heat_buffer.max_transfer = "20GW"
nuclear_reactor2.icons = {{icon = nuclear_reactor2_item.icon, tint = nuclear_reactor2_tint}}

local nuclear_reactor2_recipe = {
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

data:extend{nuclear_reactor2_item, nuclear_reactor2, nuclear_reactor2_recipe}

--=================================================================================================

local heat_exchanger2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local heat_exchanger2_item = table.deepcopy(data.raw["item"]["heat-exchanger"])
heat_exchanger2_item.name = "heat-exchanger-2"
heat_exchanger2_item.icons = {{icon = heat_exchanger2_item.icon, tint = heat_exchanger2_tint}}
heat_exchanger2_item.place_result = "heat-exchanger-2"

local heat_exchanger2 = table.deepcopy(data.raw["boiler"]["heat-exchanger"])
heat_exchanger2.name = "heat-exchanger-2"
heat_exchanger2.minable.result = "heat-exchanger-2"
heat_exchanger2.fast_replaceable_group = "heat-exchanger"
heat_exchanger2.target_temperature = 1000
heat_exchanger2.energy_consumption = "20MW"
heat_exchanger2.energy_source.max_temperature = 2000
heat_exchanger2.energy_source.specific_heat = "2MJ"
heat_exchanger2.energy_source.max_transfer = "4GW"
heat_exchanger2.energy_source.min_working_temperature = 1000
heat_exchanger2.icons = {{icon = heat_exchanger2_item.icon, tint = heat_exchanger2_tint}}
heat_exchanger2.structure.north.layers[1].filename = "__k2-danger-ores__/graphics/entity/heatex-N-idle-2.png"
heat_exchanger2.structure.north.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-heatex-N-idle-2.png"
heat_exchanger2.structure.east.layers[1].filename = "__k2-danger-ores__/graphics/entity/heatex-E-idle-2.png"
heat_exchanger2.structure.east.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-heatex-E-idle-2.png"
heat_exchanger2.structure.south.layers[1].filename = "__k2-danger-ores__/graphics/entity/heatex-S-idle-2.png"
heat_exchanger2.structure.south.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-heatex-S-idle-2.png"
heat_exchanger2.structure.west.layers[1].filename = "__k2-danger-ores__/graphics/entity/heatex-W-idle-2.png"
heat_exchanger2.structure.west.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-heatex-W-idle-2.png"

local heat_exchanger2_recipe = {
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

data:extend{heat_exchanger2_item, heat_exchanger2, heat_exchanger2_recipe}

--=================================================================================================

local steam_turbine2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local steam_turbine2_item = table.deepcopy(data.raw["item"]["steam-turbine"])
steam_turbine2_item.name = "steam-turbine-2"
steam_turbine2_item.icons = {{icon = steam_turbine2_item.icon, tint = steam_turbine2_tint}}
steam_turbine2_item.place_result = "steam-turbine-2"

local steam_turbine2 = table.deepcopy(data.raw["generator"]["steam-turbine"])
steam_turbine2.name = "steam-turbine-2"
steam_turbine2.minable.result = "steam-turbine-2"
steam_turbine2.maximum_temperature = 985
steam_turbine2.icons = {{icon = steam_turbine2_item.icon, tint = steam_turbine2_tint}}
steam_turbine2.horizontal_animation.layers[1].filename = "__k2-danger-ores__/graphics/entity/steam-turbine-H-2.png"
steam_turbine2.horizontal_animation.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-steam-turbine-H-2.png"
steam_turbine2.vertical_animation.layers[1].filename = "__k2-danger-ores__/graphics/entity/steam-turbine-V-2.png"
steam_turbine2.vertical_animation.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-steam-turbine-V-2.png"

local steam_turbine2_recipe = {
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

data:extend{steam_turbine2_item, steam_turbine2, steam_turbine2_recipe, nuclear_power2_tech}

--=================================================================================================

data.raw["heat-pipe"]["heat-pipe"].heat_buffer.max_temperature = 2000

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
