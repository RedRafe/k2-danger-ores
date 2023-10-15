if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

data:extend({
  -- Item
  {
    name = "boiler-2",
    type = "item",
    icon = "__base__/graphics/icons/boiler.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/boiler.png",
        tint = {
          a = 0.8,
          b = 0.81568627450980387,
          g = 0.64313725490196081,
          r = 0.019607843137254902
        }
      }
    },
    order = "b[steam-power]-a[boiler]",
    place_result = "boiler-2",
    stack_size = 50,
    subgroup = "energy",
  },
  -- Recipe
  {
    name = "boiler-2",
    type = "recipe",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
      {
        "boiler",
        3
      },
      {
        "steel-furnace",
        3
      }
    },
    result = "boiler-2",
  },
  -- Entity
  {
    name = "boiler-2",
    type = "boiler",
    burning_cooldown = 20,
    close_sound = {
      {
        filename = "__base__/sound/machine-close.ogg",
        volume = 0.5
      }
    },
    collision_box = {
      {
        -1.0800000000000001,
        -0.58000000000000007
      },
      {
        1.0800000000000001,
        0.58000000000000007
      }
    },
    corpse = "boiler-remnants",
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
    dying_explosion = "boiler-explosion",
    energy_consumption = "3MW",
    energy_source = {
      effectivity = 1,
      emissions_per_minute = 50,
      fuel_category = "chemical",
      fuel_inventory_size = 1,
      light_flicker = {
        color = {
          0,
          0,
          0
        },
        maximum_intensity = 0.95,
        minimum_intensity = 0.6
      },
      smoke = {
        {
          east_position = {
            0.625,
            -2.1875
          },
          frequency = 15,
          name = "smoke",
          north_position = {
            -1.1875,
            -1.484375
          },
          south_position = {
            1.203125,
            -1
          },
          starting_frame_deviation = 60,
          starting_vertical_speed = 0,
          west_position = {
            -0.59375,
            -0.265625
          }
        }
      },
      type = "burner"
    },
    fast_replaceable_group = "boiler",
    fire = {
      east = {
        animation_speed = 0.5,
        draw_as_glow = true,
        filename = "__base__/graphics/entity/boiler/boiler-E-fire.png",
        frame_count = 64,
        height = 14,
        hr_version = {
          animation_speed = 0.5,
          draw_as_glow = true,
          filename = "__base__/graphics/entity/boiler/hr-boiler-E-fire.png",
          frame_count = 64,
          height = 28,
          line_length = 8,
          priority = "extra-high",
          scale = 0.5,
          shift = {
            -0.296875,
            -0.6875
          },
          width = 28
        },
        line_length = 8,
        priority = "extra-high",
        shift = {
          -0.3125,
          -0.6875
        },
        width = 14
      },
      north = {
        animation_speed = 0.5,
        draw_as_glow = true,
        filename = "__base__/graphics/entity/boiler/boiler-N-fire.png",
        frame_count = 64,
        height = 13,
        hr_version = {
          animation_speed = 0.5,
          draw_as_glow = true,
          filename = "__base__/graphics/entity/boiler/hr-boiler-N-fire.png",
          frame_count = 64,
          height = 26,
          line_length = 8,
          priority = "extra-high",
          scale = 0.5,
          shift = {
            0,
            -0.265625
          },
          width = 26
        },
        line_length = 8,
        priority = "extra-high",
        shift = {
          0,
          -0.265625
        },
        width = 12
      },
      south = {
        animation_speed = 0.5,
        draw_as_glow = true,
        filename = "__base__/graphics/entity/boiler/boiler-S-fire.png",
        frame_count = 64,
        height = 9,
        hr_version = {
          animation_speed = 0.5,
          draw_as_glow = true,
          filename = "__base__/graphics/entity/boiler/hr-boiler-S-fire.png",
          frame_count = 64,
          height = 16,
          line_length = 8,
          priority = "extra-high",
          scale = 0.5,
          shift = {
            -0.03125,
            -0.828125
          },
          width = 26
        },
        line_length = 8,
        priority = "extra-high",
        shift = {
          -0.03125,
          -0.828125
        },
        width = 12
      },
      west = {
        animation_speed = 0.5,
        draw_as_glow = true,
        filename = "__base__/graphics/entity/boiler/boiler-W-fire.png",
        frame_count = 64,
        height = 14,
        hr_version = {
          animation_speed = 0.5,
          draw_as_glow = true,
          filename = "__base__/graphics/entity/boiler/hr-boiler-W-fire.png",
          frame_count = 64,
          height = 29,
          line_length = 8,
          priority = "extra-high",
          scale = 0.5,
          shift = {
            0.40625,
            -0.7265625
          },
          width = 30
        },
        line_length = 8,
        priority = "extra-high",
        shift = {
          0.40625,
          -0.71875
        },
        width = 14
      }
    },
    fire_flicker_enabled = true,
    fire_glow = {
      east = {
        blend_mode = "additive",
        draw_as_glow = true,
        filename = "__base__/graphics/entity/boiler/boiler-E-light.png",
        frame_count = 1,
        height = 122,
        hr_version = {
          blend_mode = "additive",
          draw_as_glow = true,
          filename = "__base__/graphics/entity/boiler/hr-boiler-E-light.png",
          frame_count = 1,
          height = 244,
          priority = "extra-high",
          scale = 0.5,
          shift = {
            0.0078125,
            -0.40625
          },
          width = 139
        },
        priority = "extra-high",
        shift = {
          0,
          -0.40625
        },
        width = 70
      },
      north = {
        blend_mode = "additive",
        draw_as_glow = true,
        filename = "__base__/graphics/entity/boiler/boiler-N-light.png",
        frame_count = 1,
        height = 87,
        hr_version = {
          blend_mode = "additive",
          draw_as_glow = true,
          filename = "__base__/graphics/entity/boiler/hr-boiler-N-light.png",
          frame_count = 1,
          height = 173,
          priority = "extra-high",
          scale = 0.5,
          shift = {
            -0.03125,
            -0.2109375
          },
          width = 200
        },
        priority = "extra-high",
        shift = {
          -0.03125,
          -0.203125
        },
        width = 100
      },
      south = {
        blend_mode = "additive",
        draw_as_glow = true,
        filename = "__base__/graphics/entity/boiler/boiler-S-light.png",
        frame_count = 1,
        height = 81,
        hr_version = {
          blend_mode = "additive",
          draw_as_glow = true,
          filename = "__base__/graphics/entity/boiler/hr-boiler-S-light.png",
          frame_count = 1,
          height = 162,
          priority = "extra-high",
          scale = 0.5,
          shift = {
            0.03125,
            0.171875
          },
          width = 200
        },
        priority = "extra-high",
        shift = {
          0.03125,
          0.171875
        },
        width = 100
      },
      west = {
        blend_mode = "additive",
        draw_as_glow = true,
        filename = "__base__/graphics/entity/boiler/boiler-W-light.png",
        frame_count = 1,
        height = 109,
        hr_version = {
          blend_mode = "additive",
          draw_as_glow = true,
          filename = "__base__/graphics/entity/boiler/hr-boiler-W-light.png",
          frame_count = 1,
          height = 217,
          priority = "extra-high",
          scale = 0.5,
          shift = {
            0.0625,
            -0.1953125
          },
          width = 136
        },
        priority = "extra-high",
        shift = {
          0.0625,
          -0.203125
        },
        width = 68
      }
    },
    fire_glow_flicker_enabled = true,
    flags = {
      "placeable-neutral",
      "player-creation"
    },
    fluid_box = {
      base_area = 1,
      base_level = -1,
      filter = "water",
      height = 2,
      pipe_connections = {
        {
          position = {
            -2,
            0.5
          },
          type = "input-output"
        },
        {
          position = {
            2,
            0.5
          },
          type = "input-output"
        }
      },
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
      production_type = "input-output"
    },
    icon = "__base__/graphics/icons/boiler.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/boiler.png",
        tint = {
          a = 0.8,
          b = 0.81568627450980387,
          g = 0.64313725490196081,
          r = 0.019607843137254902
        }
      }
    },
    max_health = 200,
    minable = {
      mining_time = 0.2,
      result = "boiler-2"
    },
    mode = "output-to-separate-pipe",
    open_sound = {
      {
        filename = "__base__/sound/machine-open.ogg",
        volume = 0.5
      }
    },
    output_fluid_box = {
      base_area = 1,
      base_level = 1,
      filter = "steam",
      height = 2,
      pipe_connections = {
        {
          position = {
            0,
            -1.5
          },
          type = "output"
        }
      },
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
      production_type = "output"
    },
    patch = {
      east = {
        filename = "__base__/graphics/entity/boiler/boiler-E-patch.png",
        height = 17,
        hr_version = {
          filename = "__base__/graphics/entity/boiler/hr-boiler-E-patch.png",
          height = 36,
          scale = 0.5,
          shift = {
            1.046875,
            -0.421875
          },
          width = 6
        },
        priority = "extra-high",
        shift = {
          1.046875,
          -0.421875
        },
        width = 3
      }
    },
    resistances = {
      {
        percent = 90,
        type = "fire"
      },
      {
        percent = 30,
        type = "explosion"
      },
      {
        percent = 30,
        type = "impact"
      }
    },
    selection_box = {
      {
        -1.5,
        -1
      },
      {
        1.5,
        1
      }
    },
    structure = {
      east = {
        layers = {
          {
            filename = "__k2-danger-ores__/graphics/entity/boiler-E-idle-2.png",
            height = 147,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-boiler-E-idle-2.png",
              height = 301,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                -0.09375,
                0.0390625
              },
              width = 216
            },
            priority = "extra-high",
            shift = {
              -0.109375,
              -0.015625
            },
            width = 105
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",
            height = 97,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/boiler/hr-boiler-E-shadow.png",
              height = 194,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                0.9375,
                0.296875
              },
              width = 184
            },
            priority = "extra-high",
            shift = {
              0.9375,
              0.296875
            },
            width = 92
          }
        }
      },
      north = {
        layers = {
          {
            filename = "__k2-danger-ores__/graphics/entity/boiler-N-idle-2.png",
            height = 108,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-boiler-N-idle-2.png",
              height = 221,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                -0.0390625,
                0.1640625
              },
              width = 269
            },
            priority = "extra-high",
            shift = {
              -0.015625,
              0.125
            },
            width = 131
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            height = 82,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/boiler/hr-boiler-N-shadow.png",
              height = 164,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                0.640625,
                0.28125
              },
              width = 274
            },
            priority = "extra-high",
            shift = {
              0.640625,
              0.28125
            },
            width = 137
          }
        }
      },
      south = {
        layers = {
          {
            filename = "__k2-danger-ores__/graphics/entity/boiler-S-idle-2.png",
            height = 95,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-boiler-S-idle-2.png",
              height = 192,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                0.125,
                0.40625
              },
              width = 260
            },
            priority = "extra-high",
            shift = {
              0.09375,
              0.390625
            },
            width = 128
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",
            height = 66,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/boiler/hr-boiler-S-shadow.png",
              height = 131,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                0.9296875,
                0.4921875
              },
              width = 311
            },
            priority = "extra-high",
            shift = {
              0.9375,
              0.5
            },
            width = 156
          }
        }
      },
      west = {
        layers = {
          {
            filename = "__k2-danger-ores__/graphics/entity/boiler-W-idle-2.png",
            height = 132,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-boiler-W-idle-2.png",
              height = 273,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                0.046875,
                0.2421875
              },
              width = 196
            },
            priority = "extra-high",
            shift = {
              0.03125,
              0.15625
            },
            width = 96
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",
            height = 109,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/boiler/hr-boiler-W-shadow.png",
              height = 218,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                0.609375,
                0.203125
              },
              width = 206
            },
            priority = "extra-high",
            shift = {
              0.609375,
              0.203125
            },
            width = 103
          }
        }
      }
    },
    target_temperature = 315,
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
      orientation_to_variation = true,
      pictures = {
        filename = "__base__/graphics/entity/boiler/boiler-reflection.png",
        height = 32,
        priority = "extra-high",
        scale = 5,
        shift = {
          0.15625,
          0.9375
        },
        variation_count = 4,
        width = 28
      },
      rotate = false
    },
    working_sound = {
      audible_distance_modifier = 0.3,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      sound = {
        filename = "__base__/sound/boiler.ogg",
        volume = 0.7
      }
    }
  },
})

