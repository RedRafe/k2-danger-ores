if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

data:extend({
  -- Item
  {
    name = "nuclear-reactor-2",
    type = "item",
    icon = "__base__/graphics/icons/nuclear-reactor.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/nuclear-reactor.png",
        tint = {
          a = 0.8,
          b = 0.81568627450980387,
          g = 0.64313725490196081,
          r = 0.019607843137254902
        }
      }
    },
    order = "f[nuclear-energy]-a[reactor]",
    place_result = "nuclear-reactor-2",
    stack_size = 1,
    subgroup = "energy",
  },
  -- Recipe
  {
    name = "nuclear-reactor-2",
    type = "recipe",
    enabled = false,
    energy_required = 8,
    ingredients = {
      {
        "nuclear-reactor",
        4
      },
      {
        "low-density-structure",
        100
      },
      {
        "processing-unit",
        100
      },
      {
        "refined-concrete",
        1000
      },
      {
        "heat-pipe",
        100
      }
    },
    result = "nuclear-reactor-2",
  },
  -- Entity
  {
    name = "nuclear-reactor-2",
    type = "reactor",
    close_sound = {
      {
        filename = "__base__/sound/machine-close.ogg",
        volume = 0.5
      }
    },
    collision_box = {
      {
        -2.02,
        -2.02
      },
      {
        2.02,
        2.02
      }
    },
    connection_patches_connected = {
      sheet = {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
        height = 32,
        hr_version = {
          filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches.png",
          height = 64,
          scale = 0.5,
          variation_count = 12,
          width = 64
        },
        variation_count = 12,
        width = 32
      }
    },
    connection_patches_disconnected = {
      sheet = {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
        height = 32,
        hr_version = {
          filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches.png",
          height = 64,
          scale = 0.5,
          variation_count = 12,
          width = 64,
          y = 64
        },
        variation_count = 12,
        width = 32,
        y = 32
      }
    },
    consumption = "500MW",
    corpse = "nuclear-reactor-remnants",
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
    dying_explosion = "nuclear-reactor-explosion",
    energy_source = {
      burnt_inventory_size = 1,
      effectivity = 1,
      fuel_category = "nuclear",
      fuel_inventory_size = 1,
      light_flicker = {
        color = {
          0,
          0,
          0
        },
        maximum_intensity = 0.95,
        minimum_intensity = 0.7
      },
      type = "burner"
    },
    fast_replaceable_group = "nuclear-reactor",
    flags = {
    "placeable-neutral",
    "player-creation"
    },
    heat_buffer = {
      connections = {
        {
          direction = 0,
          position = {
            -2,
            -2
          }
        },
        {
          direction = 0,
          position = {
            0,
            -2
          }
        },
        {
          direction = 0,
          position = {
            2,
            -2
          }
        },
        {
          direction = 2,
          position = {
            2,
            -2
          }
        },
        {
          direction = 2,
          position = {
            2,
            0
          }
        },
        {
          direction = 2,
          position = {
            2,
            2
          }
        },
        {
          direction = 4,
          position = {
            2,
            2
          }
        },
        {
          direction = 4,
          position = {
            0,
            2
          }
        },
        {
          direction = 4,
          position = {
            -2,
            2
          }
        },
        {
          direction = 6,
          position = {
            -2,
            2
          }
        },
        {
          direction = 6,
          position = {
            -2,
            0
          }
        },
        {
          direction = 6,
          position = {
            -2,
            -2
          }
        }
      },
      heat_picture = {
        layers = {
          {
            filename = "__base__/graphics/entity/nuclear-reactor/reactor-heated.png",
            height = 128,
            hr_version = {
              filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-heated.png",
              height = 256,
              scale = 0.5,
              shift = {
                0.09375,
                -0.203125
              },
              tint = {
                0.5,
                0.4,
                0.3,
                0.5
              },
              width = 216
            },
            shift = {
              0.03125,
              -0.21875
            },
            tint = 0,
            width = 108
          },
          {
            draw_as_light = true,
            filename = "__base__/graphics/entity/nuclear-reactor/reactor-heated.png",
            height = 128,
            hr_version = {
              draw_as_light = true,
              filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-heated.png",
              height = 256,
              scale = 0.5,
              shift = {
                0.09375,
                -0.203125
              },
              tint = {
                1,
                1,
                1,
                1
              },
              width = 216
            },
            shift = {
              0.03125,
              -0.21875
            },
            tint = 0,
            width = 108
          }
        }
      },
      max_temperature = 2000,
      max_transfer = "200GW",
      minimum_glow_temperature = 350,
      specific_heat = "100MJ"
    },
    heat_connection_patches_connected = {
      sheet = {
        layers = {
          {
            filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png",
            height = 32,
            hr_version = {
              filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches-heated.png",
              height = 64,
              scale = 0.5,
              tint = 0,
              variation_count = 12,
              width = 64
            },
            tint = 0,
            variation_count = 12,
            width = 32
          },
          {
            draw_as_light = true,
            filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png",
            height = 32,
            hr_version = {
              draw_as_light = true,
              filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches-heated.png",
              height = 64,
              scale = 0.5,
              tint = 0,
              variation_count = 12,
              width = 64
            },
            tint = 0,
            variation_count = 12,
            width = 32
          }
        }
      }
    },
    heat_connection_patches_disconnected = {
      sheet = {
        layers = {
          {
            filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png",
            height = 32,
            hr_version = {
              filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches-heated.png",
              height = 64,
              scale = 0.5,
              tint = 0,
              variation_count = 12,
              width = 64,
              y = 64
            },
            tint = 0,
            variation_count = 12,
            width = 32,
            y = 32
          },
          {
            draw_as_light = true,
            filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png",
            height = 32,
            hr_version = {
              draw_as_light = true,
              filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches-heated.png",
              height = 64,
              scale = 0.5,
              tint = 0,
              variation_count = 12,
              width = 64,
              y = 64
            },
            tint = 0,
            variation_count = 12,
            width = 32,
            y = 32
          }
        }
      }
    },
    heat_lower_layer_picture = {
      layers = {
        {
          filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes-heated.png",
          height = 156,
          hr_version = {
            filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-pipes-heated.png",
            height = 316,
            scale = 0.5,
            shift = {
              -0.015625,
              -0.140625
            },
            tint = 0,
            width = 320
          },
          shift = {
            -0.09375,
            -0.125
          },
          tint = 0,
          width = 156
        },
        {
          draw_as_light = true,
          filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes-heated.png",
          height = 156,
          hr_version = {
            draw_as_light = true,
            filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-pipes-heated.png",
            height = 316,
            scale = 0.5,
            shift = {
              -0.015625,
              -0.140625
            },
            tint = 0,
            width = 320
          },
          shift = {
            -0.09375,
            -0.125
          },
          tint = 0,
          width = 156
        }
      }
    },
    icon = "__base__/graphics/icons/nuclear-reactor.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/nuclear-reactor.png",
        tint = {
          a = 0.8,
          b = 0.81568627450980387,
          g = 0.64313725490196081,
          r = 0.019607843137254902
        }
      }
    },
    lower_layer_picture = {
      filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes.png",
      height = 156,
      hr_version = {
        filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-pipes.png",
        height = 316,
        scale = 0.5,
        shift = {
          -0.03125,
          -0.15625
        },
        width = 320
      },
      shift = {
        -0.0625,
        -0.125
      },
      width = 156
    },
    max_health = 1000,
    meltdown_action = {
      action_delivery = {
        target_effects = {
          {
            offset_deviation = {
              {
                -1,
                -1
              },
              {
                1,
                1
              }
            },
            repeat_count = 200,
            smoke_name = "nuclear-smoke",
            speed_from_center = 0.5,
            starting_frame = 3,
            starting_frame_deviation = 5,
            starting_frame_speed = 0,
            starting_frame_speed_deviation = 5,
            type = "create-trivial-smoke"
          },
          {
            entity_name = "big-explosion",
            type = "create-entity"
          },
          {
            damage = {
              amount = 500,
              type = "explosion"
            },
            type = "damage"
          },
          {
            check_buildability = true,
            entity_name = "small-scorchmark",
            type = "create-entity"
          },
          {
            action = {
              action_delivery = {
                projectile = "atomic-bomb-wave",
                starting_speed = 0.35,
                type = "projectile"
              },
              radius = 128,
              repeat_count = 3000,
              target_entities = false,
              trigger_from_target = true,
              type = "area"
            },
            type = "nested-result"
          }
        },
        type = "instant"
      },
    type = "direct"
    },
    minable = {
      hardness = 1,
      mining_time = 1,
      result = "nuclear-reactor-2"
    },
    neighbour_bonus = 0.25,
    open_sound = {
      {
        filename = "__base__/sound/machine-open.ogg",
        volume = 0.5
      }
    },
    picture = {
      layers = {
        {
          filename = "__k2-danger-ores__/graphics/entity/reactor-2.png",
          height = 158,
          hr_version = {
            filename = "__k2-danger-ores__/graphics/entity/hr-reactor-2.png",
            height = 318,
            scale = 0.5,
            shift = {
              -0.15625,
              -0.21875
            },
            width = 302
          },
          shift = {
            -0.1875,
            -0.1875
          },
          width = 154
        },
        {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/nuclear-reactor/reactor-shadow.png",
          height = 162,
          hr_version = {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-shadow.png",
            height = 323,
            scale = 0.5,
            shift = {
              1.625,
              0
            },
            width = 525
          },
          shift = {
            1.625,
            0
          },
          width = 263
        }
      }
    },
    selection_box = {
      {
        -2.5,
        -2.5
      },
      {
        2.5,
        2.5
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
    working_light_picture = {
      blend_mode = "additive",
      draw_as_glow = true,
      filename = "__base__/graphics/entity/nuclear-reactor/reactor-lights-color.png",
      height = 160,
      hr_version = {
        blend_mode = "additive",
        draw_as_glow = true,
        filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-lights-color.png",
        height = 320,
        scale = 0.5,
        shift = {
          -0.03125,
          -0.1875
        },
        width = 320
      },
      shift = {
        -0.03125,
        -0.1875
      },
      width = 160
    },
    working_sound = {
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      max_sounds_per_type = 3,
      sound = {
        {
          filename = "__base__/sound/nuclear-reactor-1.ogg",
          volume = 0.55
        },
        {
          filename = "__base__/sound/nuclear-reactor-2.ogg",
          volume = 0.55
        }
      }
    }
  },
})

