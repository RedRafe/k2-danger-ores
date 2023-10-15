if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

data:extend({
  -- Item
  {
    name = "electric-furnace-2",
    type = "item",
    icon = "__base__/graphics/icons/electric-furnace.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/electric-furnace.png",
        tint = {
          a = 0.8,
          b = 0.81568627450980387,
          g = 0.64313725490196081,
          r = 0.019607843137254902
        }
      }
    },
    order = "c[electric-furnace]",
    place_result = "electric-furnace-2",
    stack_size = 50,
    subgroup = "smelting-machine",
  },
  -- Recipe
  {
    name = "electric-furnace-2",
    type = "recipe",
    enabled = false,
    energy_required = 5,
    ingredients = {
      {
        "electric-furnace",
        2
      },
      {
        "engine-unit",
        10
      },
      {
        "refined-concrete",
        100
      }
    },
    result = "electric-furnace-2",
  },
  -- Entity
  {
    name = "electric-furnace-2",
    type = "assembling-machine",
    allowed_effects = {
      "consumption",
      "speed",
      "productivity",
      "pollution"
    },
    animation = {
      layers = {
        {
          filename = "__k2-danger-ores__/graphics/entity/electric-furnace-base-2.png",
          frame_count = 1,
          height = 100,
          hr_version = {
            filename = "__k2-danger-ores__/graphics/entity/hr-electric-furnace-2.png",
            frame_count = 1,
            height = 219,
            priority = "high",
            scale = 0.5,
            shift = {
              0.0234375,
              0.1796875
            },
            width = 239
          },
          priority = "high",
          shift = {
            0.421875,
            0
          },
          width = 129
        },
        {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
          frame_count = 1,
          height = 100,
          hr_version = {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
            frame_count = 1,
            height = 171,
            priority = "high",
            scale = 0.5,
            shift = {
              0.3515625,
              0.2421875
            },
            width = 227
          },
          priority = "high",
          shift = {
            0.421875,
            0
          },
          width = 129
        }
      }
    },
    close_sound = {
      {
        filename = "__base__/sound/machine-close.ogg",
        volume = 0.5
      }
    },
    collision_box = {
      {
        -1.2,
        -1.2
      },
      {
        1.2,
        1.2
      }
    },
    corpse = "electric-furnace-remnants",
    crafting_categories = {
      "smelting"
    },
    crafting_speed = 4,
    damaged_trigger_effect = {
      damage_type_filters = "fire",
      entity_name = "spark-explosion",
      offset_deviation = {
        {
          -0.5,
          -0.5
        },
        {
          0.5,
          0.5
        }
      },
      offsets = {
        {
          0,
          1
        }
      },
      type = "create-entity"
    },
    dying_explosion = "electric-furnace-explosion",
    energy_source = {
      emissions_per_minute = 2.5,
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "875kW",
    fast_replaceable_group = "electric-furnace",
    flags = {
      "placeable-neutral",
      "placeable-player",
      "player-creation"
    },
    icon = "__base__/graphics/icons/electric-furnace.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/electric-furnace.png",
        tint = {
          a = 0.8,
          b = 0.81568627450980387,
          g = 0.64313725490196081,
          r = 0.019607843137254902
        }
      }
    },
    max_health = 350,
    minable = {
      mining_time = 0.2,
      result = "electric-furnace-2"
    },
    module_specification = {
      module_info_icon_shift = {
        0,
        0.8
      },
      module_slots = 3
    },
    open_sound = {
      {
        filename = "__base__/sound/machine-open.ogg",
        volume = 0.5
      }
    },
    resistances = {
      {
        percent = 80,
        type = "fire"
      }
    },
    result_inventory_size = 1,
    selection_box = {
      {
        -1.5,
        -1.5
      },
      {
        1.5,
        1.5
      }
    },
    vehicle_impact_sound = {
      game_controller_vibration_data = {
        duration = 150,
        low_frequency_vibration_intensity = 0.9
      },
      switch_vibration_data = {
        filename = "__base__/sound/car-metal-impact.bnvib"
      },
      variations = {
        {
          filename = "__base__/sound/car-metal-impact-2.ogg",
          volume = 0.5
        },
        {
          filename = "__base__/sound/car-metal-impact-3.ogg",
          volume = 0.5
        },
        {
          filename = "__base__/sound/car-metal-impact-4.ogg",
          volume = 0.5
        },
        {
          filename = "__base__/sound/car-metal-impact-5.ogg",
          volume = 0.5
        },
        {
          filename = "__base__/sound/car-metal-impact-6.ogg",
          volume = 0.5
        }
      }
    },
    water_reflection = {
      orientation_to_variation = false,
      pictures = {
        filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
        height = 24,
        priority = "extra-high",
        scale = 5,
        shift = {
          0.15625,
          1.25
        },
        variation_count = 1,
        width = 24
      },
      rotate = false
    },
    working_sound = {
      audible_distance_modifier = 0.6,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      sound = {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.6
      }
    },
    working_visualisations = {
      {
        animation = {
          layers = {
            {
              animation_speed = 0.5,
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
              frame_count = 12,
              height = 15,
              hr_version = {
                animation_speed = 0.5,
                filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
                frame_count = 12,
                height = 56,
                priority = "high",
                scale = 0.5,
                shift = {
                  0.0546875,
                  1.0234375
                },
                width = 60
              },
              priority = "high",
              shift = {
                0.015625,
                0.890625
              },
              width = 25
            },
            {
              blend_mode = "additive",
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-light.png",
              height = 102,
              hr_version = {
                blend_mode = "additive",
                filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-light.png",
                height = 202,
                repeat_count = 12,
                scale = 0.5,
                shift = {
                  0.03125,
                  0
                },
                width = 202
              },
              repeat_count = 12,
              shift = {
                0,
                0
              },
              width = 104
            }
          }
        },
        draw_as_light = true,
        fadeout = true
      },
      {
        animation = {
          blend_mode = "additive",
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-ground-light.png",
          height = 64,
          hr_version = {
            blend_mode = "additive",
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-ground-light.png",
            height = 124,
            scale = 0.5,
            shift = {
              0.09375,
              2.15625
            },
            width = 166
          },
          shift = {
            0.125,
            2.125
          },
          width = 82
        },
        draw_as_light = true,
        draw_as_sprite = false,
        fadeout = true
      },
      {
        animation = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
          frame_count = 4,
          height = 13,
          hr_version = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
            frame_count = 4,
            height = 25,
            priority = "high",
            scale = 0.5,
            shift = {
              -0.640625,
              -0.578125
            },
            width = 37
          },
          priority = "high",
          shift = {
            -0.671875,
            -0.640625
          },
          width = 19
        }
      },
      {
        animation = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
          frame_count = 4,
          height = 9,
          hr_version = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
            frame_count = 4,
            height = 15,
            priority = "high",
            scale = 0.5,
            shift = {
              0.109375,
              -1.1875
            },
            width = 23
          },
          priority = "high",
          shift = {
            0.0625,
            -1.234375
          },
          width = 12
        }
      }
    }
  }
})

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