local b2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local b2_item = table.deepcopy(data.raw["item"]["boiler"])
b2_item.name = "boiler-2"
b2_item.icons = {{icon = b2_item.icon, tint = b2_tint}}
b2_item.place_result = "boiler-2"

local b2 = table.deepcopy(data.raw["boiler"]["boiler"])
b2.name = "boiler-2"
b2.minable.result = "boiler-2"
b2.target_temperature = b2.target_temperature * 2 - 15
b2.energy_consumption = "3MW"
b2.energy_source.emissions_per_minute = b2.energy_source.emissions_per_minute * 2.5
b2.fast_replaceable_group = "boiler"
b2.icons = {{icon = b2_item.icon, tint = b2_tint}}
b2.structure.north.layers[1].filename = "__k2-danger-ores__/graphics/entity/boiler-N-idle-2.png"
b2.structure.north.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-boiler-N-idle-2.png"
b2.structure.east.layers[1].filename = "__k2-danger-ores__/graphics/entity/boiler-E-idle-2.png"
b2.structure.east.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-boiler-E-idle-2.png"
b2.structure.south.layers[1].filename = "__k2-danger-ores__/graphics/entity/boiler-S-idle-2.png"
b2.structure.south.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-boiler-S-idle-2.png"
b2.structure.west.layers[1].filename = "__k2-danger-ores__/graphics/entity/boiler-W-idle-2.png"
b2.structure.west.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-boiler-W-idle-2.png"