local nr2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local nr2_item = table.deepcopy(data.raw["item"]["nuclear-reactor"])
nr2_item.name = "nuclear-reactor-2"
nr2_item.icons = {{icon = nr2_item.icon, tint = nr2_tint}}
nr2_item.place_result = "nuclear-reactor-2"

local nr2 = table.deepcopy(data.raw["reactor"]["nuclear-reactor"])
nr2.name = "nuclear-reactor-2"
nr2.minable.result = "nuclear-reactor-2"
nr2.fast_replaceable_group = "nuclear-reactor"
nr2.picture.layers[1].filename = "__k2-danger-ores__/graphics/entity/reactor-2.png"
nr2.picture.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-reactor-2.png"
nr2.consumption = KDO.string.msv(nr2.consumption, 2) --"80MW"
nr2.heat_buffer.max_temperature = nr2.heat_buffer.max_temperature * 2
nr2.heat_buffer.max_transfer = KDO.string.msv(nr2.heat_buffer.max_transfer, 2)
nr2.heat_buffer.specific_heat = KDO.string.msv(nr2.heat_buffer.specific_heat, 2) --"20MJ"
nr2.heat_buffer.max_transfer = KDO.string.msv(nr2.heat_buffer.max_transfer, 2) --"20GW"
nr2.icons = {{icon = nr2_item.icon, tint = nr2_tint}}

