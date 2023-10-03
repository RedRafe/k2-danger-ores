if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

local chemical_plant2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local chemical_plant2_item = table.deepcopy(data.raw["item"]["chemical-plant"])
chemical_plant2_item.name = "chemical-plant-2"
chemical_plant2_item.icons = {{icon = chemical_plant2_item.icon, tint = chemical_plant2_tint}}
chemical_plant2_item.place_result = "chemical-plant-2"

local chemical_plant2 = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
chemical_plant2.name = "chemical-plant-2"
chemical_plant2.minable = {mining_time = 0.2, result = "chemical-plant-2"}
chemical_plant2.crafting_speed = 2
chemical_plant2.energy_usage = "420kW"
chemical_plant2.module_specification = {module_slots = 5, module_info_max_icon_rows = 5}
chemical_plant2.fast_replaceable_group = "chemical-plant"
chemical_plant2.icons = {{icon = chemical_plant2_item.icon, tint = chemical_plant2_tint}}
chemical_plant2.animation.north.layers[1].filename = "__k2-danger-ores__/graphics/entity/chemical-plant-2.png"
chemical_plant2.animation.north.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-chemical-plant-2.png"
chemical_plant2.animation.east.layers[1].filename = "__k2-danger-ores__/graphics/entity/chemical-plant-2.png"
chemical_plant2.animation.east.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-chemical-plant-2.png"
chemical_plant2.animation.south.layers[1].filename = "__k2-danger-ores__/graphics/entity/chemical-plant-2.png"
chemical_plant2.animation.south.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-chemical-plant-2.png"
chemical_plant2.animation.west.layers[1].filename = "__k2-danger-ores__/graphics/entity/chemical-plant-2.png"
chemical_plant2.animation.west.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-chemical-plant-2.png"

local chemical_plant2_recipe = {
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

data:extend{chemical_plant2_item, chemical_plant2, chemical_plant2_recipe}

KDO.add_ingredient("kr-advanced-chemical-plant", "chemical-plant-2", 2)

--=================================================================================================

local oil_refinery2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local oil_refinery2_item = table.deepcopy(data.raw["item"]["oil-refinery"])
oil_refinery2_item.name = "oil-refinery-2"
oil_refinery2_item.icons = {{icon = oil_refinery2_item.icon, tint = oil_refinery2_tint}}
oil_refinery2_item.place_result = "oil-refinery-2"

local oil_refinery2 = table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
oil_refinery2.name = "oil-refinery-2"
oil_refinery2.minable = {mining_time = 0.2, result = "oil-refinery-2"}
oil_refinery2.crafting_speed = 2
oil_refinery2.energy_usage = "840kW"
oil_refinery2.module_specification = {module_slots = 4}
oil_refinery2.fast_replaceable_group = "oil-refinery"
oil_refinery2.icons = {{icon = oil_refinery2_item.icon, tint = oil_refinery2_tint}}
oil_refinery2.animation.north.layers[1].filename = "__k2-danger-ores__/graphics/entity/oil-refinery-2.png"
oil_refinery2.animation.north.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-2.png"
oil_refinery2.animation.east.layers[1].filename = "__k2-danger-ores__/graphics/entity/oil-refinery-2.png"
oil_refinery2.animation.east.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-2.png"
oil_refinery2.animation.south.layers[1].filename = "__k2-danger-ores__/graphics/entity/oil-refinery-2.png"
oil_refinery2.animation.south.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-2.png"
oil_refinery2.animation.west.layers[1].filename = "__k2-danger-ores__/graphics/entity/oil-refinery-2.png"
oil_refinery2.animation.west.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-2.png"
oil_refinery2.next_upgrade =  "oil-refinery-3"

local oil_refinery2_recipe = {
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

data:extend{oil_refinery2_item, oil_refinery2, oil_refinery2_recipe}

--=================================================================================================

local oil_refinery3_tint = {r = 75 / 255, g = 0 / 255, b = 130 / 255, a = 0.8}

local oil_refinery3_item = table.deepcopy(data.raw["item"]["oil-refinery"])
oil_refinery3_item.name = "oil-refinery-3"
oil_refinery3_item.icons = {{icon = oil_refinery3_item.icon, tint = oil_refinery3_tint}}
oil_refinery3_item.place_result = "oil-refinery-3"

local oil_refinery3 = table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
oil_refinery3.name = "oil-refinery-3"
oil_refinery3.minable = {mining_time = 0.2, result = "oil-refinery-3"}
oil_refinery3.crafting_speed = 8
oil_refinery3.energy_usage = "1600kW"
oil_refinery3.module_specification = {module_slots = 6}
oil_refinery3.fast_replaceable_group = "oil-refinery"
oil_refinery3.icons = {{icon = oil_refinery3_item.icon, tint = oil_refinery3_tint}}
for ___, dir in pairs({"north", "west", "east", "south"}) do
    oil_refinery3.animation[dir].layers[1].filename = "__k2-danger-ores__/graphics/entity/oil-refinery-3.png"
    oil_refinery3.animation[dir].layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-3.png"
end

local oil_refinery3_recipe = {
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

data:extend{oil_refinery3_item, oil_refinery3, oil_refinery3_recipe}

KDO.add_unlock("kr-advanced-chemical-plant", "oil-refinery-3")

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
