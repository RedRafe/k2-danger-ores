if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

local furnace2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local furnace2_item = table.deepcopy(data.raw["item"]["electric-furnace"])
furnace2_item.name = "electric-furnace-2"
furnace2_item.icons = {{icon = furnace2_item.icon, tint = furnace2_tint}}
furnace2_item.place_result = "electric-furnace-2"

local furnace2 = table.deepcopy(data.raw["furnace"]["electric-furnace"])
furnace2.name = "electric-furnace-2"
furnace2.minable = {mining_time = 0.2, result = "electric-furnace-2"}
furnace2.module_specification = {module_slots = 3, module_info_icon_shift = {0, 0.8}}
furnace2.crafting_speed = 4
furnace2.fast_replaceable_group = "electric-furnace"
furnace2.animation.layers[1].filename = "__k2-danger-ores__/graphics/entity/electric-furnace-base-2.png"
furnace2.animation.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-electric-furnace-2.png"
furnace2.icons = {{icon = furnace2_item.icon, tint = furnace2_tint}}

local furnace2_recipe = {
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

local furnace2_tech = {
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

data.raw["furnace"]["electric-furnace"].next_upgrade = "electric-furnace-2"
data.raw["furnace"]["electric-furnace"].fast_replaceable_group = "electric-furnace"

data:extend{furnace2_item, furnace2, furnace2_recipe, furnace2_tech}

KDO.replace_ingredient("kr-advanced-assembling-machine", "electric-furnace", "electric-furnace-2", 2)
KDO.add_prerequisite("kr-advanced-furnace", "advanced-material-processing-3")