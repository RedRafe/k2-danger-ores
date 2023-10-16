if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

-- Mk.1 > T2 > Mk.2 > T3 > Mk.3 

local emd1 = KDO.config["electric-mining-drill"]
local emd2 = KDO.config["electric-mining-drill-2"]
local emd3 = KDO.config["kr-electric-mining-drill-mk2"]
local emd4 = KDO.config["electric-mining-drill-3"]
local emd5 = KDO.config["kr-electric-mining-drill-mk3"]

--=================================================================================================

data.raw[emd1.type][emd1.name].next_upgrade = emd1.next_upgrade
data.raw[emd1.type][emd1.name].fast_replaceable_group = emd1.fast_replaceable_group

--=================================================================================================

data:extend({
  -- Item
  {
    name = emd2.name,
    type = "item",
    icon = "__Krastorio2Assets__/icons/entities/electric-mining-drill.png",
    icon_size = 64,
    icons = {
      {
        icon = "__Krastorio2Assets__/icons/entities/electric-mining-drill.png",
        tint = emd2._tint
      }
    },
    order = "a[items]-b[electric-mining-drill]",
    place_result = emd2.name,
    stack_size = 50,
    subgroup = "extraction-machine",
  },
  -- Recipe
  {
    name = emd2.name,
    type = "recipe",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { "electric-mining-drill", 2 },
      { "steel-plate", 5 },
      { "advanced-circuit", 2 },
      { "copper-plate", 10 },
    },
    result = emd2.name,
  },
  -- Entity
  KDO.make_tier(emd2),
  -- Technology
  {
    type = "technology",
    name = emd2.name,
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {{type = "unlock-recipe", recipe = emd2.name}},
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
})

--=================================================================================================

local mk2 = data.raw[emd3.type][emd3.name]
mk2.mining_speed = emd3.mining_speed
mk2.energy_usage = emd3.energy_usage
mk2.next_upgrade = emd3.next_upgrade
mk2.fast_replaceable_group = emd3.fast_replaceable_group
mk2.energy_source.emissions_per_minute = emd3.energy_source.emissions_per_minute

KDO.replace_ingredient(emd3.name, emd1.name, emd2.name, 2)

KDO.replace_prerequisite(emd3._technology, emd1._technology, emd2.name)
KDO.replace_prerequisite(emd3._technology, "engine", "production-science-pack")
KDO.add_research_ingredient(emd3._technology, "production-science-pack")

--=================================================================================================

data:extend({
  -- Item
  {
    name = emd4.name,
    type = "item",
    icon = "__Krastorio2Assets__/icons/entities/electric-mining-drill.png",
    icon_size = 64,
    icons = {
      {
        icon = "__Krastorio2Assets__/icons/entities/electric-mining-drill.png",
        tint = emd4._tint
      }
    },
    order = "a[items]-c[electric-mining-drill]",
    place_result = emd4.name,
    stack_size = 50,
    subgroup = "extraction-machine",
  },
  -- Recipe
  {
    name = emd4.name,
    type = "recipe",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { "kr-electric-mining-drill-mk2", 1 },
      { "electric-engine-unit", 10 },
      { "processing-unit", 5 },
      { "low-density-structure", 2 },
    },
    result = emd4.name,
  },
  -- Entity
  KDO.make_tier(emd4),
  -- Technology
  {
    type = "technology",
    name = emd4.name,
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {{type = "unlock-recipe", recipe = emd4.name}},
    prerequisites = {emd3.name, "production-science-pack", "utility-science-pack"},
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
})

--=================================================================================================

local mk3 = data.raw[emd5.type][emd5.name]
mk3.mining_speed = emd5.mining_speed
mk3.energy_usage = emd5.energy_usage
mk3.fast_replaceable_group = emd5.fast_replaceable_group
mk3.energy_source.emissions_per_minute = emd5.energy_source.emissions_per_minute

KDO.replace_ingredient(emd5.name, emd3.name, emd4.name, 2)
KDO.replace_prerequisite(emd5._technology, emd3.name, emd4.name)
KDO.replace_prerequisite(emd5._technology,  "kr-imersium-processing" , "kr-advanced-tech-card")
