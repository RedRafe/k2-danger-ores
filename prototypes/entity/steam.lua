if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

local b2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local b2_item = table.deepcopy(data.raw["item"]["boiler"])
b2_item.name = "boiler-2"
b2_item.icons = {{icon = b2_item.icon, tint = b2_tint}}
b2_item.place_result = "boiler-2"

local b2 = table.deepcopy(data.raw["boiler"]["boiler"])
b2.name = "boiler-2"
b2.minable.result = "boiler-2"
b2.target_temperature = b2.target_temperature * 2 - 15
b2.energy_consumption = "3MW"
b2.energy_source.emissions_per_minute = b2.energy_source.emissions_per_minute * 2.5
b2.fast_replaceable_group = "boiler"
b2.icons = {{icon = b2_item.icon, tint = b2_tint}}
b2.structure.north.layers[1].filename = "__k2-danger-ores__/graphics/entity/boiler-N-idle-2.png"
b2.structure.north.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-boiler-N-idle-2.png"
b2.structure.east.layers[1].filename = "__k2-danger-ores__/graphics/entity/boiler-E-idle-2.png"
b2.structure.east.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-boiler-E-idle-2.png"
b2.structure.south.layers[1].filename = "__k2-danger-ores__/graphics/entity/boiler-S-idle-2.png"
b2.structure.south.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-boiler-S-idle-2.png"
b2.structure.west.layers[1].filename = "__k2-danger-ores__/graphics/entity/boiler-W-idle-2.png"
b2.structure.west.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-boiler-W-idle-2.png"

local b2_recipe = {
    type = "recipe",
    name = "boiler-2",
    ingredients = {{"boiler", 3}, {"steel-furnace", 3}},
    result = "boiler-2",
    enabled = false,
    energy_required = 0.5
}

data:extend{b2_item, b2, b2_recipe}

data.raw["boiler"]["boiler"].next_upgrade = "boiler-2"
data.raw["boiler"]["boiler"].fast_replaceable_group = "boiler"

--=================================================================================================

local se2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local se2_item = table.deepcopy(data.raw["item"]["steam-engine"])
se2_item.name = "steam-engine-2"
se2_item.icons = {{icon = se2_item.icon, tint = se2_tint}}
se2_item.place_result = "steam-engine-2"

local se2 = table.deepcopy(data.raw["generator"]["steam-engine"])
se2.name = "steam-engine-2"
se2.minable.result = "steam-engine-2"
se2.maximum_temperature = se2.maximum_temperature * 2 - 15
se2.horizontal_animation.layers[1].filename = "__k2-danger-ores__/graphics/entity/steam-engine-H-2.png"
se2.horizontal_animation.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-steam-engine-H-2.png"
se2.vertical_animation.layers[1].filename = "__k2-danger-ores__/graphics/entity/steam-engine-V-2.png"
se2.vertical_animation.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-steam-engine-V-2.png"
se2.icons = {{icon = se2_item.icon, tint = se2_tint}}
se2.scale_fluid_usage = true
se2.max_power_output = "1.5MW" 

local se2_recipe = {
    type = "recipe",
    name = "steam-engine-2",
    ingredients = {
        {"steam-engine", 2},
        {"engine-unit", 5},
        {"steel-plate", 10},
        {"pipe", 25}
    },
    result = "steam-engine-2",
    enabled = false,
    energy_required = 0.5
}

data:extend{se2_item, se2, se2_recipe}

data.raw["generator"]["steam-engine"].next_upgrade = "steam-engine-2"

--=================================================================================================

data:extend({{
    type = "technology",
    name = "steam-engine-2",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/steam-engine.png",
    prerequisites = {"chemical-science-pack"},
    effects = {
        {type = "unlock-recipe", recipe = "steam-engine-2"},
        {type = "unlock-recipe", recipe = "boiler-2"}},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}},
        time = 30
    },
    order = "d-a"
}})
