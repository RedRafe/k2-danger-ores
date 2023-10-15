if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

local am3 = KDO.config["assembling-machine-3"]
local am4 = KDO.config["assembling-machine-4"]
local am5 = KDO.config["kr-advanced-assembling-machine"]

data:extend({
  -- Item
  {
    name = am4.name,
    type = "item",
    icon = "__base__/graphics/icons/assembling-machine-3.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {{
      icon = "__base__/graphics/icons/assembling-machine-3.png",
      tint = am4.tint
    }},
    order = am4.order,
    place_result = am4.name,
    stack_size = 50,
    subgroup = "production-machine",
  },
  -- Recipe
  {
    name = am4.name,
    type = "recipe",
    enabled = false,
    ingredients = {
      { am3.name, 2 },
      { "speed-module-2", 4 }
    },
    result = am4.name,
  },
  -- Entity
  {
    name = am4.name,
    type = am4.type,
    alert_icon_shift = { -0.09375, -0.375 },
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    animation = {
      layers = {
        {
          filename = "__k2-danger-ores__/graphics/entity/assembling-machine-4.png",
          frame_count = 32,
          height = 119,
          hr_version = {
            filename = "__k2-danger-ores__/graphics/entity/hr-assembling-machine-4.png",
            frame_count = 32,
            height = 237,
            line_length = 8,
            priority = "high",
            scale = 0.5,
            shift = { 0, -0.0234375 },
            width = 214
          },
          line_length = 8,
          priority = "high",
          shift = { 0, -0.015625 },
          width = 108
        },
        {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
          frame_count = 32,
          height = 82,
          hr_version = {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
            frame_count = 32,
            height = 162,
            line_length = 8,
            priority = "high",
            scale = 0.5,
            shift = { 0.875, 0.125 },
            width = 260
          },
          line_length = 8,
          priority = "high",
          shift = { 0.875, 0.125 },
          width = 130
        }
      }
    },
    close_sound = {{ filename = "__base__/sound/machine-close.ogg", volume = 0.5 }},
    collision_box = {{ -1.2, -1.2 }, { 1.2, 1.2 }},
    corpse = "assembling-machine-3-remnants",
    crafting_categories = { "basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid" },
    crafting_speed = 2,
    damaged_trigger_effect = {
      damage_type_filters = "fire",
      entity_name = "spark-explosion",
      offset_deviation = {{ -0.5, -0.5 }, { 0.5, 0.5 }},
      offsets = {{ 0, 1 }},
      type = "create-entity"
    },
    drawing_box = {{ -1.5, -1.7 }, { 1.5, 1.5 }},
    dying_explosion = "assembling-machine-3-explosion",
    energy_source = {
      emissions_per_minute = am4.emissions_per_minute,
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = am4.energy_usage,
    fast_replaceable_group = "assembling-machine",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    fluid_boxes = {
      {
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ position = { 0, -2 }, type = "input" }},
        pipe_covers = {
          east = {
            layers = {
              {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 64,
                hr_version = {
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
                height = 64,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east-shadow.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              }
            }
          },
          north = {
            layers = {
              {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 64,
                hr_version = {
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
                height = 64,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north-shadow.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              }
            }
          },
          south = {
            layers = {
              {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 64,
                hr_version = {
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
                height = 64,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south-shadow.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              }
            }
          },
          west = {
            layers = {
              {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 64,
                hr_version = {
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
                height = 64,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west-shadow.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              }
            }
          }
        },
        pipe_picture = {
          east = {
            filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-E.png",
            height = 38,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-pipe-E.png",
              height = 76,
              priority = "extra-high",
              scale = 0.5,
              shift = { -0.765625, 0.03125 },
              width = 42
            },
            priority = "extra-high",
            shift = { -0.78125, 0.03125 },
            width = 20
          },
          north = {
            filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-N.png",
            height = 18,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-pipe-N.png",
              height = 38,
              priority = "extra-high",
              scale = 0.5,
              shift = { 0.0703125, 0.421875 },
              width = 71
            },
            priority = "extra-high",
            shift = { 0.078125, 0.4375 },
            width = 35
          },
          south = {
            filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-S.png",
            height = 31,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-pipe-S.png",
              height = 61,
              priority = "extra-high",
              scale = 0.5,
              shift = { 0, -0.9765625 },
              width = 88
            },
            priority = "extra-high",
            shift = { 0, -0.984375 },
            width = 44
          },
          west = {
            filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-W.png",
            height = 37,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-pipe-W.png",
              height = 73,
              priority = "extra-high",
              scale = 0.5,
              shift = { 0.8046875, 0.0390625 },
              width = 39
            },
            priority = "extra-high",
            shift = {0.796875,0.046875 },
            width = 19
          }
        },
        production_type = "input",
        secondary_draw_orders = { north = -1 }
      },
      {
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ position = { 0, 2 }, type = "output" }},
        pipe_covers = {
          east = {
            layers = {
              {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 64,
                hr_version = {
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
                height = 64,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east-shadow.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              }
            }
          },
          north = {
            layers = {
              {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 64,
                hr_version = {
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
                height = 64,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north-shadow.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              }
            }
          },
          south = {
            layers = {
              {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 64,
                hr_version = {
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
                height = 64,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south-shadow.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              }
            }
          },
          west = {
            layers = {
              {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 64,
                hr_version = {
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
                height = 64,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west-shadow.png",
                  height = 128,
                  priority = "extra-high",
                  scale = 0.5,
                  width = 128
                },
                priority = "extra-high",
                width = 64
              }
            }
          }
        },
        pipe_picture = {
          east = {
            filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-E.png",
            height = 38,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-pipe-E.png",
              height = 76,
              priority = "extra-high",
              scale = 0.5,
              shift = { -0.765625, 0.03125 },
              width = 42
            },
            priority = "extra-high",
            shift = { -0.78125, 0.03125 },
            width = 20
          },
          north = {
            filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-N.png",
            height = 18,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-pipe-N.png",
              height = 38,
              priority = "extra-high",
              scale = 0.5,
              shift = { 0.0703125, 0.421875 },
              width = 71
            },
            priority = "extra-high",
            shift = { 0.078125, 0.4375 },
            width = 35
          },
          south = {
            filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-S.png",
            height = 31,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-pipe-S.png",
              height = 61,
              priority = "extra-high",
              scale = 0.5,
              shift = { 0, -0.9765625 },
              width = 88
            },
            priority = "extra-high",
            shift = { 0, -0.984375 },
            width = 44
          },
          west = {
            filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-W.png",
            height = 37,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-pipe-W.png",
              height = 73,
              priority = "extra-high",
              scale = 0.5,
              shift = { 0.8046875, 0.0390625 },
              width = 39
            },
            priority = "extra-high",
            shift = { 0.796875, 0.046875 },
            width = 19
          }
        },
        production_type = "output",
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    },
    icon = "__base__/graphics/icons/assembling-machine-3.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {{
      icon = "__base__/graphics/icons/assembling-machine-3.png",
      tint = am4.tint
    }},
    max_health = 400,
    minable = { mining_time = 0.2, result = am4.name },
    module_specification = { module_info_max_icons_per_row = 5, module_slots = 5 },
    open_sound = {{ filename = "__base__/sound/machine-open.ogg", volume = 0.5 }},
    resistances = {{ percent = 70, type = "fire"}},
    selection_box = {{ -1.5, -1.5},{ 1.5, 1.5}},
    vehicle_impact_sound = {
      game_controller_vibration_data = { duration = 150, low_frequency_vibration_intensity = 0.9 },
      switch_vibration_data = { filename = "__base__/sound/car-metal-impact.bnvib" },
      variations = {
        { filename = "__base__/sound/car-metal-impact-2.ogg", volume = 0.5 },
        { filename = "__base__/sound/car-metal-impact-3.ogg", volume = 0.5 },
        { filename = "__base__/sound/car-metal-impact-4.ogg", volume = 0.5 },
        { filename = "__base__/sound/car-metal-impact-5.ogg", volume = 0.5 },
        { filename = "__base__/sound/car-metal-impact-6.ogg", volume = 0.5 },
      }
    },
    working_sound = {
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      sound = {{ filename = "__base__/sound/assembling-machine-t3-1.ogg", volume = 0.45 }
      }
    }
  },
  -- Technology
  {
    name = "automation-4",
    type = "technology",
    icon_size = 256,
    icon_mipmaps = 4,
    icon = "__base__/graphics/technology/automation-3.png",
    effects = {{type = "unlock-recipe", recipe = am4.name}},
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
})

data.raw[am3.type][am3.name].next_upgrade = am4.name
data.raw[am5.type][am5.name].module_specification = am5.module_specification

KDO.replace_ingredient(am5.name, am3.name, am4.name)
KDO.replace_prerequisite(am5.technology, am3.technology, am4.technology)