local b2_recipe = {
    type = "recipe",
    name = "boiler-2",
    ingredients = {{"boiler", 3}, {"steel-furnace", 3}},
    result = "boiler-2",
    enabled = false,
    energy_required = 0.5
}

data:extend{b2_item, b2, b2_recipe}

data.raw["boiler"]["boiler"].next_upgrade = "boiler-2"
data.raw["boiler"]["boiler"].fast_replaceable_group = "boiler"

--=================================================================================================

data:extend({
  -- Item
  {
    name = "steam-engine-2",
    type = "item",
    icon = "__base__/graphics/icons/steam-engine.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/steam-engine.png",
        tint = {
          a = 0.8,
          b = 0.81568627450980387,
          g = 0.64313725490196081,
          r = 0.019607843137254902
        }
      }
    },
    order = "b[steam-power]-b[steam-engine]",
    place_result = "steam-engine-2",
    stack_size = 10,
    subgroup = "energy",
  },
  -- Recipe
  {
    name = "steam-engine-2",
    type = "recipe",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
      {
        "steam-engine",
        2
      },
      {
        "engine-unit",
        5
      },
      {
        "steel-plate",
        10
      },
      {
        "pipe",
        25
      }
    },
    result = "steam-engine-2",
  },
  -- Entity
  {
    name = "steam-engine-2",
    type = "generator",
    alert_icon_shift = {
      0.09375,
      -1.0625
    },
    close_sound = {
      {
        filename = "__base__/sound/machine-close.ogg",
        volume = 0.5
      }
    },
    collision_box = {
      {
        -1.25,
        -2.25
      },
      {
        1.25,
        2.25
      }
    },
    corpse = "steam-engine-remnants",
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
    dying_explosion = "steam-engine-explosion",
    effectivity = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-output"
    },
    fast_replaceable_group = "steam-engine",
    flags = {
      "placeable-neutral",
      "player-creation"
    },
    fluid_box = {
      base_area = 1,
      base_level = -1,
      filter = "steam",
      height = 2,
      minimum_temperature = 100,
      pipe_connections = {
        {
          position = {
            0,
            3
          },
          type = "input-output"
        },
        {
          position = {
            0,
            -3
          },
          type = "input-output"
        }
      },
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
      production_type = "input-output"
    },
    fluid_usage_per_tick = 0.16666666666666665,
    horizontal_animation = {
      layers = {
        {
          filename = "__k2-danger-ores__/graphics/entity/steam-engine-H-2.png",
          frame_count = 32,
          height = 128,
          hr_version = {
            filename = "__k2-danger-ores__/graphics/entity/hr-steam-engine-H-2.png",
            frame_count = 32,
            height = 257,
            line_length = 8,
            scale = 0.5,
            shift = {
              0.03125,
              -0.1484375
            },
            width = 352
          },
          line_length = 8,
          shift = {
            0.03125,
            -0.15625
          },
          width = 176
        },
        {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/steam-engine/steam-engine-H-shadow.png",
          frame_count = 32,
          height = 80,
          hr_version = {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-H-shadow.png",
            frame_count = 32,
            height = 160,
            line_length = 8,
            scale = 0.5,
            shift = {
              1.5,
              0.75
            },
            width = 508
          },
          line_length = 8,
          shift = {
            1.5,
            0.75
          },
          width = 254
        }
      }
    },
    icon = "__base__/graphics/icons/steam-engine.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/steam-engine.png",
        tint = {
          a = 0.8,
          b = 0.81568627450980387,
          g = 0.64313725490196081,
          r = 0.019607843137254902
        }
      }
    },
    max_health = 400,
    max_power_output = "1.5MW",
    maximum_temperature = 315,
    min_perceived_performance = 0.25,
    minable = {
      mining_time = 0.3,
      result = "steam-engine-2"
    },
    open_sound = {
      {
        filename = "__base__/sound/machine-open.ogg",
        volume = 0.5
      }
    },
    performance_to_sound_speedup = 0.5,
    resistances = {
      {
        percent = 70,
        type = "fire"
      },
      {
        percent = 30,
        type = "impact"
      }
    },
    scale_fluid_usage = true,
    selection_box = {
      {
        -1.5,
        -2.5
      },
      {
        1.5,
        2.5
      }
    },
    smoke = {
      {
        east_position = {
          -2,
          -2
        },
        frequency = 0.3125,
        name = "light-smoke",
        north_position = {
          0.9,
          0
        },
        slow_down_factor = 1,
        starting_frame_deviation = 60,
        starting_vertical_speed = 0.08
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
    vertical_animation = {
      layers = {
        {
          filename = "__k2-danger-ores__/graphics/entity/steam-engine-V-2.png",
          frame_count = 32,
          height = 195,
          hr_version = {
            filename = "__k2-danger-ores__/graphics/entity/hr-steam-engine-V-2.png",
            frame_count = 32,
            height = 391,
            line_length = 8,
            scale = 0.5,
            shift = {
              0.1484375,
              -0.1953125
            },
            width = 225
          },
          line_length = 8,
          shift = {
            0.15625,
            -0.203125
          },
          width = 112
        },
        {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/steam-engine/steam-engine-V-shadow.png",
          frame_count = 32,
          height = 153,
          hr_version = {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-V-shadow.png",
            frame_count = 32,
            height = 307,
            line_length = 8,
            scale = 0.5,
            shift = {
              1.265625,
              0.2890625
            },
            width = 330
          },
          line_length = 8,
          shift = {
            1.265625,
            0.296875
          },
          width = 165
        }
      }
    },
    water_reflection = {
      orientation_to_variation = true,
      pictures = {
        filename = "__base__/graphics/entity/steam-engine/steam-engine-reflection.png",
        height = 44,
        priority = "extra-high",
        repeat_count = 2,
        scale = 5,
        shift = {
          0,
          1.71875
        },
        variation_count = 2,
        width = 40
      },
      rotate = false
    },
    working_sound = {
      audible_distance_modifier = 0.8,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      match_speed_to_activity = true,
      max_sounds_per_type = 3,
      sound = {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.55
      }
    }
  },
})

