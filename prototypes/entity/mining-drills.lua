if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

-- Mk.1 > T2 > Mk.2 > T3 > Mk.3 

data.raw["mining-drill"]["electric-mining-drill"].next_upgrade = "electric-mining-drill-2"
data.raw["mining-drill"]["electric-mining-drill"].fast_replaceable_group = "electric-mining-drill"

--=================================================================================================

data:extend({
  -- Item
  {
    name = "electric-mining-drill-2",
    type = "item",
    icon = "__Krastorio2Assets__/icons/entities/electric-mining-drill.png",
    icon_size = 64,
    icons = {
      {
        icon = "__Krastorio2Assets__/icons/entities/electric-mining-drill.png",
        tint = {
          a = 0.3,
          b = 0.81568627450980387,
          g = 0.64313725490196081,
          r = 0.019607843137254902
        }
      }
    },
    order = "a[items]-b[electric-mining-drill]",
    place_result = "electric-mining-drill-2",
    stack_size = 50,
    subgroup = "extraction-machine",
  },
  -- Recipe
  {
    name = "electric-mining-drill-2",
    type = "recipe",
    enabled = false,
    energy_required = 2,
    ingredients = {
      {
        "electric-mining-drill",
        2
      },
      {
        "steel-plate",
        5
      },
      {
        "advanced-circuit",
        2
      }
    },
    result = "electric-mining-drill-2",
  },
  -- Entity
  {
    name = "electric-mining-drill-2",
    type = "mining-drill",
    circuit_connector_sprites = {
      {
        blue_led_light_offset = {
          -1.140625,
          -1.421875
        },
        connector_main = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
          height = 50,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.375,
            -1.25
          },
          width = 52,
          x = 208,
          y = 0
        },
        led_blue = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
          height = 60,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.375,
            -1.28125
          },
          width = 60,
          x = 240,
          y = 0
        },
        led_blue_off = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04f-blue-LED-off-sequence.png",
          height = 44,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.375,
            -1.28125
          },
          width = 46,
          x = 184,
          y = 0
        },
        led_green = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04h-green-LED-sequence.png",
          height = 46,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.375,
            -1.28125
          },
          width = 48,
          x = 192,
          y = 0
        },
        led_light = {
          intensity = 0,
          size = 0.9
        },
        led_red = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04i-red-LED-sequence.png",
          height = 46,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.375,
            -1.28125
          },
          width = 48,
          x = 192,
          y = 0
        },
        red_green_led_light_offset = {
          -1.296875,
          -1.421875
        },
        wire_pins = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
          height = 58,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.375,
            -1.28125
          },
          width = 62,
          x = 248,
          y = 0
        },
        wire_pins_shadow = {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04d-wire-shadow-sequence.png",
          height = 54,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.21875,
            -1.15625
          },
          width = 70,
          x = 280,
          y = 0
        }
      },
      {
        blue_led_light_offset = {
          1.09375,
          0.96875
        },
        connector_main = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
          height = 50,
          priority = "low",
          scale = 0.5,
          shift = {
            1.0625,
            0.96875
          },
          width = 52,
          x = 104,
          y = 0
        },
        led_blue = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
          height = 60,
          priority = "low",
          scale = 0.5,
          shift = {
            1.0625,
            0.9375
          },
          width = 60,
          x = 120,
          y = 0
        },
        led_blue_off = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04f-blue-LED-off-sequence.png",
          height = 44,
          priority = "low",
          scale = 0.5,
          shift = {
            1.0625,
            0.9375
          },
          width = 46,
          x = 92,
          y = 0
        },
        led_green = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04h-green-LED-sequence.png",
          height = 46,
          priority = "low",
          scale = 0.5,
          shift = {
            1.0625,
            0.9375
          },
          width = 48,
          x = 96,
          y = 0
        },
        led_light = {
          intensity = 0,
          size = 0.9
        },
        led_red = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04i-red-LED-sequence.png",
          height = 46,
          priority = "low",
          scale = 0.5,
          shift = {
            1.0625,
            0.9375
          },
          width = 48,
          x = 96,
          y = 0
        },
        red_green_led_light_offset = {
          1.09375,
          0.859375
        },
        wire_pins = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
          height = 58,
          priority = "low",
          scale = 0.5,
          shift = {
            1.0625,
            0.9375
          },
          width = 62,
          x = 124,
          y = 0
        },
        wire_pins_shadow = {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04d-wire-shadow-sequence.png",
          height = 54,
          priority = "low",
          scale = 0.5,
          shift = {
            1.21875,
            1.0625
          },
          width = 70,
          x = 140,
          y = 0
        }
      },
      {
        blue_led_light_offset = {
          -1.3125,
          0.640625
        },
        connector_main = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
          height = 50,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.09375,
            0.78125
          },
          width = 52,
          x = 0,
          y = 0
        },
        led_blue = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
          height = 60,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.09375,
            0.75
          },
          width = 60,
          x = 0,
          y = 0
        },
        led_blue_off = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04f-blue-LED-off-sequence.png",
          height = 44,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.09375,
            0.75
          },
          width = 46,
          x = 0,
          y = 0
        },
        led_green = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04h-green-LED-sequence.png",
          height = 46,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.09375,
            0.75
          },
          width = 48,
          x = 0,
          y = 0
        },
        led_light = {
          intensity = 0,
          size = 0.9
        },
        led_red = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04i-red-LED-sequence.png",
          height = 46,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.09375,
            0.75
          },
          width = 48,
          x = 0,
          y = 0
        },
        red_green_led_light_offset = {
          -1.15625,
          0.640625
        },
        wire_pins = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
          height = 58,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.09375,
            0.75
          },
          width = 62,
          x = 0,
          y = 0
        },
        wire_pins_shadow = {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04d-wire-shadow-sequence.png",
          height = 54,
          priority = "low",
          scale = 0.5,
          shift = {
            -0.9375,
            0.875
          },
          width = 70,
          x = 0,
          y = 0
        }
      },
      {
        blue_led_light_offset = {
          -1.078125,
          0.859375
        },
        connector_main = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
          height = 50,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.0625,
            1.1875
          },
          width = 52,
          x = 312,
          y = 0
        },
        led_blue = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
          height = 60,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.0625,
            1.15625
          },
          width = 60,
          x = 360,
          y = 0
        },
        led_blue_off = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04f-blue-LED-off-sequence.png",
          height = 44,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.0625,
            1.15625
          },
          width = 46,
          x = 276,
          y = 0
        },
        led_green = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04h-green-LED-sequence.png",
          height = 46,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.0625,
            1.15625
          },
          width = 48,
          x = 288,
          y = 0
        },
        led_light = {
          intensity = 0,
          size = 0.9
        },
        led_red = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04i-red-LED-sequence.png",
          height = 46,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.0625,
            1.15625
          },
          width = 48,
          x = 288,
          y = 0
        },
        red_green_led_light_offset = {
          -1.078125,
          0.984375
        },
        wire_pins = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
          height = 58,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.0625,
            1.15625
          },
          width = 62,
          x = 372,
          y = 0
        },
        wire_pins_shadow = {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04d-wire-shadow-sequence.png",
          height = 54,
          priority = "low",
          scale = 0.5,
          shift = {
            -0.90625,
            1.28125
          },
          width = 70,
          x = 420,
          y = 0
        }
      }
    },
    circuit_wire_connection_points = {
      {
        shadow = {
          green = {
            -0.59375,
            -1.328125
          },
          red = {
            -0.84375,
            -1.34375
          }
        },
        wire = {
          green = {
            -1.078125,
            -1.625
          },
          red = {
            -1.34375,
            -1.625
          }
        }
      },
      {
        shadow = {
          green = {
            1.625,
            1.296875
          },
          red = {
            1.546875,
            1.09375
          }
        },
        wire = {
          green = {
            1.40625,
            1.015625
          },
          red = {
            1.34375,
            0.828125
          }
        }
      },
      {
        shadow = {
          green = {
            -1.21875,
            1.234375
          },
          red = {
            -1,
            1.21875
          }
        },
        wire = {
          green = {
            -1.34375,
            0.953125
          },
          red = {
            -1.109375,
            0.953125
          }
        }
      },
      {
        shadow = {
          green = {
            -1.375,
            1.3125
          },
          red = {
            -1.46875,
            1.5
          }
        },
        wire = {
          green = {
            -1.328125,
            0.828125
          },
          red = {
            -1.40625,
            1.03125
          }
        }
      }
    },
    circuit_wire_max_distance = 9,
    close_sound = {
      {
        filename = "__base__/sound/machine-close.ogg",
        volume = 0.5
      }
    },
    collision_box = {
      {
        -1.25,
        -1.25
      },
      {
        1.25,
        1.25
      }
    },
    corpse = "electric-mining-drill-remnants",
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
    dying_explosion = "electric-mining-drill-explosion",
    energy_source = {
      emissions_per_minute = 22.5,
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "250kW",
    fast_replaceable_group = "electric-mining-drill",
    flags = {
      "placeable-neutral",
      "player-creation"
    },
    graphics_set = {
      animation = {
        east = {
          layers = {
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E.png",
              frame_count = 1,
              height = 94,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E.png",
                frame_count = 1,
                height = 188,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0,
                  -0.125
                },
                tint = {
                  a = 0.3,
                  b = 0.81568627450980387,
                  g = 0.64313725490196081,
                  r = 0.019607843137254902
                },
                width = 192
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0,
                -0.125
              },
              tint = 0,
              width = 96
            },
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-output.png",
              frame_count = 5,
              height = 38,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-output.png",
                frame_count = 5,
                height = 74,
                line_length = 5,
                priority = "high",
                scale = 0.5,
                shift = {
                  0.9375,
                  -0.25
                },
                width = 50
              },
              line_length = 5,
              priority = "high",
              shift = {
                0.9375,
                -0.25
              },
              width = 26
            },
            {
              animation_speed = 0.4,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-shadow.png",
              frame_count = 1,
              height = 92,
              hr_version = {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-shadow.png",
                frame_count = 1,
                height = 182,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.3125,
                  0.0625
                },
                width = 222
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0.3125,
                0.0625
              },
              width = 112
            }
          }
        },
        north = {
          layers = {
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N.png",
              frame_count = 1,
              height = 104,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N.png",
                frame_count = 1,
                height = 208,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0,
                  -0.125
                },
                tint = 0,
                width = 190
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0,
                -0.125
              },
              tint = 0,
              width = 96
            },
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-output.png",
              frame_count = 5,
              height = 34,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-output.png",
                frame_count = 5,
                height = 66,
                line_length = 5,
                priority = "high",
                scale = 0.5,
                shift = {
                  -0.09375,
                  -1.375
                },
                width = 60
              },
              line_length = 5,
              priority = "high",
              shift = {
                -0.125,
                -1.375
              },
              width = 32
            },
            {
              animation_speed = 0.4,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-shadow.png",
              frame_count = 1,
              height = 104,
              hr_version = {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-shadow.png",
                frame_count = 1,
                height = 204,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.1875,
                  -0.09375
                },
                width = 212
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0.1875,
                -0.125
              },
              width = 106
            }
          }
        },
        south = {
          layers = {
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S.png",
              frame_count = 1,
              height = 98,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S.png",
                frame_count = 1,
                height = 192,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0,
                  -0.03125
                },
                tint = 0,
                width = 184
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0,
                -0.0625
              },
              tint = 0,
              width = 92
            },
            {
              animation_speed = 0.4,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-shadow.png",
              frame_count = 1,
              height = 102,
              hr_version = {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-shadow.png",
                frame_count = 1,
                height = 204,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.1875,
                  0.0625
                },
                width = 212
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0.1875,
                0.0625
              },
              width = 106
            }
          }
        },
        west = {
          layers = {
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W.png",
              frame_count = 1,
              height = 94,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W.png",
                frame_count = 1,
                height = 188,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0,
                  -0.125
                },
                tint = 0,
                width = 192
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0,
                -0.125
              },
              tint = 0,
              width = 96
            },
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-output.png",
              frame_count = 5,
              height = 28,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-output.png",
                frame_count = 5,
                height = 60,
                line_length = 5,
                priority = "high",
                scale = 0.5,
                shift = {
                  -0.96875,
                  -0.40625
                },
                width = 50
              },
              line_length = 5,
              priority = "high",
              shift = {
                -0.9375,
                -0.375
              },
              width = 24
            },
            {
              animation_speed = 0.4,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-shadow.png",
              frame_count = 1,
              height = 92,
              hr_version = {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-shadow.png",
                frame_count = 1,
                height = 182,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  -0.15625,
                  0.0625
                },
                width = 200
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                -0.1875,
                0.0625
              },
              width = 102
            }
          }
        }
      },
      animation_progress = 1,
      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = {
        east = 30,
        north = 14,
        south = 30,
        west = 30
      },
      drilling_vertical_movement_duration = 25,
      max_animation_progress = 30,
      min_animation_progress = 0,
      shift_animation_transition_duration = 75,
      shift_animation_waypoint_stop_duration = 487.5,
      shift_animation_waypoints = {
        east = {
          {
            0,
            0
          },
          {
            -0.4,
            0
          },
          {
            -0.1,
            0
          },
          {
            -0.5,
            0
          },
          {
            -0.75,
            0
          },
          {
            -1,
            0
          },
          {
            -0.65,
            0
          },
          {
            -0.3,
            0
          },
          {
            -0.9,
            0
          },
          {
            -0.6,
            0
          },
          {
            -0.3,
            0
          }
        },
        north = {
          {
            0,
            0
          },
          {
            0,
            -0.3
          },
          {
            0,
            0.1
          },
          {
            0,
            0.5
          },
          {
            0,
            0.2
          },
          {
            0,
            -0.1
          },
          {
            0,
            -0.5
          },
          {
            0,
            -0.15
          },
          {
            0,
            0.25
          },
          {
            0,
            0.6
          },
          {
            0,
            0.3
          }
        },
        south = {
          {
            0,
            0
          },
          {
            0,
            -0.4
          },
          {
            0,
            -0.1
          },
          {
            0,
            -0.5
          },
          {
            0,
            -0.75
          },
          {
            0,
            -1
          },
          {
            0,
            -0.65
          },
          {
            0,
            -0.3
          },
          {
            0,
            -0.9
          },
          {
            0,
            -0.6
          },
          {
            0,
            -0.3
          }
        },
        west = {
          {
            0,
            0
          },
          {
            0.4,
            0
          },
          {
            0.1,
            0
          },
          {
            0.5,
            0
          },
          {
            0.75,
            0
          },
          {
            1,
            0
          },
          {
            0.65,
            0
          },
          {
            0.3,
            0
          },
          {
            0.9,
            0
          },
          {
            0.6,
            0
          },
          {
            0.3,
            0
          }
        }
      },
      status_colors = {
        disabled = {
          1,
          1,
          0,
          1
        },
        full_output = {
          1,
          1,
          0,
          1
        },
        idle = {
          1,
          0,
          0,
          1
        },
        insufficient_input = {
          1,
          1,
          0,
          1
        },
        low_power = {
          1,
          1,
          0,
          1
        },
        no_minable_resources = {
          1,
          0,
          0,
          1
        },
        no_power = {
          0,
          0,
          0,
          0
        },
        working = {
          0,
          1,
          0,
          1
        }
      },
      working_visualisations = {
        {
          align_to_waypoint = true,
          animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-smoke.png",
            frame_count = 30,
            height = 38,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-smoke.png",
              frame_count = 30,
              height = 72,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                0,
                0.09375
              },
              width = 48
            },
            line_length = 6,
            priority = "high",
            shift = {
              0,
              0.0625
            },
            width = 24
          },
          apply_tint = "resource-color",
          constant_speed = true,
          east_position = {
            0,
            0
          },
          north_position = {
            0,
            0.25
          },
          south_position = {
            0,
            0.25
          },
          synced_fadeout = true,
          west_position = {
            0,
            0
          }
        },
        {
          apply_tint = "resource-color",
          constant_speed = true,
          fadeout = true,
          north_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-smoke.png",
                frame_count = 10,
                height = 30,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-smoke.png",
                  frame_count = 10,
                  height = 58,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.03125,
                    -1.375
                  },
                  width = 42
                },
                line_length = 5,
                priority = "high",
                shift = {
                  -0.0625,
                  -1.375
                },
                width = 24
              }
            }
          }
        },
        {
          always_draw = true,
          animated_shift = true,
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal.png",
                frame_count = 30,
                frame_sequence = {
                  1,
                  1,
                  1,
                  2,
                  3,
                  4,
                  5,
                  6,
                  7,
                  8,
                  9,
                  10,
                  11,
                  12,
                  13,
                  14,
                  15,
                  16,
                  17,
                  18,
                  19,
                  20,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  20,
                  19,
                  18,
                  17,
                  16,
                  15,
                  14,
                  13,
                  12,
                  11,
                  10,
                  9,
                  8,
                  7,
                  6,
                  5,
                  4,
                  3,
                  2,
                  1,
                  1,
                  1
                },
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal.png",
                  frame_count = 30,
                  frame_sequence = 0,
                  height = 160,
                  line_length = 6,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.0625,
                    -0.375
                  },
                  width = 80
                },
                line_length = 6,
                priority = "high",
                shift = {
                  0.0625,
                  -0.375
                },
                width = 40
              },
              {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-shadow.png",
                frame_count = 21,
                frame_sequence = {
                  1,
                  1,
                  1,
                  2,
                  3,
                  4,
                  5,
                  6,
                  7,
                  8,
                  9,
                  10,
                  11,
                  12,
                  13,
                  14,
                  15,
                  16,
                  17,
                  18,
                  19,
                  20,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  20,
                  19,
                  18,
                  17,
                  16,
                  15,
                  14,
                  13,
                  12,
                  11,
                  10,
                  9,
                  8,
                  7,
                  6,
                  5,
                  4,
                  3,
                  2,
                  1,
                  1,
                  1
                },
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal-shadow.png",
                  frame_count = 21,
                  frame_sequence = 0,
                  height = 164,
                  line_length = 7,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    1.03125,
                    0.03125
                  },
                  width = 180
                },
                line_length = 7,
                priority = "high",
                shift = {
                  1,
                  0.0625
                },
                width = 92
              }
            }
          },
          north_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill.png",
                frame_count = 30,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill.png",
                  frame_count = 30,
                  frame_sequence = 0,
                  height = 156,
                  line_length = 6,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.03125,
                    -0.34375
                  },
                  width = 162
                },
                line_length = 6,
                priority = "high",
                shift = {
                  0,
                  -0.375
                },
                width = 84
              },
              {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-shadow.png",
                frame_count = 21,
                frame_sequence = 0,
                height = 26,
                hr_version = {
                  animation_speed = 0.4,
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-shadow.png",
                  frame_count = 21,
                  frame_sequence = 0,
                  height = 56,
                  line_length = 7,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.65625,
                    0.15625
                  },
                  width = 218
                },
                line_length = 7,
                priority = "high",
                shift = {
                  0.625,
                  0.1875
                },
                width = 112
              }
            }
          },
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill.png",
                frame_count = 30,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill.png",
                  frame_count = 30,
                  frame_sequence = 0,
                  height = 156,
                  line_length = 6,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.03125,
                    -0.34375
                  },
                  width = 162
                },
                line_length = 6,
                priority = "high",
                shift = {
                  0,
                  -0.375
                },
                width = 84
              },
              {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-shadow.png",
                frame_count = 21,
                frame_sequence = 0,
                height = 26,
                hr_version = {
                  animation_speed = 0.4,
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-shadow.png",
                  frame_count = 21,
                  frame_sequence = 0,
                  height = 56,
                  line_length = 7,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.65625,
                    0.15625
                  },
                  width = 218
                },
                line_length = 7,
                priority = "high",
                shift = {
                  0.625,
                  0.1875
                },
                width = 112
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal.png",
                frame_count = 30,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal.png",
                  frame_count = 30,
                  frame_sequence = 0,
                  height = 160,
                  line_length = 6,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.0625,
                    -0.375
                  },
                  width = 80
                },
                line_length = 6,
                priority = "high",
                shift = {
                  0.0625,
                  -0.375
                },
                width = 40
              },
              {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-shadow.png",
                frame_count = 21,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal-shadow.png",
                  frame_count = 21,
                  frame_sequence = 0,
                  height = 164,
                  line_length = 7,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    1.03125,
                    0.03125
                  },
                  width = 180
                },
                line_length = 7,
                priority = "high",
                shift = {
                  1,
                  0.0625
                },
                width = 92
              }
            }
          }
        },
        {
          align_to_waypoint = true,
          animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-smoke-front.png",
            frame_count = 30,
            height = 68,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-smoke-front.png",
              frame_count = 30,
              height = 132,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.09375,
                0.28125
              },
              width = 148
            },
            line_length = 6,
            priority = "high",
            shift = {
              -0.125,
              0.25
            },
            width = 76
          },
          apply_tint = "resource-color",
          constant_speed = true,
          east_position = {
            0,
            0
          },
          north_position = {
            0,
            0.25
          },
          south_position = {
            0,
            0.25
          },
          synced_fadeout = true,
          west_position = {
            0,
            0
          }
        },
        {
          apply_tint = "resource-color",
          constant_speed = true,
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-smoke.png",
                frame_count = 10,
                height = 28,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-smoke.png",
                  frame_count = 10,
                  height = 56,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.75,
                    -0.375
                  },
                  width = 46
                },
                line_length = 5,
                priority = "high",
                shift = {
                  0.75,
                  -0.375
                },
                width = 24
              }
            }
          },
          fadeout = true,
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-smoke.png",
                frame_count = 10,
                height = 18,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-smoke.png",
                  frame_count = 10,
                  height = 36,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.0625,
                    0.625
                  },
                  width = 48
                },
                line_length = 5,
                priority = "high",
                shift = {
                  -0.0625,
                  0.625
                },
                width = 24
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-smoke.png",
                frame_count = 10,
                height = 30,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-smoke.png",
                  frame_count = 10,
                  height = 54,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.78125,
                    -0.34375
                  },
                  width = 46
                },
                line_length = 5,
                priority = "high",
                shift = {
                  -0.8125,
                  -0.375
                },
                width = 26
              }
            }
          }
        },
        {
          always_draw = true,
          animated_shift = true,
          east_animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-front.png",
            frame_count = 30,
            frame_sequence = 0,
            height = 76,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal-front.png",
              frame_count = 30,
              frame_sequence = 0,
              height = 154,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.09375,
                0.09375
              },
              width = 66
            },
            line_length = 6,
            priority = "high",
            shift = {
              -0.0625,
              0.125
            },
            width = 32
          },
          west_animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-front.png",
            frame_count = 30,
            frame_sequence = 0,
            height = 76,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal-front.png",
              frame_count = 30,
              frame_sequence = 0,
              height = 154,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.09375,
                0.09375
              },
              width = 66
            },
            line_length = 6,
            priority = "high",
            shift = {
              -0.0625,
              0.125
            },
            width = 32
          }
        },
        {
          always_draw = true,
          east_animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-front.png",
            frame_count = 1,
            height = 74,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-front.png",
              frame_count = 1,
              height = 148,
              line_length = 1,
              priority = "high",
              scale = 0.5,
              shift = {
                0.65625,
                0.3125
              },
              width = 136
            },
            line_length = 1,
            priority = "high",
            shift = {
              0.6875,
              0.3125
            },
            width = 66
          },
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-output.png",
                frame_count = 5,
                height = 28,
                hr_version = {
                  animation_speed = 0.4,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-output.png",
                  frame_count = 5,
                  height = 56,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.03125,
                    1.0625
                  },
                  width = 84
                },
                line_length = 5,
                priority = "high",
                shift = {
                  -0.0625,
                  1.0625
                },
                width = 44
              },
              {
                animation_speed = 0.4,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-front.png",
                frame_count = 1,
                height = 54,
                hr_version = {
                  animation_speed = 0.4,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-front.png",
                  frame_count = 1,
                  height = 104,
                  line_length = 1,
                  priority = "high",
                  repeat_count = 5,
                  scale = 0.5,
                  shift = {
                    0,
                    0.84375
                  },
                  width = 190
                },
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                shift = {
                  0,
                  0.8125
                },
                width = 96
              }
            }
          },
          west_animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-front.png",
            frame_count = 1,
            height = 70,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-front.png",
              frame_count = 1,
              height = 140,
              line_length = 1,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.6875,
                0.375
              },
              width = 134
            },
            line_length = 1,
            priority = "high",
            shift = {
              -0.6875,
              0.375
            },
            width = 68
          }
        },
        {
          always_draw = true,
          apply_tint = "status",
          draw_as_light = true,
          east_animation = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-light.png",
            height = 18,
            hr_version = {
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-light.png",
              height = 34,
              scale = 0.5,
              shift = {
                1.1875,
                -1
              },
              tint = {
                1,
                1,
                1,
                1
              },
              width = 32
            },
            shift = {
              1.1875,
              -1
            },
            tint = 0,
            width = 16
          },
          north_animation = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-light.png",
            height = 16,
            hr_version = {
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-light.png",
              height = 32,
              scale = 0.5,
              shift = {
                0.8125,
                -1.5
              },
              tint = 0,
              width = 32
            },
            shift = {
              0.8125,
              -1.5
            },
            tint = 0,
            width = 16
          },
          south_animation = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-light.png",
            height = 24,
            hr_version = {
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-light.png",
              height = 46,
              scale = 0.5,
              shift = {
                0.8125,
                0.8125
              },
              tint = 0,
              width = 38
            },
            shift = {
              0.8125,
              0.8125
            },
            tint = 0,
            width = 20
          },
          west_animation = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-light.png",
            height = 18,
            hr_version = {
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-light.png",
              height = 34,
              scale = 0.5,
              shift = {
                -1.21875,
                -1
              },
              tint = 0,
              width = 32
            },
            shift = {
              -1.25,
              -1
            },
            tint = 0,
            width = 18
          }
        },
        {
          always_draw = true,
          apply_tint = "status",
          east_position = {
            1.2,
            -1
          },
          light = {
            color = {
              b = 1,
              g = 1,
              r = 1
            },
            intensity = 0.2,
            minimum_darkness = 0.1,
            size = 2
          },
          north_position = {
            0.8,
            -1.5
          },
          south_position = {
            0.8,
            0.8
          },
          west_position = {
            -1.2,
            -1
          }
        }
      }
    },
    icon = "__Krastorio2Assets__/icons/entities/electric-mining-drill.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__Krastorio2Assets__/icons/entities/electric-mining-drill.png",
        tint = 0
      }
    },
    input_fluid_box = {
      base_area = 1,
      base_level = -1,
      height = 2,
      pipe_connections = {
        {
          position = {
            -2,
            0
          }
        },
        {
          position = {
            2,
            0
          }
        },
        {
          position = {
            0,
            2
          }
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
      pipe_picture = {
        east = {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-E.png",
          height = 38,
          hr_version = {
            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-E.png",
            height = 76,
            priority = "extra-high",
            scale = 0.5,
            shift = {
              -0.765625,
              0.03125
            },
            width = 42
          },
          priority = "extra-high",
          shift = {
            -0.78125,
            0.03125
          },
          width = 20
        },
        north = {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-N.png",
          height = 18,
          hr_version = {
            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-N.png",
            height = 38,
            priority = "extra-high",
            scale = 0.5,
            shift = {
              0.0703125,
              0.421875
            },
            width = 71
          },
          priority = "extra-high",
          shift = {
            0.078125,
            0.4375
          },
          width = 35
        },
        south = {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-S.png",
          height = 31,
          hr_version = {
            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-S.png",
            height = 61,
            priority = "extra-high",
            scale = 0.5,
            shift = {
              0,
              -0.9765625
            },
            width = 88
          },
          priority = "extra-high",
          shift = {
            0,
            -0.984375
          },
          width = 44
        },
        west = {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-W.png",
          height = 37,
          hr_version = {
            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-W.png",
            height = 73,
            priority = "extra-high",
            scale = 0.5,
            shift = {
              0.8046875,
              0.0390625
            },
            width = 39
          },
          priority = "extra-high",
          shift = {
            0.796875,
            0.046875
          },
          width = 19
        }
      },
      production_type = "input-output"
    },
    integration_patch = {
      east = {
        animation_speed = 0.4,
        direction_count = 1,
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-integration.png",
        frame_count = 1,
        height = 108,
        hr_version = {
          animation_speed = 0.4,
          direction_count = 1,
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-integration.png",
          frame_count = 1,
          height = 214,
          line_length = 1,
          priority = "high",
          repeat_count = 5,
          scale = 0.5,
          shift = {
            0.09375,
            0.0625
          },
          width = 236
        },
        line_length = 1,
        priority = "high",
        repeat_count = 5,
        shift = {
          0.125,
          0.0625
        },
        width = 116
      },
      north = {
        animation_speed = 0.4,
        direction_count = 1,
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-integration.png",
        frame_count = 1,
        height = 108,
        hr_version = {
          animation_speed = 0.4,
          direction_count = 1,
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-integration.png",
          frame_count = 1,
          height = 218,
          line_length = 1,
          priority = "high",
          repeat_count = 5,
          scale = 0.5,
          shift = {
            -0.03125,
            0.03125
          },
          width = 216
        },
        line_length = 1,
        priority = "high",
        repeat_count = 5,
        shift = {
          -0.0625,
          0.0625
        },
        width = 110
      },
      south = {
        animation_speed = 0.4,
        direction_count = 1,
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-integration.png",
        frame_count = 1,
        height = 114,
        hr_version = {
          animation_speed = 0.4,
          direction_count = 1,
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-integration.png",
          frame_count = 1,
          height = 230,
          line_length = 1,
          priority = "high",
          repeat_count = 5,
          scale = 0.5,
          shift = {
            0,
            0.09375
          },
          width = 214
        },
        line_length = 1,
        priority = "high",
        repeat_count = 5,
        shift = {
          0,
          0.125
        },
        width = 108
      },
      west = {
        animation_speed = 0.4,
        direction_count = 1,
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-integration.png",
        frame_count = 1,
        height = 106,
        hr_version = {
          animation_speed = 0.4,
          direction_count = 1,
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-integration.png",
          frame_count = 1,
          height = 214,
          line_length = 1,
          priority = "high",
          repeat_count = 5,
          scale = 0.5,
          shift = {
            -0.125,
            0.03125
          },
          width = 234
        },
        line_length = 1,
        priority = "high",
        repeat_count = 5,
        shift = {
          -0.125,
          0.0625
        },
        width = 118
      }
    },
    max_health = 300,
    minable = {
      mining_time = 0.3,
      result = "electric-mining-drill-2"
    },
    mining_speed = 1,
    module_specification = {
      module_slots = 2
    },
    monitor_visualization_tint = {
      b = 255,
      g = 173,
      r = 78
    },
    next_upgrade = "kr-electric-mining-drill-mk2",
    open_sound = {
      {
        filename = "__base__/sound/machine-open.ogg",
        volume = 0.5
      }
    },
    radius_visualisation_picture = {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      height = 10,
      width = 10
    },
    resource_categories = {
      "basic-solid"
    },
    resource_searching_radius = 3.4900000000000002,
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
    vector_to_place_result = {
      0,
      -1.85
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
    wet_mining_graphics_set = {
      animation = {
        east = {
          layers = {
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet.png",
              frame_count = 1,
              height = 106,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet.png",
                frame_count = 1,
                height = 208,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  -0.0625,
                  -0.28125
                },
                tint = 0,
                width = 194
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                -0.0625,
                -0.3125
              },
              tint = 0,
              width = 98
            },
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-output.png",
              frame_count = 5,
              height = 38,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-output.png",
                frame_count = 5,
                height = 74,
                line_length = 5,
                priority = "high",
                scale = 0.5,
                shift = {
                  0.9375,
                  -0.25
                },
                width = 50
              },
              line_length = 5,
              priority = "high",
              shift = {
                0.9375,
                -0.25
              },
              width = 26
            },
            {
              animation_speed = 0.4,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-shadow.png",
              frame_count = 1,
              height = 100,
              hr_version = {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-shadow.png",
                frame_count = 1,
                height = 202,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.28125,
                  0.15625
                },
                width = 226
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0.3125,
                0.1875
              },
              width = 112
            }
          }
        },
        north = {
          layers = {
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet.png",
              frame_count = 1,
              height = 100,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet.png",
                frame_count = 1,
                height = 198,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0,
                  -0.21875
                },
                tint = 0,
                width = 190
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0,
                -0.25
              },
              tint = 0,
              width = 96
            },
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-output.png",
              frame_count = 5,
              height = 34,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-output.png",
                frame_count = 5,
                height = 66,
                line_length = 5,
                priority = "high",
                scale = 0.5,
                shift = {
                  -0.09375,
                  -1.375
                },
                width = 60
              },
              line_length = 5,
              priority = "high",
              shift = {
                -0.125,
                -1.375
              },
              width = 32
            },
            {
              animation_speed = 0.4,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-shadow.png",
              frame_count = 1,
              height = 110,
              hr_version = {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-shadow.png",
                frame_count = 1,
                height = 222,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.375,
                  0.03125
                },
                width = 248
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0.375,
                0.0625
              },
              width = 124
            }
          }
        },
        south = {
          layers = {
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet.png",
              frame_count = 1,
              height = 106,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet.png",
                frame_count = 1,
                height = 208,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.03125,
                  -0.15625
                },
                tint = 0,
                width = 192
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0,
                -0.1875
              },
              tint = 0,
              width = 98
            },
            {
              animation_speed = 0.4,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-shadow.png",
              frame_count = 1,
              height = 98,
              hr_version = {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-shadow.png",
                frame_count = 1,
                height = 192,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.375,
                  0.15625
                },
                width = 248
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0.375,
                0.125
              },
              width = 124
            }
          }
        },
        west = {
          layers = {
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet.png",
              frame_count = 1,
              height = 106,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet.png",
                frame_count = 1,
                height = 208,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.03125,
                  -0.28125
                },
                tint = 0,
                width = 194
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0.0625,
                -0.3125
              },
              tint = 0,
              width = 96
            },
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-output.png",
              frame_count = 5,
              height = 28,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-output.png",
                frame_count = 5,
                height = 60,
                line_length = 5,
                priority = "high",
                scale = 0.5,
                shift = {
                  -0.96875,
                  -0.40625
                },
                width = 50
              },
              line_length = 5,
              priority = "high",
              shift = {
                -0.9375,
                -0.375
              },
              width = 24
            },
            {
              animation_speed = 0.4,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-shadow.png",
              frame_count = 1,
              height = 102,
              hr_version = {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-shadow.png",
                frame_count = 1,
                height = 202,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.28125,
                  0.1875
                },
                width = 260
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0.25,
                0.1875
              },
              width = 132
            }
          }
        }
      },
      animation_progress = 1,
      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = {
        east = 48,
        north = 14,
        south = 48,
        west = 48
      },
      drilling_vertical_movement_duration = 25,
      max_animation_progress = 30,
      min_animation_progress = 0,
      shift_animation_transition_duration = 75,
      shift_animation_waypoint_stop_duration = 487.5,
      shift_animation_waypoints = {
        east = {
          {
            0,
            0
          },
          {
            -0.3,
            0
          },
          {
            0,
            0
          },
          {
            -0.25,
            0
          }
        },
        north = {
          {
            0,
            0
          },
          {
            0,
            -0.4
          },
          {
            0,
            -0.1
          },
          {
            0,
            0.2
          }
        },
        south = {
          {
            0,
            0
          },
          {
            0,
            -0.4
          },
          {
            0,
            -0.7
          },
          {
            0,
            -0.3
          }
        },
        west = {
          {
            0,
            0
          },
          {
            0.3,
            0
          },
          {
            0,
            0
          },
          {
            0.25,
            0
          }
        }
      },
      status_colors = {
        disabled = {
          1,
          1,
          0,
          1
        },
        full_output = {
          1,
          1,
          0,
          1
        },
        idle = {
          1,
          0,
          0,
          1
        },
        insufficient_input = {
          1,
          1,
          0,
          1
        },
        low_power = {
          1,
          1,
          0,
          1
        },
        no_minable_resources = {
          1,
          0,
          0,
          1
        },
        no_power = {
          0,
          0,
          0,
          0
        },
        working = {
          0,
          1,
          0,
          1
        }
      },
      working_visualisations = {
        {
          align_to_waypoint = true,
          animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-smoke.png",
            frame_count = 30,
            height = 38,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-smoke.png",
              frame_count = 30,
              height = 72,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                0,
                0.09375
              },
              width = 48
            },
            line_length = 6,
            priority = "high",
            shift = {
              0,
              0.0625
            },
            width = 24
          },
          apply_tint = "resource-color",
          constant_speed = true,
          east_position = {
            0,
            0
          },
          north_position = {
            0,
            0.25
          },
          south_position = {
            0,
            0.25
          },
          synced_fadeout = true,
          west_position = {
            0,
            0
          }
        },
        {
          apply_tint = "resource-color",
          constant_speed = true,
          fadeout = true,
          north_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-smoke.png",
                frame_count = 10,
                height = 30,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-smoke.png",
                  frame_count = 10,
                  height = 58,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.03125,
                    -1.375
                  },
                  width = 42
                },
                line_length = 5,
                priority = "high",
                shift = {
                  -0.0625,
                  -1.375
                },
                width = 24
              }
            }
          }
        },
        {
          always_draw = true,
          animated_shift = true,
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal.png",
                frame_count = 30,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal.png",
                  frame_count = 30,
                  frame_sequence = 0,
                  height = 160,
                  line_length = 6,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.0625,
                    -0.375
                  },
                  width = 80
                },
                line_length = 6,
                priority = "high",
                shift = {
                  0.0625,
                  -0.375
                },
                width = 40
              },
              {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-shadow.png",
                frame_count = 21,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal-shadow.png",
                  frame_count = 21,
                  frame_sequence = 0,
                  height = 164,
                  line_length = 7,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    1.03125,
                    0.03125
                  },
                  width = 180
                },
                line_length = 7,
                priority = "high",
                shift = {
                  1,
                  0.0625
                },
                width = 92
              }
            }
          },
          north_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill.png",
                frame_count = 30,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill.png",
                  frame_count = 30,
                  frame_sequence = 0,
                  height = 156,
                  line_length = 6,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.03125,
                    -0.34375
                  },
                  width = 162
                },
                line_length = 6,
                priority = "high",
                shift = {
                  0,
                  -0.375
                },
                width = 84
              },
              {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-shadow.png",
                frame_count = 21,
                frame_sequence = 0,
                height = 26,
                hr_version = {
                  animation_speed = 0.4,
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-shadow.png",
                  frame_count = 21,
                  frame_sequence = 0,
                  height = 56,
                  line_length = 7,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.65625,
                    0.15625
                  },
                  width = 218
                },
                line_length = 7,
                priority = "high",
                shift = {
                  0.625,
                  0.1875
                },
                width = 112
              }
            }
          },
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill.png",
                frame_count = 30,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill.png",
                  frame_count = 30,
                  frame_sequence = 0,
                  height = 156,
                  line_length = 6,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.03125,
                    -0.34375
                  },
                  width = 162
                },
                line_length = 6,
                priority = "high",
                shift = {
                  0,
                  -0.375
                },
                width = 84
              },
              {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-shadow.png",
                frame_count = 21,
                frame_sequence = 0,
                height = 26,
                hr_version = {
                  animation_speed = 0.4,
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-shadow.png",
                  frame_count = 21,
                  frame_sequence = 0,
                  height = 56,
                  line_length = 7,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.65625,
                    0.15625
                  },
                  width = 218
                },
                line_length = 7,
                priority = "high",
                shift = {
                  0.625,
                  0.1875
                },
                width = 112
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal.png",
                frame_count = 30,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal.png",
                  frame_count = 30,
                  frame_sequence = 0,
                  height = 160,
                  line_length = 6,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.0625,
                    -0.375
                  },
                  width = 80
                },
                line_length = 6,
                priority = "high",
                shift = {
                  0.0625,
                  -0.375
                },
                width = 40
              },
              {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-shadow.png",
                frame_count = 21,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal-shadow.png",
                  frame_count = 21,
                  frame_sequence = 0,
                  height = 164,
                  line_length = 7,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    1.03125,
                    0.03125
                  },
                  width = 180
                },
                line_length = 7,
                priority = "high",
                shift = {
                  1,
                  0.0625
                },
                width = 92
              }
            }
          }
        },
        {
          align_to_waypoint = true,
          animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-smoke-front.png",
            frame_count = 30,
            height = 68,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-smoke-front.png",
              frame_count = 30,
              height = 132,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.09375,
                0.28125
              },
              width = 148
            },
            line_length = 6,
            priority = "high",
            shift = {
              -0.125,
              0.25
            },
            width = 76
          },
          apply_tint = "resource-color",
          constant_speed = true,
          synced_fadeout = true
        },
        {
          apply_tint = "resource-color",
          constant_speed = true,
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-smoke.png",
                frame_count = 10,
                height = 28,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-smoke.png",
                  frame_count = 10,
                  height = 56,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.75,
                    -0.375
                  },
                  width = 46
                },
                line_length = 5,
                priority = "high",
                shift = {
                  0.75,
                  -0.375
                },
                width = 24
              }
            }
          },
          fadeout = true,
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-smoke.png",
                frame_count = 10,
                height = 18,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-smoke.png",
                  frame_count = 10,
                  height = 36,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.0625,
                    0.625
                  },
                  width = 48
                },
                line_length = 5,
                priority = "high",
                shift = {
                  -0.0625,
                  0.625
                },
                width = 24
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-smoke.png",
                frame_count = 10,
                height = 30,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-smoke.png",
                  frame_count = 10,
                  height = 54,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.78125,
                    -0.34375
                  },
                  width = 46
                },
                line_length = 5,
                priority = "high",
                shift = {
                  -0.8125,
                  -0.375
                },
                width = 26
              }
            }
          }
        },
        {
          always_draw = true,
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-window-background.png",
                frame_count = 1,
                height = 8,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-window-background.png",
                  frame_count = 1,
                  height = 14,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -1.625
                  },
                  width = 22
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -1.625
                },
                width = 12
              }
            }
          },
          secondary_draw_order = -49,
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-window-background.png",
                frame_count = 1,
                height = 12,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-window-background.png",
                  frame_count = 1,
                  height = 20,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.0625,
                    -1.34375
                  },
                  width = 30
                },
                line_length = 1,
                priority = "high",
                shift = {
                  -0.0625,
                  -1.375
                },
                width = 16
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-window-background.png",
                frame_count = 1,
                height = 8,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-window-background.png",
                  frame_count = 1,
                  height = 14,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -1.625
                  },
                  width = 22
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -1.625
                },
                width = 12
              }
            }
          }
        },
        {
          always_draw = true,
          apply_tint = "input-fluid-base-color",
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-background.png",
                frame_count = 1,
                height = 8,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-fluid-background.png",
                  frame_count = 1,
                  height = 14,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -1.625
                  },
                  width = 22
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -1.625
                },
                width = 12
              }
            }
          },
          secondary_draw_order = -48,
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-background.png",
                frame_count = 1,
                height = 8,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-fluid-background.png",
                  frame_count = 1,
                  height = 18,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.0625,
                    -1.34375
                  },
                  width = 28
                },
                line_length = 1,
                priority = "high",
                shift = {
                  -0.0625,
                  -1.3125
                },
                width = 14
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-background.png",
                frame_count = 1,
                height = 8,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-fluid-background.png",
                  frame_count = 1,
                  height = 14,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -1.625
                  },
                  width = 22
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -1.625
                },
                width = 12
              }
            }
          }
        },
        {
          always_draw = true,
          apply_tint = "input-fluid-flow-color",
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-flow.png",
                frame_count = 1,
                height = 8,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-fluid-flow.png",
                  frame_count = 1,
                  height = 14,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -1.625
                  },
                  width = 24
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -1.625
                },
                width = 12
              }
            }
          },
          secondary_draw_order = -47,
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-flow.png",
                frame_count = 1,
                height = 8,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-fluid-flow.png",
                  frame_count = 1,
                  height = 16,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.0625,
                    -1.3125
                  },
                  width = 26
                },
                line_length = 1,
                priority = "high",
                shift = {
                  -0.0625,
                  -1.3125
                },
                width = 14
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-flow.png",
                frame_count = 1,
                height = 8,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-fluid-flow.png",
                  frame_count = 1,
                  height = 14,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -1.625
                  },
                  width = 24
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -1.625
                },
                width = 12
              }
            }
          }
        },
        {
          always_draw = true,
          animated_shift = true,
          east_animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-front.png",
            frame_count = 30,
            frame_sequence = 0,
            height = 76,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal-front.png",
              frame_count = 30,
              frame_sequence = 0,
              height = 154,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.09375,
                0.09375
              },
              width = 66
            },
            line_length = 6,
            priority = "high",
            shift = {
              -0.0625,
              0.125
            },
            width = 32
          },
          west_animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-front.png",
            frame_count = 30,
            frame_sequence = 0,
            height = 76,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal-front.png",
              frame_count = 30,
              frame_sequence = 0,
              height = 154,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.09375,
                0.09375
              },
              width = 66
            },
            line_length = 6,
            priority = "high",
            shift = {
              -0.0625,
              0.125
            },
            width = 32
          }
        },
        {
          always_draw = true,
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-window-background-front.png",
                frame_count = 1,
                height = 54,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-window-background-front.png",
                  frame_count = 1,
                  height = 110,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.46875,
                    0.28125
                  },
                  width = 82
                },
                line_length = 1,
                priority = "high",
                shift = {
                  -0.4375,
                  0.3125
                },
                width = 40
              }
            }
          },
          north_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-window-background.png",
                frame_count = 1,
                height = 44,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-window-background.png",
                  frame_count = 1,
                  height = 90,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    0.28125
                  },
                  width = 172
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  0.3125
                },
                width = 86
              }
            }
          },
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-window-background-front.png",
                frame_count = 1,
                height = 14,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-window-background-front.png",
                  frame_count = 1,
                  height = 22,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -0.21875
                  },
                  width = 172
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -0.25
                },
                width = 86
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-window-background-front.png",
                frame_count = 1,
                height = 54,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-window-background-front.png",
                  frame_count = 1,
                  height = 106,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.4375,
                    0.3125
                  },
                  width = 80
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0.4375,
                  0.3125
                },
                width = 40
              }
            }
          }
        },
        {
          always_draw = true,
          apply_tint = "input-fluid-base-color",
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-background-front.png",
                frame_count = 1,
                height = 54,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-fluid-background-front.png",
                  frame_count = 1,
                  height = 106,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.46875,
                    0.3125
                  },
                  width = 82
                },
                line_length = 1,
                priority = "high",
                shift = {
                  -0.4375,
                  0.3125
                },
                width = 40
              }
            }
          },
          north_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-fluid-background.png",
                frame_count = 1,
                height = 46,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-fluid-background.png",
                  frame_count = 1,
                  height = 94,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    0.28125
                  },
                  width = 178
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  0.3125
                },
                width = 90
              }
            }
          },
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-background-front.png",
                frame_count = 1,
                height = 16,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-fluid-background-front.png",
                  frame_count = 1,
                  height = 28,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -0.21875
                  },
                  width = 178
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -0.25
                },
                width = 90
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-background-front.png",
                frame_count = 1,
                height = 54,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-fluid-background-front.png",
                  frame_count = 1,
                  height = 102,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.4375,
                    0.34375
                  },
                  width = 80
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0.4375,
                  0.3125
                },
                width = 40
              }
            }
          }
        },
        {
          always_draw = true,
          apply_tint = "input-fluid-flow-color",
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-flow-front.png",
                frame_count = 1,
                height = 54,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-fluid-flow-front.png",
                  frame_count = 1,
                  height = 106,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.4375,
                    0.3125
                  },
                  width = 78
                },
                line_length = 1,
                priority = "high",
                shift = {
                  -0.4375,
                  0.3125
                },
                width = 40
              }
            }
          },
          north_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-fluid-flow.png",
                frame_count = 1,
                height = 44,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-fluid-flow.png",
                  frame_count = 1,
                  height = 88,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    0.3125
                  },
                  width = 172
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  0.3125
                },
                width = 86
              }
            }
          },
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-flow-front.png",
                frame_count = 1,
                height = 12,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-fluid-flow-front.png",
                  frame_count = 1,
                  height = 22,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -0.25
                  },
                  width = 172
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -0.25
                },
                width = 86
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-flow-front.png",
                frame_count = 1,
                height = 50,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-fluid-flow-front.png",
                  frame_count = 1,
                  height = 102,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.4375,
                    0.34375
                  },
                  width = 78
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0.4375,
                  0.375
                },
                width = 40
              }
            }
          }
        },
        {
          always_draw = true,
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-front.png",
                frame_count = 1,
                height = 76,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-front.png",
                  frame_count = 1,
                  height = 148,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.09375,
                    0.34375
                  },
                  width = 208
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0.0625,
                  0.3125
                },
                width = 106
              }
            }
          },
          north_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-front.png",
                frame_count = 1,
                height = 66,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-front.png",
                  frame_count = 1,
                  height = 130,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    0.5
                  },
                  width = 200
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  0.5
                },
                width = 100
              }
            }
          },
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-output.png",
                frame_count = 5,
                height = 28,
                hr_version = {
                  animation_speed = 0.4,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-output.png",
                  frame_count = 5,
                  height = 56,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.03125,
                    1.0625
                  },
                  width = 84
                },
                line_length = 5,
                priority = "high",
                shift = {
                  -0.0625,
                  1.0625
                },
                width = 44
              },
              {
                animation_speed = 0.4,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-front.png",
                frame_count = 1,
                height = 70,
                hr_version = {
                  animation_speed = 0.4,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-front.png",
                  frame_count = 1,
                  height = 140,
                  line_length = 1,
                  priority = "high",
                  repeat_count = 5,
                  scale = 0.5,
                  shift = {
                    0,
                    0.5625
                  },
                  width = 192
                },
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                shift = {
                  0,
                  0.5625
                },
                width = 96
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-front.png",
                frame_count = 1,
                height = 72,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-front.png",
                  frame_count = 1,
                  height = 144,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.125,
                    0.375
                  },
                  width = 208
                },
                line_length = 1,
                priority = "high",
                shift = {
                  -0.125,
                  0.375
                },
                width = 104
              }
            }
          }
        },
        {
          always_draw = true,
          apply_tint = "status",
          draw_as_light = true,
          east_animation = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-light.png",
            height = 18,
            hr_version = {
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-light.png",
              height = 34,
              scale = 0.5,
              shift = {
                1.1875,
                -1
              },
              tint = {
                1,
                1,
                1,
                1
              },
              width = 32
            },
            shift = {
              1.1875,
              -1
            },
            tint = 0,
            width = 16
          },
          north_animation = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-light.png",
            height = 16,
            hr_version = {
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-light.png",
              height = 32,
              scale = 0.5,
              shift = {
                0.8125,
                -1.5
              },
              tint = 0,
              width = 32
            },
            shift = {
              0.8125,
              -1.5
            },
            tint = 0,
            width = 16
          },
          south_animation = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-light.png",
            height = 24,
            hr_version = {
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-light.png",
              height = 46,
              scale = 0.5,
              shift = {
                0.8125,
                0.8125
              },
              tint = 0,
              width = 38
            },
            shift = {
              0.8125,
              0.8125
            },
            tint = 0,
            width = 20
          },
          west_animation = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-light.png",
            height = 18,
            hr_version = {
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-light.png",
              height = 34,
              scale = 0.5,
              shift = {
                -1.21875,
                -1
              },
              tint = 0,
              width = 32
            },
            shift = {
              -1.25,
              -1
            },
            tint = 0,
            width = 18
          }
        },
        0
      }
    },
    working_sound = {
      audible_distance_modifier = 0.6,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      sound = {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.5
      }
    }
  },
})

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

