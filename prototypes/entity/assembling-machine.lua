if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

local assembling_machine4_tint = {r = 216 / 255, g = 24 / 255, b = 3 / 255, a = 0.8}

local assembling_machine4_item = table.deepcopy(data.raw["item"]["assembling-machine-3"])
assembling_machine4_item.name = "assembling-machine-4"
assembling_machine4_item.icons = {{icon = assembling_machine4_item.icon, tint = assembling_machine4_tint}}
assembling_machine4_item.place_result = "assembling-machine-4"
assembling_machine4_item.order = "c1[assembling-machine-4]"

local assembling_machine4 = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
assembling_machine4.name = "assembling-machine-4"
assembling_machine4.minable = {mining_time = 0.2, result = "assembling-machine-4"}
assembling_machine4.crafting_speed = 2
assembling_machine4.energy_usage = "500kW"
assembling_machine4.module_specification = {module_slots = 5, module_info_max_icon_rows = 5}
assembling_machine4.animation.layers[1].filename = "__k2-danger-ores__/graphics/entity/assembling-machine-4.png"
assembling_machine4.animation.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-assembling-machine-4.png"
assembling_machine4.icons = {{icon = assembling_machine4_item.icon, tint = assembling_machine4_tint}}

local assembling_machine4_recipe = {
    type = "recipe",
    name = "assembling-machine-4",
    ingredients = {{"assembling-machine-3", 2}, {"speed-module-2", 4}},
    result = "assembling-machine-4",
    enabled = false
}

local assembling_machine4_tech = {
    type = "technology",
    name = "automation-4",
    icon_size = 256,
    icon_mipmaps = 4,
    icon = "__base__/graphics/technology/automation-3.png",
    effects = {{type = "unlock-recipe", recipe = "assembling-machine-4"}},
    prerequisites = {"speed-module-2", "automation-3"},
    unit = {
        count = 600,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
        },
        time = 60
    },
    order = "a-b-c"
}

data.raw["assembling-machine"]["assembling-machine-3"].next_upgrade = "assembling-machine-4"
data.raw["assembling-machine"]["kr-advanced-assembling-machine"].module_specification = {module_slots = 6}

data:extend{assembling_machine4_item, assembling_machine4, assembling_machine4_recipe, assembling_machine4_tech}

KDO.replace_ingredient("kr-advanced-assembling-machine", "assembling-machine-3", "assembling-machine-4")
KDO.replace_prerequisite("kr-automation", "automation-3", "automation-4")