local nr2_recipe = {
    type = "recipe",
    name = "nuclear-reactor-2",
    ingredients = {
        {"nuclear-reactor", 4},
        {"low-density-structure", 100},
        {"processing-unit", 100},
        {"refined-concrete", 1000},
        {"heat-pipe", 100}
    },
    result = "nuclear-reactor-2",
    enabled = false,
    energy_required = 8
}

data.raw["reactor"]["nuclear-reactor"].next_upgrade = "nuclear-reactor-2"
data.raw["reactor"]["nuclear-reactor"].fast_replaceable_group = "nuclear-reactor"

data:extend{nr2_item, nr2, nr2_recipe}

--=================================================================================================

data:extend({
  -- Item
  {
    name = "heat-exchanger-2",
    type = "item",
    icon = "__base__/graphics/icons/heat-boiler.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/heat-boiler.png",
        tint = {
          a = 0.8,
          b = 0.81568627450980387,
          g = 0.64313725490196081,
          r = 0.019607843137254902
        }
      }
    },
    order = "f[nuclear-energy]-c[heat-exchanger]",
    place_result = "heat-exchanger-2",
    stack_size = 50,
    subgroup = "energy",
  },
  -- Recipe
  {
    name = "heat-exchanger-2",
    type = "recipe",
    enabled = false,
    energy_required = 3,
    ingredients = {
      {
        "heat-exchanger",
        2
      },
      {
        "low-density-structure",
        10
      },
      {
        "heat-pipe",
        10
      }
    },
    result = "heat-exchanger-2",
  },
  -- Entity
  {
    name = "heat-exchanger-2",
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
    corpse = "heat-exchanger-remnants",
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
    dying_explosion = "heat-exchanger-explosion",
    energy_consumption = "100MW",
    energy_source = {
      connections = {
        {
          direction = 4,
          position = {
            0,
            0.5
          }
        }
      },
      heat_picture = {
        east = {
          layers = {
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-E-heated.png",
              height = 40,
              hr_version = {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-E-heated.png",
                height = 80,
                priority = "extra-high",
                scale = 0.5,
                shift = {
                  -0.65625,
                  -0.40625
                },
                tint = {
                  0.5,
                  0.4,
                  0.3,
                  0.5
                },
                width = 80
              },
              priority = "extra-high",
              shift = {
                -0.65625,
                -0.40625
              },
              tint = 0,
              width = 40
            },
            {
              draw_as_light = true,
              filename = "__base__/graphics/entity/heat-exchanger/heatex-E-heated.png",
              height = 40,
              hr_version = {
                draw_as_light = true,
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-E-heated.png",
                height = 80,
                priority = "extra-high",
                scale = 0.5,
                shift = {
                  -0.65625,
                  -0.40625
                },
                tint = {
                  1,
                  1,
                  1,
                  1
                },
                width = 80
              },
              priority = "extra-high",
              shift = {
                -0.65625,
                -0.40625
              },
              tint = 0,
              width = 40
            }
          }
        },
        north = {
          layers = {
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-N-heated.png",
              height = 48,
              hr_version = {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-N-heated.png",
                height = 96,
                priority = "extra-high",
                scale = 0.5,
                shift = {
                  -0.015625,
                  0.265625
                },
                tint = 0,
                width = 44
              },
              priority = "extra-high",
              shift = {
                -0.03125,
                0.25
              },
              tint = 0,
              width = 24
            },
            {
              draw_as_light = true,
              filename = "__base__/graphics/entity/heat-exchanger/heatex-N-heated.png",
              height = 48,
              hr_version = {
                draw_as_light = true,
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-N-heated.png",
                height = 96,
                priority = "extra-high",
                scale = 0.5,
                shift = {
                  -0.015625,
                  0.265625
                },
                tint = 0,
                width = 44
              },
              priority = "extra-high",
              shift = {
                -0.03125,
                0.25
              },
              tint = 0,
              width = 24
            }
          }
        },
        south = {
          layers = {
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-S-heated.png",
              height = 20,
              hr_version = {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-S-heated.png",
                height = 40,
                priority = "extra-high",
                scale = 0.5,
                shift = {
                  -0.03125,
                  -0.9375
                },
                tint = 0,
                width = 28
              },
              priority = "extra-high",
              shift = {
                -0.03125,
                -0.9375
              },
              tint = 0,
              width = 16
            },
            {
              draw_as_light = true,
              filename = "__base__/graphics/entity/heat-exchanger/heatex-S-heated.png",
              height = 20,
              hr_version = {
                draw_as_light = true,
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-S-heated.png",
                height = 40,
                priority = "extra-high",
                scale = 0.5,
                shift = {
                  -0.03125,
                  -0.9375
                },
                tint = 0,
                width = 28
              },
              priority = "extra-high",
              shift = {
                -0.03125,
                -0.9375
              },
              tint = 0,
              width = 16
            }
          }
        },
        west = {
          layers = {
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-W-heated.png",
              height = 40,
              hr_version = {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-W-heated.png",
                height = 76,
                priority = "extra-high",
                scale = 0.5,
                shift = {
                  0.71875,
                  -0.40625
                },
                tint = 0,
                width = 64
              },
              priority = "extra-high",
              shift = {
                0.71875,
                -0.40625
              },
              tint = 0,
              width = 32
            },
            {
              draw_as_light = true,
              filename = "__base__/graphics/entity/heat-exchanger/heatex-W-heated.png",
              height = 40,
              hr_version = {
                draw_as_light = true,
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-W-heated.png",
                height = 76,
                priority = "extra-high",
                scale = 0.5,
                shift = {
                  0.71875,
                  -0.40625
                },
                tint = 0,
                width = 64
              },
              priority = "extra-high",
              shift = {
                0.71875,
                -0.40625
              },
              tint = 0,
              width = 32
            }
          }
        }
      },
      heat_pipe_covers = {
        east = {
          layers = {
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
              frame_count = 1,
              height = 32,
              hr_version = {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings-heated.png",
                frame_count = 1,
                height = 64,
                priority = "high",
                scale = 0.5,
                tint = 0,
                width = 64,
                x = 64,
                y = 0
              },
              priority = "high",
              scale = 1,
              tint = 0,
              width = 32,
              x = 32,
              y = 0
            },
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
              frame_count = 1,
              height = 32,
              hr_version = {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings-heated.png",
                frame_count = 1,
                height = 64,
                priority = "high",
                scale = 0.5,
                tint = 0,
                width = 64,
                x = 64,
                y = 0
              },
              priority = "high",
              scale = 1,
              tint = 0,
              width = 32,
              x = 32,
              y = 0
            }
          }
        },
        north = {
          layers = {
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
              frame_count = 1,
              height = 32,
              hr_version = {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings-heated.png",
                frame_count = 1,
                height = 64,
                priority = "high",
                scale = 0.5,
                tint = 0,
                width = 64,
                x = 0,
                y = 0
              },
              priority = "high",
              scale = 1,
              tint = 0,
              width = 32,
              x = 0,
              y = 0
            },
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
              frame_count = 1,
              height = 32,
              hr_version = {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings-heated.png",
                frame_count = 1,
                height = 64,
                priority = "high",
                scale = 0.5,
                tint = 0,
                width = 64,
                x = 0,
                y = 0
              },
              priority = "high",
              scale = 1,
              tint = 0,
              width = 32,
              x = 0,
              y = 0
            }
          }
        },
        south = {
          layers = {
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
              frame_count = 1,
              height = 32,
              hr_version = {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings-heated.png",
                frame_count = 1,
                height = 64,
                priority = "high",
                scale = 0.5,
                tint = 0,
                width = 64,
                x = 128,
                y = 0
              },
              priority = "high",
              scale = 1,
              tint = 0,
              width = 32,
              x = 64,
              y = 0
            },
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
              frame_count = 1,
              height = 32,
              hr_version = {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings-heated.png",
                frame_count = 1,
                height = 64,
                priority = "high",
                scale = 0.5,
                tint = 0,
                width = 64,
                x = 128,
                y = 0
              },
              priority = "high",
              scale = 1,
              tint = 0,
              width = 32,
              x = 64,
              y = 0
            }
          }
        },
        west = {
          layers = {
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
              frame_count = 1,
              height = 32,
              hr_version = {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings-heated.png",
                frame_count = 1,
                height = 64,
                priority = "high",
                scale = 0.5,
                tint = 0,
                width = 64,
                x = 192,
                y = 0
              },
              priority = "high",
              scale = 1,
              tint = 0,
              width = 32,
              x = 96,
              y = 0
            },
            {
              filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
              frame_count = 1,
              height = 32,
              hr_version = {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings-heated.png",
                frame_count = 1,
                height = 64,
                priority = "high",
                scale = 0.5,
                tint = 0,
                width = 64,
                x = 192,
                y = 0
              },
              priority = "high",
              scale = 1,
              tint = 0,
              width = 32,
              x = 96,
              y = 0
            }
          }
        }
      },
      max_temperature = 1985,
      max_transfer = "20GW",
      min_working_temperature = 815,
      minimum_glow_temperature = 350,
      pipe_covers = {
        east = {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-endings.png",
          frame_count = 1,
          height = 32,
          hr_version = {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings.png",
            frame_count = 1,
            height = 64,
            priority = "high",
            scale = 0.5,
            width = 64,
            x = 64,
            y = 0
          },
          priority = "high",
          scale = 1,
          width = 32,
          x = 32,
          y = 0
        },
        north = {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-endings.png",
          frame_count = 1,
          height = 32,
          hr_version = {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings.png",
            frame_count = 1,
            height = 64,
            priority = "high",
            scale = 0.5,
            width = 64,
            x = 0,
            y = 0
          },
          priority = "high",
          scale = 1,
          width = 32,
          x = 0,
          y = 0
        },
        south = {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-endings.png",
          frame_count = 1,
          height = 32,
          hr_version = {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings.png",
            frame_count = 1,
            height = 64,
            priority = "high",
            scale = 0.5,
            width = 64,
            x = 128,
            y = 0
          },
          priority = "high",
          scale = 1,
          width = 32,
          x = 64,
          y = 0
        },
        west = {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-endings.png",
          frame_count = 1,
          height = 32,
          hr_version = {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings.png",
            frame_count = 1,
            height = 64,
            priority = "high",
            scale = 0.5,
            width = 64,
            x = 192,
            y = 0
          },
          priority = "high",
          scale = 1,
          width = 32,
          x = 96,
          y = 0
        }
      },
      specific_heat = "10MJ",
      type = "heat"
    },
    fast_replaceable_group = "heat-exchanger",
    fire = {},
    fire_glow = {},
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
    icon = "__base__/graphics/icons/heat-boiler.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/heat-boiler.png",
        tint = {
          a = 0.8,
          b = 0.81568627450980387,
          g = 0.64313725490196081,
          r = 0.019607843137254902
        }
      }
    },
    max_health = 250,
    minable = {
      mining_time = 0.1,
      result = "heat-exchanger-2"
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
            filename = "__k2-danger-ores__/graphics/entity/heatex-E-idle-2.png",
            height = 147,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-heatex-E-idle-2.png",
              height = 301,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                -0.0546875,
                0.0390625
              },
              width = 211
            },
            priority = "extra-high",
            shift = {
              -0.0625,
              -0.015625
            },
            width = 102
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
            filename = "__k2-danger-ores__/graphics/entity/heatex-N-idle-2.png",
            height = 108,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-heatex-N-idle-2.png",
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
            filename = "__k2-danger-ores__/graphics/entity/heatex-S-idle-2.png",
            height = 100,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-heatex-S-idle-2.png",
              height = 201,
              priority = "extra-high",
              scale = 0.5,
              shift = {
                0.125,
                0.3359375
              },
              width = 260
            },
            priority = "extra-high",
            shift = {
              0.09375,
              0.3125
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
            filename = "__k2-danger-ores__/graphics/entity/heatex-W-idle-2.png",
            height = 132,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-heatex-W-idle-2.png",
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
    target_temperature = 815,
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
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      sound = {
        filename = "__base__/sound/heat-exchanger.ogg",
        volume = 0.65
      }
    }
  },
})

