if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

local f2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local f2_item = table.deepcopy(data.raw["item"]["electric-furnace"])
f2_item.name = "electric-furnace-2"
f2_item.icons = {{icon = f2_item.icon, tint = f2_tint}}
f2_item.place_result = "electric-furnace-2"

local f2 = table.deepcopy(data.raw["assembling-machine"]["electric-furnace"])
f2.name = "electric-furnace-2"
f2.minable = {mining_time = 0.2, result = "electric-furnace-2"}
f2.module_specification = {module_slots = 3, module_info_icon_shift = {0, 0.8}}
f2.crafting_speed = f2.crafting_speed * 2
f2.fast_replaceable_group = "electric-furnace"
f2.animation.layers[1].filename = "__k2-danger-ores__/graphics/entity/electric-furnace-base-2.png"
f2.animation.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-electric-furnace-2.png"
f2.icons = {{icon = f2_item.icon, tint = f2_tint}}
f2.energy_source.emissions_per_minute = f2.energy_source.emissions_per_minute * 2.5
f2.energy_usage = KDO.string.msv(f2.energy_usage, 2.5)

local f2_recipe = {
    type = "recipe",
    name = "electric-furnace-2",
    ingredients = {
        {"electric-furnace", 2},
        {"engine-unit", 10},
        {"refined-concrete", 100}
    },
    result = "electric-furnace-2",
    enabled = false,
    energy_required = 5
}

local f2_tech = {
    type = "technology",
    name = "advanced-material-processing-3",
    icon_size = 256,
    icon_mipmaps = 4,
    icon = "__base__/graphics/technology/advanced-material-processing-2.png",
    effects = {{type = "unlock-recipe", recipe = "electric-furnace-2"}},
    prerequisites = {"advanced-material-processing-2", "production-science-pack"},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1}
        },
        time = 60
    },
    order = "c-c-b"
}

data.raw["assembling-machine"]["electric-furnace"].next_upgrade = "electric-furnace-2"
data.raw["assembling-machine"]["electric-furnace"].fast_replaceable_group = "electric-furnace"

data:extend{f2_item, f2, f2_recipe, f2_tech}

KDO.replace_ingredient("kr-advanced-assembling-machine", "electric-furnace", "electric-furnace-2", 2)
KDO.add_prerequisite("kr-advanced-furnace", "advanced-material-processing-3")