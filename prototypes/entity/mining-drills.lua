if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

-- Mk.1 > T2 > Mk.2 > T3 > Mk.3 

data.raw["mining-drill"]["electric-mining-drill"].next_upgrade = "electric-mining-drill-2"
data.raw["mining-drill"]["electric-mining-drill"].fast_replaceable_group = "electric-mining-drill"

--=================================================================================================

local md2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.3}

local md2_item = table.deepcopy(data.raw["item"]["electric-mining-drill"])
md2_item.name = "electric-mining-drill-2"
md2_item.icons = {{icon = md2_item.icon, tint = md2_tint}}
md2_item.place_result = "electric-mining-drill-2"
md2_item.order = "a[items]-b[electric-mining-drill]"

local md2 = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
md2.name = "electric-mining-drill-2"
md2.minable = {mining_time = 0.3, result = "electric-mining-drill-2"}
md2.mining_speed = 1
md2.energy_usage = "250kW"
md2.energy_source.emissions_per_minute = 22.5
md2.resource_searching_radius = 3.49
md2.module_specification = {module_slots = 2}
md2.next_upgrade = "kr-electric-mining-drill-mk2"
md2.fast_replaceable_group = "electric-mining-drill"
md2.icons = {{icon = md2_item.icon, tint = md2_tint}}

md2.graphics_set.animation.north.layers[1].tint = md2_tint
md2.graphics_set.animation.north.layers[1].hr_version.tint = md2_tint
md2.graphics_set.animation.east.layers[1].tint = md2_tint
md2.graphics_set.animation.east.layers[1].hr_version.tint = md2_tint
md2.graphics_set.animation.south.layers[1].tint = md2_tint
md2.graphics_set.animation.south.layers[1].hr_version.tint = md2_tint
md2.graphics_set.animation.west.layers[1].tint = md2_tint
md2.graphics_set.animation.west.layers[1].hr_version.tint = md2_tint

md2.wet_mining_graphics_set.animation.north.layers[1].tint = md2_tint
md2.wet_mining_graphics_set.animation.north.layers[1].hr_version.tint = md2_tint
md2.wet_mining_graphics_set.animation.east.layers[1].tint = md2_tint
md2.wet_mining_graphics_set.animation.east.layers[1].hr_version.tint = md2_tint
md2.wet_mining_graphics_set.animation.south.layers[1].tint = md2_tint
md2.wet_mining_graphics_set.animation.south.layers[1].hr_version.tint = md2_tint
md2.wet_mining_graphics_set.animation.west.layers[1].tint = md2_tint
md2.wet_mining_graphics_set.animation.west.layers[1].hr_version.tint = md2_tint

local md2_recipe = {
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

local md2_tech = {
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

data:extend{md2_item, md2, md2_recipe, md2_tech}

--=================================================================================================

local mk2 = data.raw["mining-drill"]["kr-electric-mining-drill-mk2"]
mk2.mining_speed = 2
mk2.energy_usage = "625kW"
mk2.next_upgrade = "electric-mining-drill-3"
mk2.energy_source.emissions_per_minute = 45

KDO.replace_ingredient("kr-electric-mining-drill-mk2", "electric-mining-drill", "electric-mining-drill-2", 2)

KDO.replace_prerequisite("kr-electric-mining-drill-mk2", "kr-electric-mining-drill", "electric-mining-drill-2")
KDO.replace_prerequisite("kr-electric-mining-drill-mk2", "engine", "production-science-pack")
KDO.add_research_ingredient("kr-electric-mining-drill-mk2", "production-science-pack")

--=================================================================================================

local md3_tint = {r = 75 / 255, g = 0 / 255, b = 130 / 255, a = 0.3}

local md3_item = table.deepcopy(data.raw["item"]["electric-mining-drill"])
md3_item.name = "electric-mining-drill-3"
md3_item.icons = {{icon = md3_item.icon, tint = md3_tint}}
md3_item.place_result = "electric-mining-drill-3"
md3_item.order = "a[items]-c[electric-mining-drill]"

local md3 = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
md3.name = "electric-mining-drill-3"
md3.minable = {mining_time = 0.3, result = "electric-mining-drill-3"}
md3.mining_speed = 3
md3.energy_usage = "940kW"
md3.energy_source.emissions_per_minute = 67.5
md3.resource_searching_radius = 4.49
md3.module_specification = {module_slots = 3}
md3.next_upgrade = "kr-electric-mining-drill-mk3"
md3.fast_replaceable_group = "electric-mining-drill"
md3.icons = {{icon = md3_item.icon, tint = md3_tint}}

md3.graphics_set.animation.north.layers[1].tint = md3_tint
md3.graphics_set.animation.north.layers[1].hr_version.tint = md3_tint
md3.graphics_set.animation.east.layers[1].tint = md3_tint
md3.graphics_set.animation.east.layers[1].hr_version.tint = md3_tint
md3.graphics_set.animation.south.layers[1].tint = md3_tint
md3.graphics_set.animation.south.layers[1].hr_version.tint = md3_tint
md3.graphics_set.animation.west.layers[1].tint = md3_tint
md3.graphics_set.animation.west.layers[1].hr_version.tint = md3_tint

md3.wet_mining_graphics_set.animation.north.layers[1].tint = md3_tint
md3.wet_mining_graphics_set.animation.north.layers[1].hr_version.tint = md3_tint
md3.wet_mining_graphics_set.animation.east.layers[1].tint = md3_tint
md3.wet_mining_graphics_set.animation.east.layers[1].hr_version.tint = md3_tint
md3.wet_mining_graphics_set.animation.south.layers[1].tint = md3_tint
md3.wet_mining_graphics_set.animation.south.layers[1].hr_version.tint = md3_tint
md3.wet_mining_graphics_set.animation.west.layers[1].tint = md3_tint
md3.wet_mining_graphics_set.animation.west.layers[1].hr_version.tint = md3_tint

local md3_recipe = {
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

local md3_tech = {
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

data:extend{md3_item, md3, md3_recipe, md3_tech}

--=================================================================================================

local mk3 = data.raw["mining-drill"]["kr-electric-mining-drill-mk3"]
mk3.mining_speed = 4
mk3.energy_usage = "1560kW"
mk3.energy_source.emissions_per_minute = 90

KDO.replace_ingredient("kr-electric-mining-drill-mk3", "kr-electric-mining-drill-mk2", "electric-mining-drill-3", 2)
KDO.replace_prerequisite("kr-electric-mining-drill-mk3", "kr-electric-mining-drill-mk2", "electric-mining-drill-3")
KDO.replace_prerequisite("kr-electric-mining-drill-mk3",  "kr-imersium-processing" , "kr-advanced-tech-card")