local he2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local he2_item = table.deepcopy(data.raw["item"]["heat-exchanger"])
he2_item.name = "heat-exchanger-2"
he2_item.icons = {{icon = he2_item.icon, tint = he2_tint}}
he2_item.place_result = "heat-exchanger-2"

local he2 = table.deepcopy(data.raw["boiler"]["heat-exchanger"])
he2.name = "heat-exchanger-2"
he2.minable.result = "heat-exchanger-2"
he2.fast_replaceable_group = "heat-exchanger"
he2.target_temperature = he2.target_temperature * 2 - 15 --1000
he2.energy_consumption = KDO.string.msv(he2.energy_consumption, 2) --"20MW"
he2.energy_source.max_temperature = he2.energy_source.max_temperature * 2 - 15
he2.energy_source.specific_heat = KDO.string.msv(he2.energy_source.specific_heat, 2) --"2MJ"
he2.energy_source.max_transfer = KDO.string.msv(he2.energy_source.max_transfer, 2) --"4GW"
he2.energy_source.min_working_temperature = 815
he2.icons = {{icon = he2_item.icon, tint = he2_tint}}
he2.structure.north.layers[1].filename = "__k2-danger-ores__/graphics/entity/heatex-N-idle-2.png"
he2.structure.north.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-heatex-N-idle-2.png"
he2.structure.east.layers[1].filename = "__k2-danger-ores__/graphics/entity/heatex-E-idle-2.png"
he2.structure.east.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-heatex-E-idle-2.png"
he2.structure.south.layers[1].filename = "__k2-danger-ores__/graphics/entity/heatex-S-idle-2.png"
he2.structure.south.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-heatex-S-idle-2.png"
he2.structure.west.layers[1].filename = "__k2-danger-ores__/graphics/entity/heatex-W-idle-2.png"
he2.structure.west.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-heatex-W-idle-2.png"

