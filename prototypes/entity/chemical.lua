if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

local cp2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local cp2_item = table.deepcopy(data.raw["item"]["chemical-plant"])
cp2_item.name = "chemical-plant-2"
cp2_item.icons = {{icon = cp2_item.icon, tint = cp2_tint}}
cp2_item.place_result = "chemical-plant-2"

local cp2 = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
cp2.name = "chemical-plant-2"
cp2.minable = {mining_time = 0.2, result = "chemical-plant-2"}
cp2.crafting_speed = 2
cp2.energy_usage = "420kW"
cp2.module_specification = {module_slots = 5, module_info_max_icons_per_row = 5}
cp2.fast_replaceable_group = "chemical-plant"
cp2.icons = {{icon = cp2_item.icon, tint = cp2_tint}}
cp2.animation.north.layers[1].filename = "__k2-danger-ores__/graphics/entity/chemical-plant-2.png"
cp2.animation.north.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-chemical-plant-2.png"
cp2.animation.east.layers[1].filename = "__k2-danger-ores__/graphics/entity/chemical-plant-2.png"
cp2.animation.east.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-chemical-plant-2.png"
cp2.animation.south.layers[1].filename = "__k2-danger-ores__/graphics/entity/chemical-plant-2.png"
cp2.animation.south.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-chemical-plant-2.png"
cp2.animation.west.layers[1].filename = "__k2-danger-ores__/graphics/entity/chemical-plant-2.png"
cp2.animation.west.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-chemical-plant-2.png"
cp2.energy_source.emissions_per_minute = cp2.energy_source.emissions_per_minute  * 2.5

local cp2_recipe = {
    type = "recipe",
    name = "chemical-plant-2",
    ingredients = {
        {"chemical-plant", 2},
        {"engine-unit", 10},
        {"processing-unit", 5},
        {"pipe", 50}
    },
    result = "chemical-plant-2",
    enabled = false,
    energy_required = 5
}

data.raw["assembling-machine"]["chemical-plant"].next_upgrade = "chemical-plant-2"
data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "chemical-plant"

data.raw["assembling-machine"]["kr-advanced-chemical-plant"].module_specification = {module_slots = 6}

data:extend{cp2_item, cp2, cp2_recipe}

KDO.add_ingredient("kr-advanced-chemical-plant", "chemical-plant-2", 2)

--=================================================================================================

local or2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local or2_item = table.deepcopy(data.raw["item"]["oil-refinery"])
or2_item.name = "oil-refinery-2"
or2_item.icons = {{icon = or2_item.icon, tint = or2_tint}}
or2_item.place_result = "oil-refinery-2"

local or2 = table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
or2.name = "oil-refinery-2"
or2.minable = {mining_time = 0.2, result = "oil-refinery-2"}
or2.crafting_speed = 2
or2.energy_usage = "840kW"
or2.module_specification = {module_slots = 4}
or2.fast_replaceable_group = "oil-refinery"
or2.icons = {{icon = or2_item.icon, tint = or2_tint}}
or2.animation.north.layers[1].filename = "__k2-danger-ores__/graphics/entity/oil-refinery-2.png"
or2.animation.north.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-2.png"
or2.animation.east.layers[1].filename = "__k2-danger-ores__/graphics/entity/oil-refinery-2.png"
or2.animation.east.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-2.png"
or2.animation.south.layers[1].filename = "__k2-danger-ores__/graphics/entity/oil-refinery-2.png"
or2.animation.south.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-2.png"
or2.animation.west.layers[1].filename = "__k2-danger-ores__/graphics/entity/oil-refinery-2.png"
or2.animation.west.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-2.png"
or2.next_upgrade =  "oil-refinery-3"
or2.energy_source.emissions_per_minute = or2.energy_source.emissions_per_minute * 2.5

local or2_recipe = {
    type = "recipe",
    name = "oil-refinery-2",
    ingredients = {
        {"oil-refinery", 2},
        {"engine-unit", 10},
        {"processing-unit", 5},
        {"pipe-to-ground", 10},
        {"refined-concrete", 100}
    },
    result = "oil-refinery-2",
    enabled = false,
    energy_required = 8
}

data.raw["assembling-machine"]["oil-refinery"].next_upgrade = "oil-refinery-2"
data.raw["assembling-machine"]["oil-refinery"].fast_replaceable_group = "oil-refinery"

data:extend{or2_item, or2, or2_recipe}