data:extend({
  -- Item
  {
    name = "electric-mining-drill-3",
    type = "item",
    icon = "__Krastorio2Assets__/icons/entities/electric-mining-drill.png",
    icon_size = 64,
    icons = {
      {
        icon = "__Krastorio2Assets__/icons/entities/electric-mining-drill.png",
        tint = {
          a = 0.3,
          b = 0.50980392156862742,
          g = 0,
          r = 0.29411764705882355
        }
      }
    },
    order = "a[items]-c[electric-mining-drill]",
    place_result = "electric-mining-drill-3",
    stack_size = 50,
    subgroup = "extraction-machine",
  },
  -- Recipe
  {
    name = "electric-mining-drill-3",
    type = "recipe",
    enabled = false,
    energy_required = 2,
    ingredients = {
      {
        "kr-electric-mining-drill-mk2",
        1
      },
      {
        "electric-engine-unit",
        10
      },
      {
        "processing-unit",
        5
      },
      {
        "low-density-structure",
        2
      }
    },
    result = "electric-mining-drill-3",
  },
  -- Entity
  {
    name = "electric-mining-drill-3",
    type = "mining-drill",
    circuit_connector_sprites = {
      {
        blue_led_light_offset = {
          -1.140625,
          -1.421875
        },
        connector_main = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
          height = 50,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.375,
            -1.25
          },
          width = 52,
          x = 208,
          y = 0
        },
        led_blue = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
          height = 60,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.375,
            -1.28125
          },
          width = 60,
          x = 240,
          y = 0
        },
        led_blue_off = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04f-blue-LED-off-sequence.png",
          height = 44,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.375,
            -1.28125
          },
          width = 46,
          x = 184,
          y = 0
        },
        led_green = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04h-green-LED-sequence.png",
          height = 46,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.375,
            -1.28125
          },
          width = 48,
          x = 192,
          y = 0
        },
        led_light = {
          intensity = 0,
          size = 0.9
        },
        led_red = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04i-red-LED-sequence.png",
          height = 46,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.375,
            -1.28125
          },
          width = 48,
          x = 192,
          y = 0
        },
        red_green_led_light_offset = {
          -1.296875,
          -1.421875
        },
        wire_pins = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
          height = 58,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.375,
            -1.28125
          },
          width = 62,
          x = 248,
          y = 0
        },
        wire_pins_shadow = {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04d-wire-shadow-sequence.png",
          height = 54,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.21875,
            -1.15625
          },
          width = 70,
          x = 280,
          y = 0
        }
      },
      {
        blue_led_light_offset = {
          1.09375,
          0.96875
        },
        connector_main = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
          height = 50,
          priority = "low",
          scale = 0.5,
          shift = {
            1.0625,
            0.96875
          },
          width = 52,
          x = 104,
          y = 0
        },
        led_blue = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
          height = 60,
          priority = "low",
          scale = 0.5,
          shift = {
            1.0625,
            0.9375
          },
          width = 60,
          x = 120,
          y = 0
        },
        led_blue_off = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04f-blue-LED-off-sequence.png",
          height = 44,
          priority = "low",
          scale = 0.5,
          shift = {
            1.0625,
            0.9375
          },
          width = 46,
          x = 92,
          y = 0
        },
        led_green = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04h-green-LED-sequence.png",
          height = 46,
          priority = "low",
          scale = 0.5,
          shift = {
            1.0625,
            0.9375
          },
          width = 48,
          x = 96,
          y = 0
        },
        led_light = {
          intensity = 0,
          size = 0.9
        },
        led_red = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04i-red-LED-sequence.png",
          height = 46,
          priority = "low",
          scale = 0.5,
          shift = {
            1.0625,
            0.9375
          },
          width = 48,
          x = 96,
          y = 0
        },
        red_green_led_light_offset = {
          1.09375,
          0.859375
        },
        wire_pins = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
          height = 58,
          priority = "low",
          scale = 0.5,
          shift = {
            1.0625,
            0.9375
          },
          width = 62,
          x = 124,
          y = 0
        },
        wire_pins_shadow = {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04d-wire-shadow-sequence.png",
          height = 54,
          priority = "low",
          scale = 0.5,
          shift = {
            1.21875,
            1.0625
          },
          width = 70,
          x = 140,
          y = 0
        }
      },
      {
        blue_led_light_offset = {
          -1.3125,
          0.640625
        },
        connector_main = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
          height = 50,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.09375,
            0.78125
          },
          width = 52,
          x = 0,
          y = 0
        },
        led_blue = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
          height = 60,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.09375,
            0.75
          },
          width = 60,
          x = 0,
          y = 0
        },
        led_blue_off = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04f-blue-LED-off-sequence.png",
          height = 44,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.09375,
            0.75
          },
          width = 46,
          x = 0,
          y = 0
        },
        led_green = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04h-green-LED-sequence.png",
          height = 46,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.09375,
            0.75
          },
          width = 48,
          x = 0,
          y = 0
        },
        led_light = {
          intensity = 0,
          size = 0.9
        },
        led_red = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04i-red-LED-sequence.png",
          height = 46,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.09375,
            0.75
          },
          width = 48,
          x = 0,
          y = 0
        },
        red_green_led_light_offset = {
          -1.15625,
          0.640625
        },
        wire_pins = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
          height = 58,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.09375,
            0.75
          },
          width = 62,
          x = 0,
          y = 0
        },
        wire_pins_shadow = {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04d-wire-shadow-sequence.png",
          height = 54,
          priority = "low",
          scale = 0.5,
          shift = {
            -0.9375,
            0.875
          },
          width = 70,
          x = 0,
          y = 0
        }
      },
      {
        blue_led_light_offset = {
          -1.078125,
          0.859375
        },
        connector_main = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
          height = 50,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.0625,
            1.1875
          },
          width = 52,
          x = 312,
          y = 0
        },
        led_blue = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
          height = 60,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.0625,
            1.15625
          },
          width = 60,
          x = 360,
          y = 0
        },
        led_blue_off = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04f-blue-LED-off-sequence.png",
          height = 44,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.0625,
            1.15625
          },
          width = 46,
          x = 276,
          y = 0
        },
        led_green = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04h-green-LED-sequence.png",
          height = 46,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.0625,
            1.15625
          },
          width = 48,
          x = 288,
          y = 0
        },
        led_light = {
          intensity = 0,
          size = 0.9
        },
        led_red = {
          draw_as_glow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04i-red-LED-sequence.png",
          height = 46,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.0625,
            1.15625
          },
          width = 48,
          x = 288,
          y = 0
        },
        red_green_led_light_offset = {
          -1.078125,
          0.984375
        },
        wire_pins = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
          height = 58,
          priority = "low",
          scale = 0.5,
          shift = {
            -1.0625,
            1.15625
          },
          width = 62,
          x = 372,
          y = 0
        },
        wire_pins_shadow = {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04d-wire-shadow-sequence.png",
          height = 54,
          priority = "low",
          scale = 0.5,
          shift = {
            -0.90625,
            1.28125
          },
          width = 70,
          x = 420,
          y = 0
        }
      }
    },
    circuit_wire_connection_points = {
      {
        shadow = {
          green = {
            -0.59375,
            -1.328125
          },
          red = {
            -0.84375,
            -1.34375
          }
        },
        wire = {
          green = {
            -1.078125,
            -1.625
          },
          red = {
            -1.34375,
            -1.625
          }
        }
      },
      {
        shadow = {
          green = {
            1.625,
            1.296875
          },
          red = {
            1.546875,
            1.09375
          }
        },
        wire = {
          green = {
            1.40625,
            1.015625
          },
          red = {
            1.34375,
            0.828125
          }
        }
      },
      {
        shadow = {
          green = {
            -1.21875,
            1.234375
          },
          red = {
            -1,
            1.21875
          }
        },
        wire = {
          green = {
            -1.34375,
            0.953125
          },
          red = {
            -1.109375,
            0.953125
          }
        }
      },
      {
        shadow = {
          green = {
            -1.375,
            1.3125
          },
          red = {
            -1.46875,
            1.5
          }
        },
        wire = {
          green = {
            -1.328125,
            0.828125
          },
          red = {
            -1.40625,
            1.03125
          }
        }
      }
    },
    circuit_wire_max_distance = 9,
    close_sound = {
      {
        filename = "__base__/sound/machine-close.ogg",
        volume = 0.5
      }
    },
    collision_box = {
      {
        -1.25,
        -1.25
      },
      {
        1.25,
        1.25
      }
    },
    corpse = "electric-mining-drill-remnants",
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
    dying_explosion = "electric-mining-drill-explosion",
    energy_source = {
      emissions_per_minute = 67.5,
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "940kW",
    fast_replaceable_group = "electric-mining-drill",
    flags = {
      "placeable-neutral",
      "player-creation"
    },
    graphics_set = {
      animation = {
        east = {
          layers = {
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E.png",
              frame_count = 1,
              height = 94,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E.png",
                frame_count = 1,
                height = 188,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0,
                  -0.125
                },
                tint = {
                  a = 0.3,
                  b = 0.50980392156862742,
                  g = 0,
                  r = 0.29411764705882355
                },
                width = 192
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0,
                -0.125
              },
              tint = 0,
              width = 96
            },
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-output.png",
              frame_count = 5,
              height = 38,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-output.png",
                frame_count = 5,
                height = 74,
                line_length = 5,
                priority = "high",
                scale = 0.5,
                shift = {
                  0.9375,
                  -0.25
                },
                width = 50
              },
              line_length = 5,
              priority = "high",
              shift = {
                0.9375,
                -0.25
              },
              width = 26
            },
            {
              animation_speed = 0.4,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-shadow.png",
              frame_count = 1,
              height = 92,
              hr_version = {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-shadow.png",
                frame_count = 1,
                height = 182,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.3125,
                  0.0625
                },
                width = 222
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0.3125,
                0.0625
              },
              width = 112
            }
          }
        },
        north = {
          layers = {
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N.png",
              frame_count = 1,
              height = 104,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N.png",
                frame_count = 1,
                height = 208,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0,
                  -0.125
                },
                tint = 0,
                width = 190
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0,
                -0.125
              },
              tint = 0,
              width = 96
            },
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-output.png",
              frame_count = 5,
              height = 34,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-output.png",
                frame_count = 5,
                height = 66,
                line_length = 5,
                priority = "high",
                scale = 0.5,
                shift = {
                  -0.09375,
                  -1.375
                },
                width = 60
              },
              line_length = 5,
              priority = "high",
              shift = {
                -0.125,
                -1.375
              },
              width = 32
            },
            {
              animation_speed = 0.4,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-shadow.png",
              frame_count = 1,
              height = 104,
              hr_version = {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-shadow.png",
                frame_count = 1,
                height = 204,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.1875,
                  -0.09375
                },
                width = 212
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0.1875,
                -0.125
              },
              width = 106
            }
          }
        },
        south = {
          layers = {
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S.png",
              frame_count = 1,
              height = 98,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S.png",
                frame_count = 1,
                height = 192,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0,
                  -0.03125
                },
                tint = 0,
                width = 184
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0,
                -0.0625
              },
              tint = 0,
              width = 92
            },
            {
              animation_speed = 0.4,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-shadow.png",
              frame_count = 1,
              height = 102,
              hr_version = {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-shadow.png",
                frame_count = 1,
                height = 204,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.1875,
                  0.0625
                },
                width = 212
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0.1875,
                0.0625
              },
              width = 106
            }
          }
        },
        west = {
          layers = {
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W.png",
              frame_count = 1,
              height = 94,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W.png",
                frame_count = 1,
                height = 188,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0,
                  -0.125
                },
                tint = 0,
                width = 192
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0,
                -0.125
              },
              tint = 0,
              width = 96
            },
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-output.png",
              frame_count = 5,
              height = 28,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-output.png",
                frame_count = 5,
                height = 60,
                line_length = 5,
                priority = "high",
                scale = 0.5,
                shift = {
                  -0.96875,
                  -0.40625
                },
                width = 50
              },
              line_length = 5,
              priority = "high",
              shift = {
                -0.9375,
                -0.375
              },
              width = 24
            },
            {
              animation_speed = 0.4,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-shadow.png",
              frame_count = 1,
              height = 92,
              hr_version = {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-shadow.png",
                frame_count = 1,
                height = 182,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  -0.15625,
                  0.0625
                },
                width = 200
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                -0.1875,
                0.0625
              },
              width = 102
            }
          }
        }
      },
      animation_progress = 1,
      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = {
        east = 30,
        north = 14,
        south = 30,
        west = 30
      },
      drilling_vertical_movement_duration = 25,
      max_animation_progress = 30,
      min_animation_progress = 0,
      shift_animation_transition_duration = 75,
      shift_animation_waypoint_stop_duration = 487.5,
      shift_animation_waypoints = {
        east = {
          {
            0,
            0
          },
          {
            -0.4,
            0
          },
          {
            -0.1,
            0
          },
          {
            -0.5,
            0
          },
          {
            -0.75,
            0
          },
          {
            -1,
            0
          },
          {
            -0.65,
            0
          },
          {
            -0.3,
            0
          },
          {
            -0.9,
            0
          },
          {
            -0.6,
            0
          },
          {
            -0.3,
            0
          }
        },
        north = {
          {
            0,
            0
          },
          {
            0,
            -0.3
          },
          {
            0,
            0.1
          },
          {
            0,
            0.5
          },
          {
            0,
            0.2
          },
          {
            0,
            -0.1
          },
          {
            0,
            -0.5
          },
          {
            0,
            -0.15
          },
          {
            0,
            0.25
          },
          {
            0,
            0.6
          },
          {
            0,
            0.3
          }
        },
        south = {
          {
            0,
            0
          },
          {
            0,
            -0.4
          },
          {
            0,
            -0.1
          },
          {
            0,
            -0.5
          },
          {
            0,
            -0.75
          },
          {
            0,
            -1
          },
          {
            0,
            -0.65
          },
          {
            0,
            -0.3
          },
          {
            0,
            -0.9
          },
          {
            0,
            -0.6
          },
          {
            0,
            -0.3
          }
        },
        west = {
          {
            0,
            0
          },
          {
            0.4,
            0
          },
          {
            0.1,
            0
          },
          {
            0.5,
            0
          },
          {
            0.75,
            0
          },
          {
            1,
            0
          },
          {
            0.65,
            0
          },
          {
            0.3,
            0
          },
          {
            0.9,
            0
          },
          {
            0.6,
            0
          },
          {
            0.3,
            0
          }
        }
      },
      status_colors = {
        disabled = {
          1,
          1,
          0,
          1
        },
        full_output = {
          1,
          1,
          0,
          1
        },
        idle = {
          1,
          0,
          0,
          1
        },
        insufficient_input = {
          1,
          1,
          0,
          1
        },
        low_power = {
          1,
          1,
          0,
          1
        },
        no_minable_resources = {
          1,
          0,
          0,
          1
        },
        no_power = {
          0,
          0,
          0,
          0
        },
        working = {
          0,
          1,
          0,
          1
        }
      },
      working_visualisations = {
        {
          align_to_waypoint = true,
          animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-smoke.png",
            frame_count = 30,
            height = 38,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-smoke.png",
              frame_count = 30,
              height = 72,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                0,
                0.09375
              },
              width = 48
            },
            line_length = 6,
            priority = "high",
            shift = {
              0,
              0.0625
            },
            width = 24
          },
          apply_tint = "resource-color",
          constant_speed = true,
          east_position = {
            0,
            0
          },
          north_position = {
            0,
            0.25
          },
          south_position = {
            0,
            0.25
          },
          synced_fadeout = true,
          west_position = {
            0,
            0
          }
        },
        {
          apply_tint = "resource-color",
          constant_speed = true,
          fadeout = true,
          north_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-smoke.png",
                frame_count = 10,
                height = 30,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-smoke.png",
                  frame_count = 10,
                  height = 58,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.03125,
                    -1.375
                  },
                  width = 42
                },
                line_length = 5,
                priority = "high",
                shift = {
                  -0.0625,
                  -1.375
                },
                width = 24
              }
            }
          }
        },
        {
          always_draw = true,
          animated_shift = true,
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal.png",
                frame_count = 30,
                frame_sequence = {
                  1,
                  1,
                  1,
                  2,
                  3,
                  4,
                  5,
                  6,
                  7,
                  8,
                  9,
                  10,
                  11,
                  12,
                  13,
                  14,
                  15,
                  16,
                  17,
                  18,
                  19,
                  20,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  21,
                  20,
                  19,
                  18,
                  17,
                  16,
                  15,
                  14,
                  13,
                  12,
                  11,
                  10,
                  9,
                  8,
                  7,
                  6,
                  5,
                  4,
                  3,
                  2,
                  1,
                  1,
                  1
                },
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal.png",
                  frame_count = 30,
                  frame_sequence = 0,
                  height = 160,
                  line_length = 6,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.0625,
                    -0.375
                  },
                  width = 80
                },
                line_length = 6,
                priority = "high",
                shift = {
                  0.0625,
                  -0.375
                },
                width = 40
              },
              {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-shadow.png",
                frame_count = 21,
                frame_sequence = {
                  1,
                  1,
                  1,
                  2,
                  3,
                  4,
                  5,
                  6,
                  7,
                  8,
                  9,
                  10,
                  11,
                  12,
                  13,
                  14,
                  15,
                  16,
                  17,
                  18,
                  19,
                  20,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  20,
                  19,
                  18,
                  17,
                  16,
                  15,
                  14,
                  13,
                  12,
                  11,
                  10,
                  9,
                  8,
                  7,
                  6,
                  5,
                  4,
                  3,
                  2,
                  1,
                  1,
                  1
                },
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal-shadow.png",
                  frame_count = 21,
                  frame_sequence = 0,
                  height = 164,
                  line_length = 7,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    1.03125,
                    0.03125
                  },
                  width = 180
                },
                line_length = 7,
                priority = "high",
                shift = {
                  1,
                  0.0625
                },
                width = 92
              }
            }
          },
          north_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill.png",
                frame_count = 30,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill.png",
                  frame_count = 30,
                  frame_sequence = 0,
                  height = 156,
                  line_length = 6,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.03125,
                    -0.34375
                  },
                  width = 162
                },
                line_length = 6,
                priority = "high",
                shift = {
                  0,
                  -0.375
                },
                width = 84
              },
              {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-shadow.png",
                frame_count = 21,
                frame_sequence = 0,
                height = 26,
                hr_version = {
                  animation_speed = 0.4,
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-shadow.png",
                  frame_count = 21,
                  frame_sequence = 0,
                  height = 56,
                  line_length = 7,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.65625,
                    0.15625
                  },
                  width = 218
                },
                line_length = 7,
                priority = "high",
                shift = {
                  0.625,
                  0.1875
                },
                width = 112
              }
            }
          },
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill.png",
                frame_count = 30,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill.png",
                  frame_count = 30,
                  frame_sequence = 0,
                  height = 156,
                  line_length = 6,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.03125,
                    -0.34375
                  },
                  width = 162
                },
                line_length = 6,
                priority = "high",
                shift = {
                  0,
                  -0.375
                },
                width = 84
              },
              {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-shadow.png",
                frame_count = 21,
                frame_sequence = 0,
                height = 26,
                hr_version = {
                  animation_speed = 0.4,
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-shadow.png",
                  frame_count = 21,
                  frame_sequence = 0,
                  height = 56,
                  line_length = 7,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.65625,
                    0.15625
                  },
                  width = 218
                },
                line_length = 7,
                priority = "high",
                shift = {
                  0.625,
                  0.1875
                },
                width = 112
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal.png",
                frame_count = 30,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal.png",
                  frame_count = 30,
                  frame_sequence = 0,
                  height = 160,
                  line_length = 6,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.0625,
                    -0.375
                  },
                  width = 80
                },
                line_length = 6,
                priority = "high",
                shift = {
                  0.0625,
                  -0.375
                },
                width = 40
              },
              {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-shadow.png",
                frame_count = 21,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal-shadow.png",
                  frame_count = 21,
                  frame_sequence = 0,
                  height = 164,
                  line_length = 7,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    1.03125,
                    0.03125
                  },
                  width = 180
                },
                line_length = 7,
                priority = "high",
                shift = {
                  1,
                  0.0625
                },
                width = 92
              }
            }
          }
        },
        {
          align_to_waypoint = true,
          animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-smoke-front.png",
            frame_count = 30,
            height = 68,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-smoke-front.png",
              frame_count = 30,
              height = 132,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.09375,
                0.28125
              },
              width = 148
            },
            line_length = 6,
            priority = "high",
            shift = {
              -0.125,
              0.25
            },
            width = 76
          },
          apply_tint = "resource-color",
          constant_speed = true,
          east_position = {
            0,
            0
          },
          north_position = {
            0,
            0.25
          },
          south_position = {
            0,
            0.25
          },
          synced_fadeout = true,
          west_position = {
            0,
            0
          }
        },
        {
          apply_tint = "resource-color",
          constant_speed = true,
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-smoke.png",
                frame_count = 10,
                height = 28,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-smoke.png",
                  frame_count = 10,
                  height = 56,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.75,
                    -0.375
                  },
                  width = 46
                },
                line_length = 5,
                priority = "high",
                shift = {
                  0.75,
                  -0.375
                },
                width = 24
              }
            }
          },
          fadeout = true,
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-smoke.png",
                frame_count = 10,
                height = 18,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-smoke.png",
                  frame_count = 10,
                  height = 36,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.0625,
                    0.625
                  },
                  width = 48
                },
                line_length = 5,
                priority = "high",
                shift = {
                  -0.0625,
                  0.625
                },
                width = 24
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-smoke.png",
                frame_count = 10,
                height = 30,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-smoke.png",
                  frame_count = 10,
                  height = 54,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.78125,
                    -0.34375
                  },
                  width = 46
                },
                line_length = 5,
                priority = "high",
                shift = {
                  -0.8125,
                  -0.375
                },
                width = 26
              }
            }
          }
        },
        {
          always_draw = true,
          animated_shift = true,
          east_animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-front.png",
            frame_count = 30,
            frame_sequence = 0,
            height = 76,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal-front.png",
              frame_count = 30,
              frame_sequence = 0,
              height = 154,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.09375,
                0.09375
              },
              width = 66
            },
            line_length = 6,
            priority = "high",
            shift = {
              -0.0625,
              0.125
            },
            width = 32
          },
          west_animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-front.png",
            frame_count = 30,
            frame_sequence = 0,
            height = 76,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal-front.png",
              frame_count = 30,
              frame_sequence = 0,
              height = 154,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.09375,
                0.09375
              },
              width = 66
            },
            line_length = 6,
            priority = "high",
            shift = {
              -0.0625,
              0.125
            },
            width = 32
          }
        },
        {
          always_draw = true,
          east_animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-front.png",
            frame_count = 1,
            height = 74,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-front.png",
              frame_count = 1,
              height = 148,
              line_length = 1,
              priority = "high",
              scale = 0.5,
              shift = {
                0.65625,
                0.3125
              },
              width = 136
            },
            line_length = 1,
            priority = "high",
            shift = {
              0.6875,
              0.3125
            },
            width = 66
          },
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-output.png",
                frame_count = 5,
                height = 28,
                hr_version = {
                  animation_speed = 0.4,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-output.png",
                  frame_count = 5,
                  height = 56,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.03125,
                    1.0625
                  },
                  width = 84
                },
                line_length = 5,
                priority = "high",
                shift = {
                  -0.0625,
                  1.0625
                },
                width = 44
              },
              {
                animation_speed = 0.4,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-front.png",
                frame_count = 1,
                height = 54,
                hr_version = {
                  animation_speed = 0.4,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-front.png",
                  frame_count = 1,
                  height = 104,
                  line_length = 1,
                  priority = "high",
                  repeat_count = 5,
                  scale = 0.5,
                  shift = {
                    0,
                    0.84375
                  },
                  width = 190
                },
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                shift = {
                  0,
                  0.8125
                },
                width = 96
              }
            }
          },
          west_animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-front.png",
            frame_count = 1,
            height = 70,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-front.png",
              frame_count = 1,
              height = 140,
              line_length = 1,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.6875,
                0.375
              },
              width = 134
            },
            line_length = 1,
            priority = "high",
            shift = {
              -0.6875,
              0.375
            },
            width = 68
          }
        },
        {
          always_draw = true,
          apply_tint = "status",
          draw_as_light = true,
          east_animation = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-light.png",
            height = 18,
            hr_version = {
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-light.png",
              height = 34,
              scale = 0.5,
              shift = {
                1.1875,
                -1
              },
              tint = {
                1,
                1,
                1,
                1
              },
              width = 32
            },
            shift = {
              1.1875,
              -1
            },
            tint = 0,
            width = 16
          },
          north_animation = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-light.png",
            height = 16,
            hr_version = {
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-light.png",
              height = 32,
              scale = 0.5,
              shift = {
                0.8125,
                -1.5
              },
              tint = 0,
              width = 32
            },
            shift = {
              0.8125,
              -1.5
            },
            tint = 0,
            width = 16
          },
          south_animation = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-light.png",
            height = 24,
            hr_version = {
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-light.png",
              height = 46,
              scale = 0.5,
              shift = {
                0.8125,
                0.8125
              },
              tint = 0,
              width = 38
            },
            shift = {
              0.8125,
              0.8125
            },
            tint = 0,
            width = 20
          },
          west_animation = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-light.png",
            height = 18,
            hr_version = {
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-light.png",
              height = 34,
              scale = 0.5,
              shift = {
                -1.21875,
                -1
              },
              tint = 0,
              width = 32
            },
            shift = {
              -1.25,
              -1
            },
            tint = 0,
            width = 18
          }
        },
        {
          always_draw = true,
          apply_tint = "status",
          east_position = {
            1.2,
            -1
          },
          light = {
            color = {
              b = 1,
              g = 1,
              r = 1
            },
            intensity = 0.2,
            minimum_darkness = 0.1,
            size = 2
          },
          north_position = {
            0.8,
            -1.5
          },
          south_position = {
            0.8,
            0.8
          },
          west_position = {
            -1.2,
            -1
          }
        }
      }
    },
    icon = "__Krastorio2Assets__/icons/entities/electric-mining-drill.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__Krastorio2Assets__/icons/entities/electric-mining-drill.png",
        tint = 0
      }
    },
    input_fluid_box = {
      base_area = 1,
      base_level = -1,
      height = 2,
      pipe_connections = {
        {
          position = {
            -2,
            0
          }
        },
        {
          position = {
            2,
            0
          }
        },
        {
          position = {
            0,
            2
          }
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
      pipe_picture = {
        east = {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-E.png",
          height = 38,
          hr_version = {
            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-E.png",
            height = 76,
            priority = "extra-high",
            scale = 0.5,
            shift = {
              -0.765625,
              0.03125
            },
            width = 42
          },
          priority = "extra-high",
          shift = {
            -0.78125,
            0.03125
          },
          width = 20
        },
        north = {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-N.png",
          height = 18,
          hr_version = {
            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-N.png",
            height = 38,
            priority = "extra-high",
            scale = 0.5,
            shift = {
              0.0703125,
              0.421875
            },
            width = 71
          },
          priority = "extra-high",
          shift = {
            0.078125,
            0.4375
          },
          width = 35
        },
        south = {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-S.png",
          height = 31,
          hr_version = {
            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-S.png",
            height = 61,
            priority = "extra-high",
            scale = 0.5,
            shift = {
              0,
              -0.9765625
            },
            width = 88
          },
          priority = "extra-high",
          shift = {
            0,
            -0.984375
          },
          width = 44
        },
        west = {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-W.png",
          height = 37,
          hr_version = {
            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-W.png",
            height = 73,
            priority = "extra-high",
            scale = 0.5,
            shift = {
              0.8046875,
              0.0390625
            },
            width = 39
          },
          priority = "extra-high",
          shift = {
            0.796875,
            0.046875
          },
          width = 19
        }
      },
      production_type = "input-output"
    },
    integration_patch = {
      east = {
        animation_speed = 0.4,
        direction_count = 1,
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-integration.png",
        frame_count = 1,
        height = 108,
        hr_version = {
          animation_speed = 0.4,
          direction_count = 1,
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-integration.png",
          frame_count = 1,
          height = 214,
          line_length = 1,
          priority = "high",
          repeat_count = 5,
          scale = 0.5,
          shift = {
            0.09375,
            0.0625
          },
          width = 236
        },
        line_length = 1,
        priority = "high",
        repeat_count = 5,
        shift = {
          0.125,
          0.0625
        },
        width = 116
      },
      north = {
        animation_speed = 0.4,
        direction_count = 1,
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-integration.png",
        frame_count = 1,
        height = 108,
        hr_version = {
          animation_speed = 0.4,
          direction_count = 1,
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-integration.png",
          frame_count = 1,
          height = 218,
          line_length = 1,
          priority = "high",
          repeat_count = 5,
          scale = 0.5,
          shift = {
            -0.03125,
            0.03125
          },
          width = 216
        },
        line_length = 1,
        priority = "high",
        repeat_count = 5,
        shift = {
          -0.0625,
          0.0625
        },
        width = 110
      },
      south = {
        animation_speed = 0.4,
        direction_count = 1,
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-integration.png",
        frame_count = 1,
        height = 114,
        hr_version = {
          animation_speed = 0.4,
          direction_count = 1,
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-integration.png",
          frame_count = 1,
          height = 230,
          line_length = 1,
          priority = "high",
          repeat_count = 5,
          scale = 0.5,
          shift = {
            0,
            0.09375
          },
          width = 214
        },
        line_length = 1,
        priority = "high",
        repeat_count = 5,
        shift = {
          0,
          0.125
        },
        width = 108
      },
      west = {
        animation_speed = 0.4,
        direction_count = 1,
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-integration.png",
        frame_count = 1,
        height = 106,
        hr_version = {
          animation_speed = 0.4,
          direction_count = 1,
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-integration.png",
          frame_count = 1,
          height = 214,
          line_length = 1,
          priority = "high",
          repeat_count = 5,
          scale = 0.5,
          shift = {
            -0.125,
            0.03125
          },
          width = 234
        },
        line_length = 1,
        priority = "high",
        repeat_count = 5,
        shift = {
          -0.125,
          0.0625
        },
        width = 118
      }
    },
    max_health = 300,
    minable = {
      mining_time = 0.3,
      result = "electric-mining-drill-3"
    },
    mining_speed = 3,
    module_specification = {
      module_slots = 3
    },
    monitor_visualization_tint = {
      b = 255,
      g = 173,
      r = 78
    },
    next_upgrade = "kr-electric-mining-drill-mk3",
    open_sound = {
      {
        filename = "__base__/sound/machine-open.ogg",
        volume = 0.5
      }
    },
    radius_visualisation_picture = {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      height = 10,
      width = 10
    },
    resource_categories = {
      "basic-solid"
    },
    resource_searching_radius = 4.4900000000000002,
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
    vector_to_place_result = {
      0,
      -1.85
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
    wet_mining_graphics_set = {
      animation = {
        east = {
          layers = {
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet.png",
              frame_count = 1,
              height = 106,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet.png",
                frame_count = 1,
                height = 208,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  -0.0625,
                  -0.28125
                },
                tint = 0,
                width = 194
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                -0.0625,
                -0.3125
              },
              tint = 0,
              width = 98
            },
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-output.png",
              frame_count = 5,
              height = 38,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-output.png",
                frame_count = 5,
                height = 74,
                line_length = 5,
                priority = "high",
                scale = 0.5,
                shift = {
                  0.9375,
                  -0.25
                },
                width = 50
              },
              line_length = 5,
              priority = "high",
              shift = {
                0.9375,
                -0.25
              },
              width = 26
            },
            {
              animation_speed = 0.4,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-shadow.png",
              frame_count = 1,
              height = 100,
              hr_version = {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-shadow.png",
                frame_count = 1,
                height = 202,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.28125,
                  0.15625
                },
                width = 226
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0.3125,
                0.1875
              },
              width = 112
            }
          }
        },
        north = {
          layers = {
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet.png",
              frame_count = 1,
              height = 100,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet.png",
                frame_count = 1,
                height = 198,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0,
                  -0.21875
                },
                tint = 0,
                width = 190
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0,
                -0.25
              },
              tint = 0,
              width = 96
            },
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-output.png",
              frame_count = 5,
              height = 34,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-output.png",
                frame_count = 5,
                height = 66,
                line_length = 5,
                priority = "high",
                scale = 0.5,
                shift = {
                  -0.09375,
                  -1.375
                },
                width = 60
              },
              line_length = 5,
              priority = "high",
              shift = {
                -0.125,
                -1.375
              },
              width = 32
            },
            {
              animation_speed = 0.4,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-shadow.png",
              frame_count = 1,
              height = 110,
              hr_version = {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-shadow.png",
                frame_count = 1,
                height = 222,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.375,
                  0.03125
                },
                width = 248
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0.375,
                0.0625
              },
              width = 124
            }
          }
        },
        south = {
          layers = {
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet.png",
              frame_count = 1,
              height = 106,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet.png",
                frame_count = 1,
                height = 208,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.03125,
                  -0.15625
                },
                tint = 0,
                width = 192
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0,
                -0.1875
              },
              tint = 0,
              width = 98
            },
            {
              animation_speed = 0.4,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-shadow.png",
              frame_count = 1,
              height = 98,
              hr_version = {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-shadow.png",
                frame_count = 1,
                height = 192,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.375,
                  0.15625
                },
                width = 248
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0.375,
                0.125
              },
              width = 124
            }
          }
        },
        west = {
          layers = {
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet.png",
              frame_count = 1,
              height = 106,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet.png",
                frame_count = 1,
                height = 208,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.03125,
                  -0.28125
                },
                tint = 0,
                width = 194
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0.0625,
                -0.3125
              },
              tint = 0,
              width = 96
            },
            {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-output.png",
              frame_count = 5,
              height = 28,
              hr_version = {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-output.png",
                frame_count = 5,
                height = 60,
                line_length = 5,
                priority = "high",
                scale = 0.5,
                shift = {
                  -0.96875,
                  -0.40625
                },
                width = 50
              },
              line_length = 5,
              priority = "high",
              shift = {
                -0.9375,
                -0.375
              },
              width = 24
            },
            {
              animation_speed = 0.4,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-shadow.png",
              frame_count = 1,
              height = 102,
              hr_version = {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-shadow.png",
                frame_count = 1,
                height = 202,
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                scale = 0.5,
                shift = {
                  0.28125,
                  0.1875
                },
                width = 260
              },
              line_length = 1,
              priority = "high",
              repeat_count = 5,
              shift = {
                0.25,
                0.1875
              },
              width = 132
            }
          }
        }
      },
      animation_progress = 1,
      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = {
        east = 48,
        north = 14,
        south = 48,
        west = 48
      },
      drilling_vertical_movement_duration = 25,
      max_animation_progress = 30,
      min_animation_progress = 0,
      shift_animation_transition_duration = 75,
      shift_animation_waypoint_stop_duration = 487.5,
      shift_animation_waypoints = {
        east = {
          {
            0,
            0
          },
          {
            -0.3,
            0
          },
          {
            0,
            0
          },
          {
            -0.25,
            0
          }
        },
        north = {
          {
            0,
            0
          },
          {
            0,
            -0.4
          },
          {
            0,
            -0.1
          },
          {
            0,
            0.2
          }
        },
        south = {
          {
            0,
            0
          },
          {
            0,
            -0.4
          },
          {
            0,
            -0.7
          },
          {
            0,
            -0.3
          }
        },
        west = {
          {
            0,
            0
          },
          {
            0.3,
            0
          },
          {
            0,
            0
          },
          {
            0.25,
            0
          }
        }
      },
      status_colors = {
        disabled = {
          1,
          1,
          0,
          1
        },
        full_output = {
          1,
          1,
          0,
          1
        },
        idle = {
          1,
          0,
          0,
          1
        },
        insufficient_input = {
          1,
          1,
          0,
          1
        },
        low_power = {
          1,
          1,
          0,
          1
        },
        no_minable_resources = {
          1,
          0,
          0,
          1
        },
        no_power = {
          0,
          0,
          0,
          0
        },
        working = {
          0,
          1,
          0,
          1
        }
      },
      working_visualisations = {
        {
          align_to_waypoint = true,
          animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-smoke.png",
            frame_count = 30,
            height = 38,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-smoke.png",
              frame_count = 30,
              height = 72,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                0,
                0.09375
              },
              width = 48
            },
            line_length = 6,
            priority = "high",
            shift = {
              0,
              0.0625
            },
            width = 24
          },
          apply_tint = "resource-color",
          constant_speed = true,
          east_position = {
            0,
            0
          },
          north_position = {
            0,
            0.25
          },
          south_position = {
            0,
            0.25
          },
          synced_fadeout = true,
          west_position = {
            0,
            0
          }
        },
        {
          apply_tint = "resource-color",
          constant_speed = true,
          fadeout = true,
          north_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-smoke.png",
                frame_count = 10,
                height = 30,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-smoke.png",
                  frame_count = 10,
                  height = 58,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.03125,
                    -1.375
                  },
                  width = 42
                },
                line_length = 5,
                priority = "high",
                shift = {
                  -0.0625,
                  -1.375
                },
                width = 24
              }
            }
          }
        },
        {
          always_draw = true,
          animated_shift = true,
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal.png",
                frame_count = 30,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal.png",
                  frame_count = 30,
                  frame_sequence = 0,
                  height = 160,
                  line_length = 6,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.0625,
                    -0.375
                  },
                  width = 80
                },
                line_length = 6,
                priority = "high",
                shift = {
                  0.0625,
                  -0.375
                },
                width = 40
              },
              {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-shadow.png",
                frame_count = 21,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal-shadow.png",
                  frame_count = 21,
                  frame_sequence = 0,
                  height = 164,
                  line_length = 7,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    1.03125,
                    0.03125
                  },
                  width = 180
                },
                line_length = 7,
                priority = "high",
                shift = {
                  1,
                  0.0625
                },
                width = 92
              }
            }
          },
          north_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill.png",
                frame_count = 30,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill.png",
                  frame_count = 30,
                  frame_sequence = 0,
                  height = 156,
                  line_length = 6,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.03125,
                    -0.34375
                  },
                  width = 162
                },
                line_length = 6,
                priority = "high",
                shift = {
                  0,
                  -0.375
                },
                width = 84
              },
              {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-shadow.png",
                frame_count = 21,
                frame_sequence = 0,
                height = 26,
                hr_version = {
                  animation_speed = 0.4,
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-shadow.png",
                  frame_count = 21,
                  frame_sequence = 0,
                  height = 56,
                  line_length = 7,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.65625,
                    0.15625
                  },
                  width = 218
                },
                line_length = 7,
                priority = "high",
                shift = {
                  0.625,
                  0.1875
                },
                width = 112
              }
            }
          },
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill.png",
                frame_count = 30,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill.png",
                  frame_count = 30,
                  frame_sequence = 0,
                  height = 156,
                  line_length = 6,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.03125,
                    -0.34375
                  },
                  width = 162
                },
                line_length = 6,
                priority = "high",
                shift = {
                  0,
                  -0.375
                },
                width = 84
              },
              {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-shadow.png",
                frame_count = 21,
                frame_sequence = 0,
                height = 26,
                hr_version = {
                  animation_speed = 0.4,
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-shadow.png",
                  frame_count = 21,
                  frame_sequence = 0,
                  height = 56,
                  line_length = 7,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.65625,
                    0.15625
                  },
                  width = 218
                },
                line_length = 7,
                priority = "high",
                shift = {
                  0.625,
                  0.1875
                },
                width = 112
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal.png",
                frame_count = 30,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal.png",
                  frame_count = 30,
                  frame_sequence = 0,
                  height = 160,
                  line_length = 6,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.0625,
                    -0.375
                  },
                  width = 80
                },
                line_length = 6,
                priority = "high",
                shift = {
                  0.0625,
                  -0.375
                },
                width = 40
              },
              {
                animation_speed = 0.4,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-shadow.png",
                frame_count = 21,
                frame_sequence = 0,
                height = 80,
                hr_version = {
                  animation_speed = 0.4,
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal-shadow.png",
                  frame_count = 21,
                  frame_sequence = 0,
                  height = 164,
                  line_length = 7,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    1.03125,
                    0.03125
                  },
                  width = 180
                },
                line_length = 7,
                priority = "high",
                shift = {
                  1,
                  0.0625
                },
                width = 92
              }
            }
          }
        },
        {
          align_to_waypoint = true,
          animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-smoke-front.png",
            frame_count = 30,
            height = 68,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-smoke-front.png",
              frame_count = 30,
              height = 132,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.09375,
                0.28125
              },
              width = 148
            },
            line_length = 6,
            priority = "high",
            shift = {
              -0.125,
              0.25
            },
            width = 76
          },
          apply_tint = "resource-color",
          constant_speed = true,
          synced_fadeout = true
        },
        {
          apply_tint = "resource-color",
          constant_speed = true,
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-smoke.png",
                frame_count = 10,
                height = 28,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-smoke.png",
                  frame_count = 10,
                  height = 56,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.75,
                    -0.375
                  },
                  width = 46
                },
                line_length = 5,
                priority = "high",
                shift = {
                  0.75,
                  -0.375
                },
                width = 24
              }
            }
          },
          fadeout = true,
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-smoke.png",
                frame_count = 10,
                height = 18,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-smoke.png",
                  frame_count = 10,
                  height = 36,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.0625,
                    0.625
                  },
                  width = 48
                },
                line_length = 5,
                priority = "high",
                shift = {
                  -0.0625,
                  0.625
                },
                width = 24
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-smoke.png",
                frame_count = 10,
                height = 30,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-smoke.png",
                  frame_count = 10,
                  height = 54,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.78125,
                    -0.34375
                  },
                  width = 46
                },
                line_length = 5,
                priority = "high",
                shift = {
                  -0.8125,
                  -0.375
                },
                width = 26
              }
            }
          }
        },
        {
          always_draw = true,
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-window-background.png",
                frame_count = 1,
                height = 8,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-window-background.png",
                  frame_count = 1,
                  height = 14,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -1.625
                  },
                  width = 22
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -1.625
                },
                width = 12
              }
            }
          },
          secondary_draw_order = -49,
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-window-background.png",
                frame_count = 1,
                height = 12,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-window-background.png",
                  frame_count = 1,
                  height = 20,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.0625,
                    -1.34375
                  },
                  width = 30
                },
                line_length = 1,
                priority = "high",
                shift = {
                  -0.0625,
                  -1.375
                },
                width = 16
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-window-background.png",
                frame_count = 1,
                height = 8,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-window-background.png",
                  frame_count = 1,
                  height = 14,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -1.625
                  },
                  width = 22
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -1.625
                },
                width = 12
              }
            }
          }
        },
        {
          always_draw = true,
          apply_tint = "input-fluid-base-color",
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-background.png",
                frame_count = 1,
                height = 8,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-fluid-background.png",
                  frame_count = 1,
                  height = 14,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -1.625
                  },
                  width = 22
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -1.625
                },
                width = 12
              }
            }
          },
          secondary_draw_order = -48,
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-background.png",
                frame_count = 1,
                height = 8,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-fluid-background.png",
                  frame_count = 1,
                  height = 18,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.0625,
                    -1.34375
                  },
                  width = 28
                },
                line_length = 1,
                priority = "high",
                shift = {
                  -0.0625,
                  -1.3125
                },
                width = 14
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-background.png",
                frame_count = 1,
                height = 8,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-fluid-background.png",
                  frame_count = 1,
                  height = 14,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -1.625
                  },
                  width = 22
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -1.625
                },
                width = 12
              }
            }
          }
        },
        {
          always_draw = true,
          apply_tint = "input-fluid-flow-color",
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-flow.png",
                frame_count = 1,
                height = 8,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-fluid-flow.png",
                  frame_count = 1,
                  height = 14,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -1.625
                  },
                  width = 24
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -1.625
                },
                width = 12
              }
            }
          },
          secondary_draw_order = -47,
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-flow.png",
                frame_count = 1,
                height = 8,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-fluid-flow.png",
                  frame_count = 1,
                  height = 16,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.0625,
                    -1.3125
                  },
                  width = 26
                },
                line_length = 1,
                priority = "high",
                shift = {
                  -0.0625,
                  -1.3125
                },
                width = 14
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-flow.png",
                frame_count = 1,
                height = 8,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-fluid-flow.png",
                  frame_count = 1,
                  height = 14,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -1.625
                  },
                  width = 24
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -1.625
                },
                width = 12
              }
            }
          }
        },
        {
          always_draw = true,
          animated_shift = true,
          east_animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-front.png",
            frame_count = 30,
            frame_sequence = 0,
            height = 76,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal-front.png",
              frame_count = 30,
              frame_sequence = 0,
              height = 154,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.09375,
                0.09375
              },
              width = 66
            },
            line_length = 6,
            priority = "high",
            shift = {
              -0.0625,
              0.125
            },
            width = 32
          },
          west_animation = {
            animation_speed = 0.4,
            direction_count = 1,
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-front.png",
            frame_count = 30,
            frame_sequence = 0,
            height = 76,
            hr_version = {
              animation_speed = 0.4,
              direction_count = 1,
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-horizontal-front.png",
              frame_count = 30,
              frame_sequence = 0,
              height = 154,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.09375,
                0.09375
              },
              width = 66
            },
            line_length = 6,
            priority = "high",
            shift = {
              -0.0625,
              0.125
            },
            width = 32
          }
        },
        {
          always_draw = true,
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-window-background-front.png",
                frame_count = 1,
                height = 54,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-window-background-front.png",
                  frame_count = 1,
                  height = 110,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.46875,
                    0.28125
                  },
                  width = 82
                },
                line_length = 1,
                priority = "high",
                shift = {
                  -0.4375,
                  0.3125
                },
                width = 40
              }
            }
          },
          north_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-window-background.png",
                frame_count = 1,
                height = 44,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-window-background.png",
                  frame_count = 1,
                  height = 90,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    0.28125
                  },
                  width = 172
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  0.3125
                },
                width = 86
              }
            }
          },
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-window-background-front.png",
                frame_count = 1,
                height = 14,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-window-background-front.png",
                  frame_count = 1,
                  height = 22,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -0.21875
                  },
                  width = 172
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -0.25
                },
                width = 86
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-window-background-front.png",
                frame_count = 1,
                height = 54,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-window-background-front.png",
                  frame_count = 1,
                  height = 106,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.4375,
                    0.3125
                  },
                  width = 80
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0.4375,
                  0.3125
                },
                width = 40
              }
            }
          }
        },
        {
          always_draw = true,
          apply_tint = "input-fluid-base-color",
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-background-front.png",
                frame_count = 1,
                height = 54,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-fluid-background-front.png",
                  frame_count = 1,
                  height = 106,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.46875,
                    0.3125
                  },
                  width = 82
                },
                line_length = 1,
                priority = "high",
                shift = {
                  -0.4375,
                  0.3125
                },
                width = 40
              }
            }
          },
          north_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-fluid-background.png",
                frame_count = 1,
                height = 46,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-fluid-background.png",
                  frame_count = 1,
                  height = 94,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    0.28125
                  },
                  width = 178
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  0.3125
                },
                width = 90
              }
            }
          },
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-background-front.png",
                frame_count = 1,
                height = 16,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-fluid-background-front.png",
                  frame_count = 1,
                  height = 28,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -0.21875
                  },
                  width = 178
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -0.25
                },
                width = 90
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-background-front.png",
                frame_count = 1,
                height = 54,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-fluid-background-front.png",
                  frame_count = 1,
                  height = 102,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.4375,
                    0.34375
                  },
                  width = 80
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0.4375,
                  0.3125
                },
                width = 40
              }
            }
          }
        },
        {
          always_draw = true,
          apply_tint = "input-fluid-flow-color",
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-flow-front.png",
                frame_count = 1,
                height = 54,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-fluid-flow-front.png",
                  frame_count = 1,
                  height = 106,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.4375,
                    0.3125
                  },
                  width = 78
                },
                line_length = 1,
                priority = "high",
                shift = {
                  -0.4375,
                  0.3125
                },
                width = 40
              }
            }
          },
          north_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-fluid-flow.png",
                frame_count = 1,
                height = 44,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-fluid-flow.png",
                  frame_count = 1,
                  height = 88,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    0.3125
                  },
                  width = 172
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  0.3125
                },
                width = 86
              }
            }
          },
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-flow-front.png",
                frame_count = 1,
                height = 12,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-fluid-flow-front.png",
                  frame_count = 1,
                  height = 22,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    -0.25
                  },
                  width = 172
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  -0.25
                },
                width = 86
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-flow-front.png",
                frame_count = 1,
                height = 50,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-fluid-flow-front.png",
                  frame_count = 1,
                  height = 102,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.4375,
                    0.34375
                  },
                  width = 78
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0.4375,
                  0.375
                },
                width = 40
              }
            }
          }
        },
        {
          always_draw = true,
          east_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-front.png",
                frame_count = 1,
                height = 76,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-front.png",
                  frame_count = 1,
                  height = 148,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0.09375,
                    0.34375
                  },
                  width = 208
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0.0625,
                  0.3125
                },
                width = 106
              }
            }
          },
          north_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-front.png",
                frame_count = 1,
                height = 66,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-front.png",
                  frame_count = 1,
                  height = 130,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    0,
                    0.5
                  },
                  width = 200
                },
                line_length = 1,
                priority = "high",
                shift = {
                  0,
                  0.5
                },
                width = 100
              }
            }
          },
          south_animation = {
            layers = {
              {
                animation_speed = 0.4,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-output.png",
                frame_count = 5,
                height = 28,
                hr_version = {
                  animation_speed = 0.4,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-output.png",
                  frame_count = 5,
                  height = 56,
                  line_length = 5,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.03125,
                    1.0625
                  },
                  width = 84
                },
                line_length = 5,
                priority = "high",
                shift = {
                  -0.0625,
                  1.0625
                },
                width = 44
              },
              {
                animation_speed = 0.4,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-front.png",
                frame_count = 1,
                height = 70,
                hr_version = {
                  animation_speed = 0.4,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-front.png",
                  frame_count = 1,
                  height = 140,
                  line_length = 1,
                  priority = "high",
                  repeat_count = 5,
                  scale = 0.5,
                  shift = {
                    0,
                    0.5625
                  },
                  width = 192
                },
                line_length = 1,
                priority = "high",
                repeat_count = 5,
                shift = {
                  0,
                  0.5625
                },
                width = 96
              }
            }
          },
          west_animation = {
            layers = {
              {
                animation_speed = 0.4,
                direction_count = 1,
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-front.png",
                frame_count = 1,
                height = 72,
                hr_version = {
                  animation_speed = 0.4,
                  direction_count = 1,
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-front.png",
                  frame_count = 1,
                  height = 144,
                  line_length = 1,
                  priority = "high",
                  scale = 0.5,
                  shift = {
                    -0.125,
                    0.375
                  },
                  width = 208
                },
                line_length = 1,
                priority = "high",
                shift = {
                  -0.125,
                  0.375
                },
                width = 104
              }
            }
          }
        },
        {
          always_draw = true,
          apply_tint = "status",
          draw_as_light = true,
          east_animation = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-light.png",
            height = 18,
            hr_version = {
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-light.png",
              height = 34,
              scale = 0.5,
              shift = {
                1.1875,
                -1
              },
              tint = {
                1,
                1,
                1,
                1
              },
              width = 32
            },
            shift = {
              1.1875,
              -1
            },
            tint = 0,
            width = 16
          },
          north_animation = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-light.png",
            height = 16,
            hr_version = {
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-light.png",
              height = 32,
              scale = 0.5,
              shift = {
                0.8125,
                -1.5
              },
              tint = 0,
              width = 32
            },
            shift = {
              0.8125,
              -1.5
            },
            tint = 0,
            width = 16
          },
          south_animation = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-light.png",
            height = 24,
            hr_version = {
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-light.png",
              height = 46,
              scale = 0.5,
              shift = {
                0.8125,
                0.8125
              },
              tint = 0,
              width = 38
            },
            shift = {
              0.8125,
              0.8125
            },
            tint = 0,
            width = 20
          },
          west_animation = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-light.png",
            height = 18,
            hr_version = {
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-light.png",
              height = 34,
              scale = 0.5,
              shift = {
                -1.21875,
                -1
              },
              tint = 0,
              width = 32
            },
            shift = {
              -1.25,
              -1
            },
            tint = 0,
            width = 18
          }
        },
        0
      }
    },
    working_sound = {
      audible_distance_modifier = 0.6,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      sound = {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.5
      }
    }
  },
})

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
