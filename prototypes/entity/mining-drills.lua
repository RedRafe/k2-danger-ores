if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

-- Mk.1 > T2 > Mk.2 > T3 > Mk.3 

data.raw["mining-drill"]["electric-mining-drill"].next_upgrade = "electric-mining-drill-2"
data.raw["mining-drill"]["electric-mining-drill"].fast_replaceable_group = "electric-mining-drill"

--=================================================================================================

local mining_drill2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.3}

local mining_drill2_item = table.deepcopy(data.raw["item"]["electric-mining-drill"])
mining_drill2_item.name = "electric-mining-drill-2"
mining_drill2_item.icons = {{icon = mining_drill2_item.icon, tint = mining_drill2_tint}}
mining_drill2_item.place_result = "electric-mining-drill-2"
mining_drill2_item.order = "a[items]-b[electric-mining-drill]"

local mining_drill2 = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
mining_drill2.name = "electric-mining-drill-2"
mining_drill2.minable = {mining_time = 0.3, result = "electric-mining-drill-2"}
mining_drill2.mining_speed = 1
mining_drill2.energy_usage = "150kW"
mining_drill2.energy_source.emissions_per_minute = 15
mining_drill2.resource_searching_radius = 3.49
mining_drill2.module_specification = {module_slots = 2}
mining_drill2.next_upgrade = "kr-electric-mining-drill-mk2"
mining_drill2.fast_replaceable_group = "electric-mining-drill"
mining_drill2.icons = {{icon = mining_drill2_item.icon, tint = mining_drill2_tint}}

mining_drill2.graphics_set.animation.north.layers[1].tint = mining_drill2_tint
mining_drill2.graphics_set.animation.north.layers[1].hr_version.tint = mining_drill2_tint
mining_drill2.graphics_set.animation.east.layers[1].tint = mining_drill2_tint
mining_drill2.graphics_set.animation.east.layers[1].hr_version.tint = mining_drill2_tint
mining_drill2.graphics_set.animation.south.layers[1].tint = mining_drill2_tint
mining_drill2.graphics_set.animation.south.layers[1].hr_version.tint = mining_drill2_tint
mining_drill2.graphics_set.animation.west.layers[1].tint = mining_drill2_tint
mining_drill2.graphics_set.animation.west.layers[1].hr_version.tint = mining_drill2_tint

mining_drill2.wet_mining_graphics_set.animation.north.layers[1].tint = mining_drill2_tint
mining_drill2.wet_mining_graphics_set.animation.north.layers[1].hr_version.tint = mining_drill2_tint
mining_drill2.wet_mining_graphics_set.animation.east.layers[1].tint = mining_drill2_tint
mining_drill2.wet_mining_graphics_set.animation.east.layers[1].hr_version.tint = mining_drill2_tint
mining_drill2.wet_mining_graphics_set.animation.south.layers[1].tint = mining_drill2_tint
mining_drill2.wet_mining_graphics_set.animation.south.layers[1].hr_version.tint = mining_drill2_tint
mining_drill2.wet_mining_graphics_set.animation.west.layers[1].tint = mining_drill2_tint
mining_drill2.wet_mining_graphics_set.animation.west.layers[1].hr_version.tint = mining_drill2_tint

local mining_drill2_recipe = {
    type = "recipe",
    name = "electric-mining-drill-2",
    ingredients = {
        {"electric-mining-drill", 2},
        {"steel-plate", 5},
        {"advanced-circuit", 2}
    },
    result = "electric-mining-drill-2",
    enabled = false,
    energy_required = 2
}

local mining_drill2_tech = {
    type = "technology",
    name = "electric-mining-drill-2",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {{type = "unlock-recipe", recipe = "electric-mining-drill-2"}},
    prerequisites = {"kr-electric-mining-drill", "chemical-science-pack"},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 30
    },
    order = "c-c-b"
}

data:extend{mining_drill2_item, mining_drill2, mining_drill2_recipe, mining_drill2_tech}

--=================================================================================================

local mk2 = data.raw["mining-drill"]["kr-electric-mining-drill-mk2"]
mk2.mining_speed = 2
mk2.energy_usage = "225kW"
mk2.next_upgrade = "electric-mining-drill-3"
mk2.energy_source.emissions_per_minute = 30

KDO.replace_ingredient("kr-electric-mining-drill-mk2", "electric-mining-drill", "electric-mining-drill-2", 2)

KDO.replace_prerequisite("kr-electric-mining-drill-mk2", "kr-electric-mining-drill", "electric-mining-drill-2")
KDO.replace_prerequisite("kr-electric-mining-drill-mk2", "engine", "production-science-pack")
KDO.add_research_ingredient("kr-electric-mining-drill-mk2", "production-science-pack")

