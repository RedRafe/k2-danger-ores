if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

local boiler2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local boiler2_item = table.deepcopy(data.raw["item"]["boiler"])
boiler2_item.name = "boiler-2"
boiler2_item.icons = {{icon = boiler2_item.icon, tint = boiler2_tint}}
boiler2_item.place_result = "boiler-2"

local boiler2 = table.deepcopy(data.raw["boiler"]["boiler"])
boiler2.name = "boiler-2"
boiler2.minable.result = "boiler-2"
boiler2.target_temperature = 315
boiler2.energy_consumption = "3MW"
boiler2.energy_source.emissions_per_minute = 60
boiler2.fast_replaceable_group = "boiler"
boiler2.icons = {{icon = boiler2_item.icon, tint = boiler2_tint}}
boiler2.structure.north.layers[1].filename = "__k2-danger-ores__/graphics/entity/boiler-N-idle-2.png"
boiler2.structure.north.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-boiler-N-idle-2.png"
boiler2.structure.east.layers[1].filename = "__k2-danger-ores__/graphics/entity/boiler-E-idle-2.png"
boiler2.structure.east.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-boiler-E-idle-2.png"
boiler2.structure.south.layers[1].filename = "__k2-danger-ores__/graphics/entity/boiler-S-idle-2.png"
boiler2.structure.south.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-boiler-S-idle-2.png"
boiler2.structure.west.layers[1].filename = "__k2-danger-ores__/graphics/entity/boiler-W-idle-2.png"
boiler2.structure.west.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-boiler-W-idle-2.png"

local boiler2_recipe = {
    type = "recipe",
    name = "boiler-2",
    ingredients = {{"boiler", 3}, {"steel-furnace", 3}},
    result = "boiler-2",
    enabled = false,
    energy_required = 0.5
}

data:extend{boiler2_item, boiler2, boiler2_recipe}

data.raw["boiler"]["boiler"].next_upgrade = "boiler-2"
data.raw["boiler"]["boiler"].fast_replaceable_group = "boiler"

--=================================================================================================

local steam_engine2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local steam_engine2_item = table.deepcopy(data.raw["item"]["steam-engine"])
steam_engine2_item.name = "steam-engine-2"
steam_engine2_item.icons = {{icon = steam_engine2_item.icon, tint = steam_engine2_tint}}
steam_engine2_item.place_result = "steam-engine-2"

local steam_engine2 = table.deepcopy(data.raw["generator"]["steam-engine"])
steam_engine2.name = "steam-engine-2"
steam_engine2.minable.result = "steam-engine-2"
steam_engine2.maximum_temperature = 315
steam_engine2.horizontal_animation.layers[1].filename = "__k2-danger-ores__/graphics/entity/steam-engine-H-2.png"
steam_engine2.horizontal_animation.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-steam-engine-H-2.png"
steam_engine2.vertical_animation.layers[1].filename = "__k2-danger-ores__/graphics/entity/steam-engine-V-2.png"
steam_engine2.vertical_animation.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-steam-engine-V-2.png"
steam_engine2.icons = {{icon = steam_engine2_item.icon, tint = steam_engine2_tint}}

local steam_engine2_recipe = {
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

data:extend{steam_engine2_item, steam_engine2, steam_engine2_recipe}

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