--=================================================================================================

local or3_tint = {r = 75 / 255, g = 0 / 255, b = 130 / 255, a = 0.8}

local or3_item = table.deepcopy(data.raw["item"]["oil-refinery"])
or3_item.name = "oil-refinery-3"
or3_item.icons = {{icon = or3_item.icon, tint = or3_tint}}
or3_item.place_result = "oil-refinery-3"

local or3 = table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
or3.name = "oil-refinery-3"
or3.minable = {mining_time = 0.2, result = "oil-refinery-3"}
or3.crafting_speed = 8
or3.energy_usage = "1600kW"
or3.module_specification = {module_slots = 6}
or3.fast_replaceable_group = "oil-refinery"
or3.icons = {{icon = or3_item.icon, tint = or3_tint}}
or3.energy_source.emissions_per_minute = or3.energy_source.emissions_per_minute * 10
for ___, dir in pairs({"north", "west", "east", "south"}) do
    or3.animation[dir].layers[1].filename = "__k2-danger-ores__/graphics/entity/oil-refinery-3.png"
    or3.animation[dir].layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-3.png"
end

local or3_recipe = {
    type = "recipe",
    name = "oil-refinery-3",
    ingredients = 
    {
        { "oil-refinery-2", 2 },
        { "processing-unit", 20 },
        { "imersium-beam", 20 },
        { "rare-metals", 80 },
        { "energy-control-unit", 10 },
        { "imersium-gear-wheel", 20 },
        { "kr-steel-pipe", 10 },
    },
    result = "oil-refinery-3",
    enabled = false,
    energy_required = 8
}

data:extend{or3_item, or3, or3_recipe}

KDO.add_unlock("kr-advanced-chemical-plant", "oil-refinery-3")

--=================================================================================================

local el2_tint = {r = 75 / 255, g = 0 / 255, b = 130 / 255, a = 0.8}

local el2_item = table.deepcopy(data.raw["item"]["kr-electrolysis-plant"])
el2_item.name = "kr-electrolysis-plant-2"
el2_item.icons = {{icon = el2_item.icon, tint = el2_tint}}
el2_item.place_result = "kr-electrolysis-plant-2"

local el2 = table.deepcopy(data.raw["assembling-machine"]["kr-electrolysis-plant"])
el2.name = "kr-electrolysis-plant-2"
el2.minable.result = "kr-electrolysis-plant-2"
el2.crafting_speed = el2.crafting_speed * 4
el2.energy_usage = "1940kW"
el2.module_specification = { module_slots = 4 }
el2.fast_replaceable_group = "kr-electrolysis-plant"
el2.icons = {{ icon = el2_item.icon, tint = el2.tint }}
el2.energy_source.emissions_per_minute = el2.energy_source.emissions_per_minute * 5
el2.animation.layers[1].tint = el2_tint
el2.animation.layers[1].hr_version.tint = el2_tint

local el2_recipe = {
    type = "recipe",
    name = "kr-electrolysis-plant-2",
    ingredients = 
    {
        { "kr-electrolysis-plant", 4 },
        { "glass", 120 },
        { "processing-unit", 20 },
        { "rare-metals", 80 },
        { "imersium-gear-wheel", 20 },
        { "kr-steel-pipe", 20 },
    },
    result = "kr-electrolysis-plant-2",
    enabled = false,
    energy_required = 8
}

data:extend{el2_item, el2, el2_recipe}

KDO.add_unlock("kr-advanced-chemical-plant", "kr-electrolysis-plant-2")

data.raw["assembling-machine"]["kr-electrolysis-plant"].fast_replaceable_group = "kr-electrolysis-plant"
data.raw["assembling-machine"]["kr-electrolysis-plant"].next_upgrade = "kr-electrolysis-plant-2"

--=================================================================================================

data:extend({{
    type = "technology",
    name = "oil-processing-2",
    icon_size = 256,
    icon_mipmaps = 4,
    icon = "__base__/graphics/technology/oil-gathering.png",
    prerequisites = {"oil-processing", "production-science-pack"},
    effects = {
        {type = "unlock-recipe", recipe = "chemical-plant-2"},
        {type = "unlock-recipe", recipe = "oil-refinery-2"}
    },
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1}
        },
        time = 60
    },
    order = "d-a"
}})

KDO.add_prerequisite("kr-advanced-chemical-plant", "oil-processing-2")