local he2_recipe = {
    type = "recipe",
    name = "heat-exchanger-2",
    ingredients = {
        {"heat-exchanger", 2},
        {"low-density-structure", 10},
        {"heat-pipe", 10}
    },
    result = "heat-exchanger-2",
    enabled = false,
    energy_required = 3
}

data.raw["boiler"]["heat-exchanger"].next_upgrade = "heat-exchanger-2"
data.raw["boiler"]["heat-exchanger"].fast_replaceable_group = "heat-exchanger"

data:extend{he2_item, he2, he2_recipe}

--=================================================================================================

data:extend({
  -- Item
  {
    name = "steam-turbine-2",
    type = "item",
    icon = "__base__/graphics/icons/steam-turbine.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/steam-turbine.png",
        tint = {
          a = 0.8,
          b = 0.81568627450980387,
          g = 0.64313725490196081,
          r = 0.019607843137254902
        }
      }
    },
    order = "f[nuclear-energy]-d[steam-turbine]",
    place_result = "steam-turbine-2",
    stack_size = 10,
    subgroup = "energy",
  },
  -- Recipe
  {
    type = "recipe",
    name = "steam-turbine-2",
    enabled = false,
    energy_required = 3,
    ingredients = {
      {
        "steam-turbine",
        2
      },
      {
        "low-density-structure",
        25
      },
      {
        "processing-unit",
        25
      },
      {
        "heat-pipe",
        15
      }
    },
    result = "steam-turbine-2",
  },
  -- Entity
  {
    name = "steam-turbine-2",
    type = "generator",
    alert_icon_shift = {
      0,
      -0.375
    },
    burns_fluid = false,
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
    corpse = "steam-turbine-remnants",
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
    dying_explosion = "steam-turbine-explosion",
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
    fluid_usage_per_tick = 0.83333333333333339,
    horizontal_animation = {
      layers = {
        {
          filename = "__k2-danger-ores__/graphics/entity/steam-turbine-H-2.png",
          frame_count = 8,
          height = 123,
          hr_version = {
            filename = "__k2-danger-ores__/graphics/entity/hr-steam-turbine-H-2.png",
            frame_count = 8,
            height = 245,
            line_length = 4,
            run_mode = "backward",
            scale = 0.5,
            shift = {
              0,
              -0.0859375
            },
            width = 320
          },
          line_length = 4,
          run_mode = "backward",
          shift = {
            0,
            -0.078125
          },
          width = 160
        },
        {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H-shadow.png",
          frame_count = 1,
          height = 74,
          hr_version = {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H-shadow.png",
            frame_count = 1,
            height = 150,
            line_length = 1,
            repeat_count = 8,
            run_mode = "backward",
            scale = 0.5,
            shift = {
              0.890625,
              0.5625
            },
            width = 435
          },
          line_length = 1,
          repeat_count = 8,
          run_mode = "backward",
          shift = {
            0.8984375,
            0.5625
          },
          width = 217
        }
      }
    },
    icon = "__base__/graphics/icons/steam-turbine.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/steam-turbine.png",
        tint = {
          a = 0.8,
          b = 0.81568627450980387,
          g = 0.64313725490196081,
          r = 0.019607843137254902
        }
      }
    },
    max_health = 300,
    max_power_output = "20MW",
    maximum_temperature = 815,
    min_perceived_performance = 0.25,
    minable = {
      mining_time = 0.3,
      result = "steam-turbine-2"
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
          0.75,
          -0.75
        },
        frequency = 0.3125,
        name = "turbine-smoke",
        north_position = {
          0,
          -1
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
          filename = "__k2-danger-ores__/graphics/entity/steam-turbine-V-2.png",
          frame_count = 8,
          height = 173,
          hr_version = {
            filename = "__k2-danger-ores__/graphics/entity/hr-steam-turbine-V-2.png",
            frame_count = 8,
            height = 347,
            line_length = 4,
            run_mode = "backward",
            scale = 0.5,
            shift = {
              0.1484375,
              0.2109375
            },
            width = 217
          },
          line_length = 4,
          run_mode = "backward",
          shift = {
            0.15625,
            0.203125
          },
          width = 108
        },
        {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V-shadow.png",
          frame_count = 1,
          height = 131,
          hr_version = {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V-shadow.png",
            frame_count = 1,
            height = 260,
            line_length = 1,
            repeat_count = 8,
            run_mode = "backward",
            scale = 0.5,
            shift = {
              1.234375,
              0.765625
            },
            width = 302
          },
          line_length = 1,
          repeat_count = 8,
          run_mode = "backward",
          shift = {
            1.234375,
            0.765625
          },
          width = 151
        }
      }
    },
    water_reflection = {
      orientation_to_variation = true,
      pictures = {
        filename = "__base__/graphics/entity/steam-turbine/steam-turbine-reflection.png",
        height = 36,
        priority = "extra-high",
        repeat_count = 2,
        scale = 5,
        shift = {
          0,
          1.5625
        },
        variation_count = 2,
        width = 40
      },
      rotate = false
    },
    working_sound = {
      audible_distance_modifier = 0.7,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      match_speed_to_activity = true,
      max_sounds_per_type = 3,
      sound = {
        filename = "__base__/sound/steam-turbine.ogg",
        volume = 0.67000000000000002
      }
    }
  },
})