local se2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local se2_item = table.deepcopy(data.raw["item"]["steam-engine"])
se2_item.name = "steam-engine-2"
se2_item.icons = {{icon = se2_item.icon, tint = se2_tint}}
se2_item.place_result = "steam-engine-2"

local se2 = table.deepcopy(data.raw["generator"]["steam-engine"])
se2.name = "steam-engine-2"
se2.minable.result = "steam-engine-2"
se2.maximum_temperature = se2.maximum_temperature * 2 - 15
se2.horizontal_animation.layers[1].filename = "__k2-danger-ores__/graphics/entity/steam-engine-H-2.png"
se2.horizontal_animation.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-steam-engine-H-2.png"
se2.vertical_animation.layers[1].filename = "__k2-danger-ores__/graphics/entity/steam-engine-V-2.png"
se2.vertical_animation.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-steam-engine-V-2.png"
se2.icons = {{icon = se2_item.icon, tint = se2_tint}}
se2.scale_fluid_usage = true
se2.max_power_output = "1.5MW" 

local se2_recipe = {
    type = "recipe",
    name = "steam-engine-2",
    ingredients = {
        {"steam-engine", 2},
        {"engine-unit", 5},
        {"steel-plate", 10},
        {"pipe", 25}
    },
    result = "steam-engine-2",
    enabled = false,
    energy_required = 0.5
}

data:extend{se2_item, se2, se2_recipe}

data.raw["generator"]["steam-engine"].next_upgrade = "steam-engine-2"

--=================================================================================================

data:extend({{
    type = "technology",
    name = "steam-engine-2",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/steam-engine.png",
    prerequisites = {"chemical-science-pack"},
    effects = {
        {type = "unlock-recipe", recipe = "steam-engine-2"},
        {type = "unlock-recipe", recipe = "boiler-2"}},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}},
        time = 30
    },
    order = "d-a"
}})