--=================================================================================================

local mining_drill3_tint = {r = 75 / 255, g = 0 / 255, b = 130 / 255, a = 0.3}

local mining_drill3_item = table.deepcopy(data.raw["item"]["electric-mining-drill"])
mining_drill3_item.name = "electric-mining-drill-3"
mining_drill3_item.icons = {{icon = mining_drill3_item.icon, tint = mining_drill3_tint}}
mining_drill3_item.place_result = "electric-mining-drill-3"
mining_drill3_item.order = "a[items]-c[electric-mining-drill]"

local mining_drill3 = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
mining_drill3.name = "electric-mining-drill-3"
mining_drill3.minable = {mining_time = 0.3, result = "electric-mining-drill-3"}
mining_drill3.mining_speed = 3
mining_drill3.energy_usage = "300kW"
mining_drill3.energy_source.emissions_per_minute = 45
mining_drill3.resource_searching_radius = 4.49
mining_drill3.module_specification = {module_slots = 3}
mining_drill3.next_upgrade = "kr-electric-mining-drill-mk3"
mining_drill3.fast_replaceable_group = "electric-mining-drill"
mining_drill3.icons = {{icon = mining_drill3_item.icon, tint = mining_drill3_tint}}

mining_drill3.graphics_set.animation.north.layers[1].tint = mining_drill3_tint
mining_drill3.graphics_set.animation.north.layers[1].hr_version.tint = mining_drill3_tint
mining_drill3.graphics_set.animation.east.layers[1].tint = mining_drill3_tint
mining_drill3.graphics_set.animation.east.layers[1].hr_version.tint = mining_drill3_tint
mining_drill3.graphics_set.animation.south.layers[1].tint = mining_drill3_tint
mining_drill3.graphics_set.animation.south.layers[1].hr_version.tint = mining_drill3_tint
mining_drill3.graphics_set.animation.west.layers[1].tint = mining_drill3_tint
mining_drill3.graphics_set.animation.west.layers[1].hr_version.tint = mining_drill3_tint

mining_drill3.wet_mining_graphics_set.animation.north.layers[1].tint = mining_drill3_tint
mining_drill3.wet_mining_graphics_set.animation.north.layers[1].hr_version.tint = mining_drill3_tint
mining_drill3.wet_mining_graphics_set.animation.east.layers[1].tint = mining_drill3_tint
mining_drill3.wet_mining_graphics_set.animation.east.layers[1].hr_version.tint = mining_drill3_tint
mining_drill3.wet_mining_graphics_set.animation.south.layers[1].tint = mining_drill3_tint
mining_drill3.wet_mining_graphics_set.animation.south.layers[1].hr_version.tint = mining_drill3_tint
mining_drill3.wet_mining_graphics_set.animation.west.layers[1].tint = mining_drill3_tint
mining_drill3.wet_mining_graphics_set.animation.west.layers[1].hr_version.tint = mining_drill3_tint

local mining_drill3_recipe = {
    type = "recipe",
    name = "electric-mining-drill-3",
    ingredients = {
        {"kr-electric-mining-drill-mk2", 1},
        {"electric-engine-unit", 10},
        {"processing-unit", 5},
        {"low-density-structure", 2}
    },
    result = "electric-mining-drill-3",
    enabled = false,
    energy_required = 2
}

local mining_drill3_tech = {
    type = "technology",
    name = "electric-mining-drill-3",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {{type = "unlock-recipe", recipe = "electric-mining-drill-3"}},
    prerequisites = {"kr-electric-mining-drill-mk2", "production-science-pack", "utility-science-pack"},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
        },
        time = 60
    },
    order = "a-b-c"
}

data:extend{mining_drill3_item, mining_drill3, mining_drill3_recipe, mining_drill3_tech}

--=================================================================================================

local mk3 = data.raw["mining-drill"]["kr-electric-mining-drill-mk3"]
mk3.mining_speed = 4
mk3.energy_usage = "350kW"
mk3.energy_source.emissions_per_minute = 60

KDO.replace_ingredient("kr-electric-mining-drill-mk3", "kr-electric-mining-drill-mk2", "electric-mining-drill-3", 2)
KDO.replace_prerequisite("kr-electric-mining-drill-mk3", "kr-electric-mining-drill-mk2", "electric-mining-drill-3")
KDO.replace_prerequisite("kr-electric-mining-drill-mk3",  "kr-imersium-processing" , "kr-advanced-tech-card")