local st2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local st2_item = table.deepcopy(data.raw["item"]["steam-turbine"])
st2_item.name = "steam-turbine-2"
st2_item.icons = {{icon = st2_item.icon, tint = st2_tint}}
st2_item.place_result = "steam-turbine-2"

local st2 = table.deepcopy(data.raw["generator"]["steam-turbine"])
st2.name = "steam-turbine-2"
st2.minable.result = "steam-turbine-2"
st2.maximum_temperature = st2.maximum_temperature * 2 - 15
st2.scale_fluid_usage = true
st2.max_power_output = "20MW"
st2.icons = {{icon = st2_item.icon, tint = st2_tint}}
st2.horizontal_animation.layers[1].filename = "__k2-danger-ores__/graphics/entity/steam-turbine-H-2.png"
st2.horizontal_animation.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-steam-turbine-H-2.png"
st2.vertical_animation.layers[1].filename = "__k2-danger-ores__/graphics/entity/steam-turbine-V-2.png"
st2.vertical_animation.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-steam-turbine-V-2.png"

local st2_recipe = {
    type = "recipe",
    name = "steam-turbine-2",
    ingredients = {
        {"steam-turbine", 2},
        {"low-density-structure", 25},
        {"processing-unit", 25},
        {"heat-pipe", 15}
    },
    result = "steam-turbine-2",
    enabled = false,
    energy_required = 3
}

data.raw["generator"]["steam-turbine"].next_upgrade = "steam-turbine-2"

data:extend{st2_item, st2, st2_recipe}

--=================================================================================================

data.raw["heat-pipe"]["heat-pipe"].heat_buffer.max_temperature = data.raw["heat-pipe"]["heat-pipe"].heat_buffer.max_temperature * 2

data:extend({{
    type = "technology",
    name = "nuclear-power-2",
    icon_size = 256,
    icon_mipmaps = 4,
    icon = "__base__/graphics/technology/nuclear-power.png",
    prerequisites = {"nuclear-power", "production-science-pack"},
    effects = {
        {type = "unlock-recipe", recipe = "steam-turbine-2"},
        {type = "unlock-recipe", recipe = "nuclear-reactor-2"},
        {type = "unlock-recipe", recipe = "heat-exchanger-2"}
    },
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
        },
        time = 30
    },
    order = "d-a"
}})
