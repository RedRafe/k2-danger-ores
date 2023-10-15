if not settings.startup['k2-danger-ores:tiered_entities'].value then return end

--=================================================================================================

local am3 = KDO.config["chemical-plant"]
local am4 = KDO.config["chemical-plant-2"]
local am3 = KDO.config["oil-refinery"]
local am4 = KDO.config["oil-refinery-2"]
local am3 = KDO.config["oil-refinery"]
local am4 = KDO.config["chemical-plant-2"]

data:extend({
  -- Item
  {
    name = "chemical-plant-2",
    type = "item",
    icon = "__base__/graphics/icons/chemical-plant.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/chemical-plant.png",
        tint = {
          a = 0.8,
          b = 0.81568627450980387,
          g = 0.64313725490196081,
          r = 0.019607843137254902
        }
      }
    },
    order = "e[chemical-plant]",
    place_result = "chemical-plant-2",
    stack_size = 10,
    subgroup = "production-machine",
  },
  -- Recipe
  {
    name = "chemical-plant-2",
    type = "recipe",
    enabled = false,
    energy_required = 5,
    ingredients = {
      {
        "chemical-plant",
        2
      },
      {
        "engine-unit",
        10
      },
      {
        "processing-unit",
        5
      },
      {
        "pipe",
        50
      }
    },
    result = "chemical-plant-2",
  },
  -- Entity
  {
    name = "chemical-plant-2",
    type = "assembling-machine",
    allowed_effects = {
      "consumption",
      "speed",
      "productivity",
      "pollution"
    },
    animation = {
      east = {
        layers = {
          {
            filename = "__k2-danger-ores__/graphics/entity/chemical-plant-2.png",
            frame_count = 24,
            height = 148,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-chemical-plant-2.png",
              frame_count = 24,
              height = 292,
              line_length = 12,
              priority = "high",
              scale = 0.5,
              shift = {
                0.015625,
                -0.28125
              },
              width = 220,
              x = 0,
              y = 584
            },
            line_length = 12,
            priority = "high",
            scale = 1,
            shift = {
              0.03125,
              -0.28125
            },
            width = 108,
            x = 0,
            y = 296
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
            frame_count = 1,
            height = 112,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
              frame_count = 1,
              height = 222,
              priority = "high",
              repeat_count = 24,
              scale = 0.5,
              shift = {
                0.84375,
                0.1875
              },
              width = 312,
              x = 312,
              y = 0
            },
            priority = "high",
            repeat_count = 24,
            scale = 1,
            shift = {
              0.875,
              0.1875
            },
            width = 154,
            x = 154,
            y = 0
          }
        }
      },
      north = {
        layers = {
          {
            filename = "__k2-danger-ores__/graphics/entity/chemical-plant-2.png",
            frame_count = 24,
            height = 148,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-chemical-plant-2.png",
              frame_count = 24,
              height = 292,
              line_length = 12,
              priority = "high",
              scale = 0.5,
              shift = 0,
              width = 220,
              x = 0,
              y = 0
            },
            line_length = 12,
            priority = "high",
            scale = 1,
            shift = 0,
            width = 108,
            x = 0,
            y = 0
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
            frame_count = 1,
            height = 112,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
              frame_count = 1,
              height = 222,
              priority = "high",
              repeat_count = 24,
              scale = 0.5,
              shift = 0,
              width = 312,
              x = 0,
              y = 0
            },
            priority = "high",
            repeat_count = 24,
            scale = 1,
            shift = 0,
            width = 154,
            x = 0,
            y = 0
          }
        }
      },
      south = {
        layers = {
          {
            filename = "__k2-danger-ores__/graphics/entity/chemical-plant-2.png",
            frame_count = 24,
            height = 148,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-chemical-plant-2.png",
              frame_count = 24,
              height = 292,
              line_length = 12,
              priority = "high",
              scale = 0.5,
              shift = 0,
              width = 220,
              x = 0,
              y = 1168
            },
            line_length = 12,
            priority = "high",
            scale = 1,
            shift = 0,
            width = 108,
            x = 0,
            y = 592
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
            frame_count = 1,
            height = 112,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
              frame_count = 1,
              height = 222,
              priority = "high",
              repeat_count = 24,
              scale = 0.5,
              shift = 0,
              width = 312,
              x = 624,
              y = 0
            },
            priority = "high",
            repeat_count = 24,
            scale = 1,
            shift = 0,
            width = 154,
            x = 308,
            y = 0
          }
        }
      },
      west = {
        layers = {
          {
            filename = "__k2-danger-ores__/graphics/entity/chemical-plant-2.png",
            frame_count = 24,
            height = 148,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-chemical-plant-2.png",
              frame_count = 24,
              height = 292,
              line_length = 12,
              priority = "high",
              scale = 0.5,
              shift = 0,
              width = 220,
              x = 0,
              y = 1752
            },
            line_length = 12,
            priority = "high",
            scale = 1,
            shift = 0,
            width = 108,
            x = 0,
            y = 888
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
            frame_count = 1,
            height = 112,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
              frame_count = 1,
              height = 222,
              priority = "high",
              repeat_count = 24,
              scale = 0.5,
              shift = 0,
              width = 312,
              x = 936,
              y = 0
            },
            priority = "high",
            repeat_count = 24,
            scale = 1,
            shift = 0,
            width = 154,
            x = 462,
            y = 0
          }
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
    corpse = "chemical-plant-remnants",
    crafting_categories = {
      "chemistry"
    },
    crafting_speed = 2,
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
    drawing_box = {
      {
        -1.5,
        -1.9
      },
      {
        1.5,
        1.5
      }
    },
    dying_explosion = "chemical-plant-explosion",
    energy_source = {
      emissions_per_minute = 10,
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "420kW",
    fast_replaceable_group = "chemical-plant",
    flags = {
      "placeable-neutral",
      "placeable-player",
      "player-creation"
    },
    fluid_boxes = {
      {
        base_area = 10,
        base_level = -1,
        pipe_connections = {
          {
            position = {
              -1,
              -2
            },
            type = "input"
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
        production_type = "input"
      },
      {
        base_area = 10,
        base_level = -1,
        pipe_connections = {
          {
            position = {
              1,
              -2
            },
            type = "input"
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
        production_type = "input"
      },
      {
        base_level = 1,
        pipe_connections = {
          {
            position = {
              -1,
              2
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
      {
        base_level = 1,
        pipe_connections = {
          {
            position = {
              1,
              2
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
      }
    },
    icon = "__base__/graphics/icons/chemical-plant.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/chemical-plant.png",
        tint = {
          a = 0.8,
          b = 0.81568627450980387,
          g = 0.64313725490196081,
          r = 0.019607843137254902
        }
      }
    },
    max_health = 300,
    minable = {
      mining_time = 0.2,
      result = "chemical-plant-2"
    },
    module_specification = {
      module_info_max_icons_per_row = 5,
      module_slots = 5
    },
    open_sound = {
      {
        filename = "__base__/sound/machine-open.ogg",
        volume = 0.5
      }
    },
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
      orientation_to_variation = true,
      pictures = {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-reflection.png",
        height = 36,
        priority = "extra-high",
        scale = 5,
        shift = {
          0.15625,
          1.875
        },
        variation_count = 4,
        width = 28
      },
      rotate = false
    },
    working_sound = {
      apparent_volume = 1.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      sound = {
        {
          filename = "__base__/sound/chemical-plant-1.ogg",
          volume = 0.5
        },
        {
          filename = "__base__/sound/chemical-plant-2.ogg",
          volume = 0.5
        },
        {
          filename = "__base__/sound/chemical-plant-3.ogg",
          volume = 0.5
        }
      }
    },
    working_visualisations = {
      {
        apply_recipe_tint = "primary",
        east_animation = {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-east.png",
          frame_count = 24,
          height = 18,
          hr_version = {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-east.png",
            frame_count = 24,
            height = 36,
            line_length = 6,
            scale = 0.5,
            shift = {
              0,
              0.6875
            },
            width = 70
          },
          line_length = 6,
          shift = {
            0,
            0.6875
          },
          width = 36
        },
        north_animation = {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-north.png",
          frame_count = 24,
          height = 24,
          hr_version = {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-north.png",
            frame_count = 24,
            height = 44,
            line_length = 6,
            scale = 0.5,
            shift = {
              0.71875,
              0.46875
            },
            width = 66
          },
          line_length = 6,
          shift = {
            0.75,
            0.4375
          },
          width = 32
        },
        south_animation = {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-south.png",
          frame_count = 24,
          height = 24,
          hr_version = {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-south.png",
            frame_count = 24,
            height = 42,
            line_length = 6,
            scale = 0.5,
            shift = {
              0,
              0.53125
            },
            width = 66
          },
          line_length = 6,
          shift = {
            0,
            0.5
          },
          width = 34
        },
        west_animation = {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-west.png",
          frame_count = 24,
          height = 20,
          hr_version = {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-west.png",
            frame_count = 24,
            height = 36,
            line_length = 6,
            scale = 0.5,
            shift = {
              -0.3125,
              0.40625
            },
            width = 74
          },
          line_length = 6,
          shift = {
            -0.3125,
            0.375
          },
          width = 38
        }
      },
      {
        apply_recipe_tint = "secondary",
        east_animation = {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-east.png",
          frame_count = 24,
          height = 18,
          hr_version = {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-east.png",
            frame_count = 24,
            height = 36,
            line_length = 6,
            scale = 0.5,
            shift = {
              0,
              0.6875
            },
            width = 68
          },
          line_length = 6,
          shift = {
            0,
            0.6875
          },
          width = 34
        },
        north_animation = {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-north.png",
          frame_count = 24,
          height = 22,
          hr_version = {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-north.png",
            frame_count = 24,
            height = 42,
            line_length = 6,
            scale = 0.5,
            shift = {
              0.75,
              0.46875
            },
            width = 62
          },
          line_length = 6,
          shift = {
            0.75,
            0.4375
          },
          width = 32
        },
        south_animation = {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-south.png",
          frame_count = 24,
          height = 18,
          hr_version = {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-south.png",
            frame_count = 24,
            height = 40,
            line_length = 6,
            scale = 0.5,
            shift = {
              0.03125,
              0.53125
            },
            width = 60
          },
          line_length = 6,
          shift = {
            0,
            0.5625
          },
          width = 32
        },
        west_animation = {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-west.png",
          frame_count = 24,
          height = 16,
          hr_version = {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-west.png",
            frame_count = 24,
            height = 28,
            line_length = 6,
            scale = 0.5,
            shift = {
              -0.28125,
              0.46875
            },
            width = 68
          },
          line_length = 6,
          shift = {
            -0.3125,
            0.4375
          },
          width = 36
        }
      },
      {
        animation = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-outer.png",
          frame_count = 47,
          height = 94,
          hr_version = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-smoke-outer.png",
            frame_count = 47,
            height = 188,
            line_length = 16,
            scale = 0.5,
            shift = {
              -0.0625,
              -1.25
            },
            width = 90
          },
          line_length = 16,
          shift = {
            -0.0625,
            -1.25
          },
          width = 46
        },
        apply_recipe_tint = "tertiary",
        constant_speed = true,
        east_position = {
          0.453125,
          -2.34375
        },
        fadeout = true,
        north_position = {
          -0.46875,
          -2.515625
        },
        render_layer = "wires",
        south_position = {
          0.1875,
          -2.09375
        },
        west_position = {
          -0.5,
          -2.03125
        }
      },
      {
        animation = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-inner.png",
          frame_count = 47,
          height = 42,
          hr_version = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-smoke-inner.png",
            frame_count = 47,
            height = 84,
            line_length = 16,
            scale = 0.5,
            shift = {
              0,
              -0.4375
            },
            width = 40
          },
          line_length = 16,
          shift = {
            0,
            -0.4375
          },
          width = 20
        },
        apply_recipe_tint = "quaternary",
        constant_speed = true,
        east_position = {
          0.453125,
          -2.34375
        },
        fadeout = true,
        north_position = {
          -0.46875,
          -2.515625
        },
        render_layer = "wires",
        south_position = {
          0.1875,
          -2.09375
        },
        west_position = {
          -0.5,
          -2.03125
        }
      }
    }
  },
})

local cp2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local cp2_item = table.deepcopy(data.raw["item"]["chemical-plant"])
cp2_item.name = "chemical-plant-2"
cp2_item.icons = {{icon = cp2_item.icon, tint = cp2_tint}}
cp2_item.place_result = "chemical-plant-2"

local cp2 = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
cp2.name = "chemical-plant-2"
cp2.minable = {mining_time = 0.2, result = "chemical-plant-2"}
cp2.crafting_speed = 2
cp2.energy_usage = "420kW"
cp2.module_specification = {module_slots = 5, module_info_max_icons_per_row = 5}
cp2.fast_replaceable_group = "chemical-plant"
cp2.icons = {{icon = cp2_item.icon, tint = cp2_tint}}
cp2.animation.north.layers[1].filename = "__k2-danger-ores__/graphics/entity/chemical-plant-2.png"
cp2.animation.north.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-chemical-plant-2.png"
cp2.animation.east.layers[1].filename = "__k2-danger-ores__/graphics/entity/chemical-plant-2.png"
cp2.animation.east.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-chemical-plant-2.png"
cp2.animation.south.layers[1].filename = "__k2-danger-ores__/graphics/entity/chemical-plant-2.png"
cp2.animation.south.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-chemical-plant-2.png"
cp2.animation.west.layers[1].filename = "__k2-danger-ores__/graphics/entity/chemical-plant-2.png"
cp2.animation.west.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-chemical-plant-2.png"
cp2.energy_source.emissions_per_minute = cp2.energy_source.emissions_per_minute  * 2.5

local cp2_recipe = {
    type = "recipe",
    name = "chemical-plant-2",
    ingredients = {
        {"chemical-plant", 2},
        {"engine-unit", 10},
        {"processing-unit", 5},
        {"pipe", 50}
    },
    result = "chemical-plant-2",
    enabled = false,
    energy_required = 5
}

data.raw["assembling-machine"]["chemical-plant"].next_upgrade = "chemical-plant-2"
data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "chemical-plant"

data.raw["assembling-machine"]["kr-advanced-chemical-plant"].module_specification = {module_slots = 6}

data:extend{cp2_item, cp2, cp2_recipe}

KDO.add_ingredient("kr-advanced-chemical-plant", "chemical-plant-2", 2)

--=================================================================================================

data:extend({
  -- Item
  {
    name = "oil-refinery-2",
    type = "item",
    icon = "__base__/graphics/icons/oil-refinery.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        tint = {
          a = 0.8,
          b = 0.81568627450980387,
          g = 0.64313725490196081,
          r = 0.019607843137254902
        }
      }
    },
    order = "d[refinery]",
    place_result = "oil-refinery-2",
    stack_size = 10,
    subgroup = "production-machine",
  },
  -- Recipe
  {
    name = "oil-refinery-2",
    type = "recipe",
    enabled = false,
    energy_required = 8,
    ingredients = {
      {
        "oil-refinery",
        2
      },
      {
        "engine-unit",
        10
      },
      {
        "processing-unit",
        5
      },
      {
        "pipe-to-ground",
        10
      },
      {
        "refined-concrete",
        100
      }
    },
    result = "oil-refinery-2",
  },
  -- Entity
  {
    name = "oil-refinery-2",
    type = "assembling-machine",
    allowed_effects = {
      "consumption",
      "speed",
      "productivity",
      "pollution"
    },
    animation = {
      east = {
        layers = {
          {
            filename = "__k2-danger-ores__/graphics/entity/oil-refinery-2.png",
            frame_count = 1,
            height = 255,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-2.png",
              frame_count = 1,
              height = 430,
              priority = "high",
              scale = 0.5,
              shift = {
                0,
                -0.234375
              },
              width = 386,
              x = 386,
              y = 0
            },
            priority = "high",
            scale = 1,
            shift = {
              2.515625,
              0.484375
            },
            width = 337,
            x = 337,
            y = 0
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
            frame_count = 1,
            height = 213,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
              force_hr_shadow = true,
              frame_count = 1,
              height = 426,
              priority = "high",
              scale = 0.5,
              shift = {
                2.578125,
                0.828125
              },
              width = 674,
              x = 674,
              y = 0
            },
            priority = "high",
            scale = 1,
            shift = {
              2.578125,
              0.828125
            },
            width = 337,
            x = 337,
            y = 0
          }
        }
      },
      north = {
        layers = {
          {
            filename = "__k2-danger-ores__/graphics/entity/oil-refinery-2.png",
            frame_count = 1,
            height = 255,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-2.png",
              frame_count = 1,
              height = 430,
              priority = "high",
              scale = 0.5,
              shift = 0,
              width = 386,
              x = 0,
              y = 0
            },
            priority = "high",
            scale = 1,
            shift = 0,
            width = 337,
            x = 0,
            y = 0
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
            frame_count = 1,
            height = 213,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
              force_hr_shadow = true,
              frame_count = 1,
              height = 426,
              priority = "high",
              scale = 0.5,
              shift = 0,
              width = 674,
              x = 0,
              y = 0
            },
            priority = "high",
            scale = 1,
            shift = 0,
            width = 337,
            x = 0,
            y = 0
          }
        }
      },
      south = {
        layers = {
          {
            filename = "__k2-danger-ores__/graphics/entity/oil-refinery-2.png",
            frame_count = 1,
            height = 255,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-2.png",
              frame_count = 1,
              height = 430,
              priority = "high",
              scale = 0.5,
              shift = 0,
              width = 386,
              x = 772,
              y = 0
            },
            priority = "high",
            scale = 1,
            shift = 0,
            width = 337,
            x = 674,
            y = 0
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
            frame_count = 1,
            height = 213,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
              force_hr_shadow = true,
              frame_count = 1,
              height = 426,
              priority = "high",
              scale = 0.5,
              shift = 0,
              width = 674,
              x = 1348,
              y = 0
            },
            priority = "high",
            scale = 1,
            shift = 0,
            width = 337,
            x = 674,
            y = 0
          }
        }
      },
      west = {
        layers = {
          {
            filename = "__k2-danger-ores__/graphics/entity/oil-refinery-2.png",
            frame_count = 1,
            height = 255,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-2.png",
              frame_count = 1,
              height = 430,
              priority = "high",
              scale = 0.5,
              shift = 0,
              width = 386,
              x = 1158,
              y = 0
            },
            priority = "high",
            scale = 1,
            shift = 0,
            width = 337,
            x = 1011,
            y = 0
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
            frame_count = 1,
            height = 213,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
              force_hr_shadow = true,
              frame_count = 1,
              height = 426,
              priority = "high",
              scale = 0.5,
              shift = 0,
              width = 674,
              x = 2022,
              y = 0
            },
            priority = "high",
            scale = 1,
            shift = 0,
            width = 337,
            x = 1011,
            y = 0
          }
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
        -2.25,
        -2.25
      },
      {
        2.25,
        2.25
      }
    },
    corpse = "oil-refinery-remnants",
    crafting_categories = {
      "oil-processing"
    },
    crafting_speed = 2,
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
    drawing_box = {
      {
        -2.5,
        -2.7999999999999998
      },
      {
        2.5,
        2.5
      }
    },
    dying_explosion = "oil-refinery-explosion",
    energy_source = {
      emissions_per_minute = 15,
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "840kW",
    fast_replaceable_group = "oil-refinery",
    flags = {
      "placeable-neutral",
      "player-creation"
    },
    fluid_boxes = {
      {
        base_area = 10,
        base_level = -1,
        pipe_connections = {
          {
            position = {
              -1,
              3
            },
            type = "input"
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
        production_type = "input"
      },
      {
        base_area = 10,
        base_level = -1,
        pipe_connections = {
          {
            position = {
              1,
              3
            },
            type = "input"
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
        production_type = "input"
      },
      {
        base_level = 1,
        pipe_connections = {
          {
            position = {
              -2,
              -3
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
      {
        base_level = 1,
        pipe_connections = {
          {
            position = {
              0,
              -3
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
      {
        base_level = 1,
        pipe_connections = {
          {
            position = {
              2,
              -3
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
      }
    },
    icon = "__base__/graphics/icons/oil-refinery.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
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
      result = "oil-refinery-2"
    },
    module_specification = {
      module_slots = 4
    },
    next_upgrade = "oil-refinery-3",
    open_sound = {
      {
        filename = "__base__/sound/machine-open.ogg",
        volume = 0.5
      }
    },
    scale_entity_info_icon = true,
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
    water_reflection = {
      orientation_to_variation = true,
      pictures = {
        filename = "__base__/graphics/entity/oil-refinery/oil-refinery-reflection.png",
        height = 48,
        priority = "extra-high",
        scale = 5,
        shift = {
          0.15625,
          2.96875
        },
        variation_count = 4,
        width = 40
      },
      rotate = false
    },
    working_sound = {
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      sound = {
        filename = "__base__/sound/oil-refinery.ogg"
      }
    },
    working_visualisations = {
      {
        animation = {
          animation_speed = 0.75,
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          frame_count = 60,
          height = 40,
          hr_version = {
            animation_speed = 0.75,
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            frame_count = 60,
            height = 81,
            line_length = 10,
            scale = 0.5,
            shift = {
              0,
              -0.4453125
            },
            width = 40
          },
          line_length = 10,
          shift = {
            0,
            -0.4375
          },
          width = 20
        },
        constant_speed = true,
        draw_as_light = true,
        east_position = {
          -1.625,
          -1.90625
        },
        fadeout = true,
        north_position = {
          1.0625,
          -2.03125
        },
        south_position = {
          -1.84375,
          -2.5625
        },
        west_position = {
          1.78125,
          -1.8125
        }
      },
      {
        draw_as_light = true,
        east_animation = {
          blend_mode = "additive",
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-light.png",
          height = 104,
          hr_version = {
            blend_mode = "additive",
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-light.png",
            height = 205,
            scale = 0.5,
            shift = {
              -0.03125,
              -1.5625
            },
            width = 321,
            x = 321
          },
          shift = {
            -0.0625,
            -1.5625
          },
          width = 163,
          x = 163
        },
        fadeout = true,
        north_animation = {
          blend_mode = "additive",
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-light.png",
          height = 104,
          hr_version = {
            blend_mode = "additive",
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-light.png",
            height = 205,
            scale = 0.5,
            shift = {
              -0.03125,
              -1.5625
            },
            width = 321
          },
          shift = {
            -0.0625,
            -1.5625
          },
          width = 163
        },
        south_animation = {
          blend_mode = "additive",
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-light.png",
          height = 104,
          hr_version = {
            blend_mode = "additive",
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-light.png",
            height = 205,
            scale = 0.5,
            shift = {
              -0.03125,
              -1.5625
            },
            width = 321,
            x = 642
          },
          shift = {
            -0.0625,
            -1.5625
          },
          width = 163,
          x = 326
        },
        west_animation = {
          blend_mode = "additive",
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-light.png",
          height = 104,
          hr_version = {
            blend_mode = "additive",
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-light.png",
            height = 205,
            scale = 0.5,
            shift = {
              -0.03125,
              -1.5625
            },
            width = 321,
            x = 963
          },
          shift = {
            -0.0625,
            -1.5625
          },
          width = 163,
          x = 489
        }
      }
    }
  },
})

local or2_tint = {r = 5 / 255, g = 164 / 255, b = 208 / 255, a = 0.8}

local or2_item = table.deepcopy(data.raw["item"]["oil-refinery"])
or2_item.name = "oil-refinery-2"
or2_item.icons = {{icon = or2_item.icon, tint = or2_tint}}
or2_item.place_result = "oil-refinery-2"

local or2 = table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
or2.name = "oil-refinery-2"
or2.minable = {mining_time = 0.2, result = "oil-refinery-2"}
or2.crafting_speed = 2
or2.energy_usage = "840kW"
or2.module_specification = {module_slots = 4}
or2.fast_replaceable_group = "oil-refinery"
or2.icons = {{icon = or2_item.icon, tint = or2_tint}}
or2.animation.north.layers[1].filename = "__k2-danger-ores__/graphics/entity/oil-refinery-2.png"
or2.animation.north.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-2.png"
or2.animation.east.layers[1].filename = "__k2-danger-ores__/graphics/entity/oil-refinery-2.png"
or2.animation.east.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-2.png"
or2.animation.south.layers[1].filename = "__k2-danger-ores__/graphics/entity/oil-refinery-2.png"
or2.animation.south.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-2.png"
or2.animation.west.layers[1].filename = "__k2-danger-ores__/graphics/entity/oil-refinery-2.png"
or2.animation.west.layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-2.png"
or2.next_upgrade =  "oil-refinery-3"
or2.energy_source.emissions_per_minute = or2.energy_source.emissions_per_minute * 2.5

local or2_recipe = {
    type = "recipe",
    name = "oil-refinery-2",
    ingredients = {
        {"oil-refinery", 2},
        {"engine-unit", 10},
        {"processing-unit", 5},
        {"pipe-to-ground", 10},
        {"refined-concrete", 100}
    },
    result = "oil-refinery-2",
    enabled = false,
    energy_required = 8
}

data.raw["assembling-machine"]["oil-refinery"].next_upgrade = "oil-refinery-2"
data.raw["assembling-machine"]["oil-refinery"].fast_replaceable_group = "oil-refinery"

data:extend{or2_item, or2, or2_recipe}

--=================================================================================================

data:extend({
  -- Item
  {
    name = "oil-refinery-3",
    type = "item",
    icon = "__base__/graphics/icons/oil-refinery.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        tint = {
          a = 0.8,
          b = 0.50980392156862742,
          g = 0,
          r = 0.29411764705882355
        }
      }
    },
    order = "d[refinery]",
    place_result = "oil-refinery-3",
    stack_size = 10,
    subgroup = "production-machine",
  },
  -- Recipe
  {
    type = "recipe",
    name = "oil-refinery-3",
    enabled = false,
    energy_required = 8,
    ingredients = {
      {
        "oil-refinery-2",
        2
      },
      {
        "processing-unit",
        20
      },
      {
        "imersium-beam",
        20
      },
      {
        "rare-metals",
        80
      },
      {
        "energy-control-unit",
        10
      },
      {
        "imersium-gear-wheel",
        20
      },
      {
        "kr-steel-pipe",
        10
      }
    },
    result = "oil-refinery-3",
  },
  -- Entity
  {
    name = "oil-refinery-3",
    type = "assembling-machine",
    allowed_effects = {
      "consumption",
      "speed",
      "productivity",
      "pollution"
    },
    animation = {
      east = {
        layers = {
          {
            filename = "__k2-danger-ores__/graphics/entity/oil-refinery-3.png",
            frame_count = 1,
            height = 255,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-3.png",
              frame_count = 1,
              height = 430,
              priority = "high",
              scale = 0.5,
              shift = {
                0,
                -0.234375
              },
              width = 386,
              x = 386,
              y = 0
            },
            priority = "high",
            scale = 1,
            shift = {
              2.515625,
              0.484375
            },
            width = 337,
            x = 337,
            y = 0
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
            frame_count = 1,
            height = 213,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
              force_hr_shadow = true,
              frame_count = 1,
              height = 426,
              priority = "high",
              scale = 0.5,
              shift = {
                2.578125,
                0.828125
              },
              width = 674,
              x = 674,
              y = 0
            },
            priority = "high",
            scale = 1,
            shift = {
              2.578125,
              0.828125
            },
            width = 337,
            x = 337,
            y = 0
          }
        }
      },
      north = {
        layers = {
          {
            filename = "__k2-danger-ores__/graphics/entity/oil-refinery-3.png",
            frame_count = 1,
            height = 255,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-3.png",
              frame_count = 1,
              height = 430,
              priority = "high",
              scale = 0.5,
              shift = 0,
              width = 386,
              x = 0,
              y = 0
            },
            priority = "high",
            scale = 1,
            shift = 0,
            width = 337,
            x = 0,
            y = 0
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
            frame_count = 1,
            height = 213,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
              force_hr_shadow = true,
              frame_count = 1,
              height = 426,
              priority = "high",
              scale = 0.5,
              shift = 0,
              width = 674,
              x = 0,
              y = 0
            },
            priority = "high",
            scale = 1,
            shift = 0,
            width = 337,
            x = 0,
            y = 0
          }
        }
      },
      south = {
        layers = {
          {
            filename = "__k2-danger-ores__/graphics/entity/oil-refinery-3.png",
            frame_count = 1,
            height = 255,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-3.png",
              frame_count = 1,
              height = 430,
              priority = "high",
              scale = 0.5,
              shift = 0,
              width = 386,
              x = 772,
              y = 0
            },
            priority = "high",
            scale = 1,
            shift = 0,
            width = 337,
            x = 674,
            y = 0
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
            frame_count = 1,
            height = 213,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
              force_hr_shadow = true,
              frame_count = 1,
              height = 426,
              priority = "high",
              scale = 0.5,
              shift = 0,
              width = 674,
              x = 1348,
              y = 0
            },
            priority = "high",
            scale = 1,
            shift = 0,
            width = 337,
            x = 674,
            y = 0
          }
        }
      },
      west = {
        layers = {
          {
            filename = "__k2-danger-ores__/graphics/entity/oil-refinery-3.png",
            frame_count = 1,
            height = 255,
            hr_version = {
              filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-3.png",
              frame_count = 1,
              height = 430,
              priority = "high",
              scale = 0.5,
              shift = 0,
              width = 386,
              x = 1158,
              y = 0
            },
            priority = "high",
            scale = 1,
            shift = 0,
            width = 337,
            x = 1011,
            y = 0
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
            frame_count = 1,
            height = 213,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
              force_hr_shadow = true,
              frame_count = 1,
              height = 426,
              priority = "high",
              scale = 0.5,
              shift = 0,
              width = 674,
              x = 2022,
              y = 0
            },
            priority = "high",
            scale = 1,
            shift = 0,
            width = 337,
            x = 1011,
            y = 0
          }
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
        -2.25,
        -2.25
      },
      {
        2.25,
        2.25
      }
    },
    corpse = "oil-refinery-remnants",
    crafting_categories = {
      "oil-processing"
    },
    crafting_speed = 8,
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
    drawing_box = {
      {
        -2.5,
        -2.7999999999999998
      },
      {
        2.5,
        2.5
      }
    },
    dying_explosion = "oil-refinery-explosion",
    energy_source = {
      emissions_per_minute = 60,
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "1600kW",
    fast_replaceable_group = "oil-refinery",
    flags = {
      "placeable-neutral",
      "player-creation"
    },
    fluid_boxes = {
      {
        base_area = 10,
        base_level = -1,
        pipe_connections = {
          {
            position = {
              -1,
              3
            },
            type = "input"
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
        production_type = "input"
      },
      {
        base_area = 10,
        base_level = -1,
        pipe_connections = {
          {
            position = {
              1,
              3
            },
            type = "input"
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
        production_type = "input"
      },
      {
        base_level = 1,
        pipe_connections = {
          {
            position = {
              -2,
              -3
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
      {
        base_level = 1,
        pipe_connections = {
          {
            position = {
              0,
              -3
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
      {
        base_level = 1,
        pipe_connections = {
          {
            position = {
              2,
              -3
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
      }
    },
    icon = "__base__/graphics/icons/oil-refinery.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        tint = {
          a = 0.8,
          b = 0.50980392156862742,
          g = 0,
          r = 0.29411764705882355
        }
      }
    },
    max_health = 350,
    minable = {
      mining_time = 0.2,
      result = "oil-refinery-3"
    },
    module_specification = {
      module_slots = 6
    },
    next_upgrade = "oil-refinery-2",
    open_sound = {
      {
        filename = "__base__/sound/machine-open.ogg",
        volume = 0.5
      }
    },
    scale_entity_info_icon = true,
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
    water_reflection = {
      orientation_to_variation = true,
      pictures = {
        filename = "__base__/graphics/entity/oil-refinery/oil-refinery-reflection.png",
        height = 48,
        priority = "extra-high",
        scale = 5,
        shift = {
          0.15625,
          2.96875
        },
        variation_count = 4,
        width = 40
      },
      rotate = false
    },
    working_sound = {
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      sound = {
        filename = "__base__/sound/oil-refinery.ogg"
      }
    },
    working_visualisations = {
      {
        animation = {
          animation_speed = 0.75,
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          frame_count = 60,
          height = 40,
          hr_version = {
            animation_speed = 0.75,
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            frame_count = 60,
            height = 81,
            line_length = 10,
            scale = 0.5,
            shift = {
              0,
              -0.4453125
            },
            width = 40
          },
          line_length = 10,
          shift = {
            0,
            -0.4375
          },
          width = 20
        },
        constant_speed = true,
        draw_as_light = true,
        east_position = {
          -1.625,
          -1.90625
        },
        fadeout = true,
        north_position = {
          1.0625,
          -2.03125
        },
        south_position = {
          -1.84375,
          -2.5625
        },
        west_position = {
          1.78125,
          -1.8125
        }
      },
      {
        draw_as_light = true,
        east_animation = {
          blend_mode = "additive",
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-light.png",
          height = 104,
          hr_version = {
            blend_mode = "additive",
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-light.png",
            height = 205,
            scale = 0.5,
            shift = {
              -0.03125,
              -1.5625
            },
            width = 321,
            x = 321
          },
          shift = {
            -0.0625,
            -1.5625
          },
          width = 163,
          x = 163
        },
        fadeout = true,
        north_animation = {
          blend_mode = "additive",
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-light.png",
          height = 104,
          hr_version = {
            blend_mode = "additive",
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-light.png",
            height = 205,
            scale = 0.5,
            shift = {
              -0.03125,
              -1.5625
            },
            width = 321
          },
          shift = {
            -0.0625,
            -1.5625
          },
          width = 163
        },
        south_animation = {
          blend_mode = "additive",
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-light.png",
          height = 104,
          hr_version = {
            blend_mode = "additive",
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-light.png",
            height = 205,
            scale = 0.5,
            shift = {
              -0.03125,
              -1.5625
            },
            width = 321,
            x = 642
          },
          shift = {
            -0.0625,
            -1.5625
          },
          width = 163,
          x = 326
        },
        west_animation = {
          blend_mode = "additive",
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-light.png",
          height = 104,
          hr_version = {
            blend_mode = "additive",
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-light.png",
            height = 205,
            scale = 0.5,
            shift = {
              -0.03125,
              -1.5625
            },
            width = 321,
            x = 963
          },
          shift = {
            -0.0625,
            -1.5625
          },
          width = 163,
          x = 489
        }
      }
    }
  },
})

local or3_tint = {r = 75 / 255, g = 0 / 255, b = 130 / 255, a = 0.8}

local or3_item = table.deepcopy(data.raw["item"]["oil-refinery"])
or3_item.name = "oil-refinery-3"
or3_item.icons = {{icon = or3_item.icon, tint = or3_tint}}
or3_item.place_result = "oil-refinery-3"

local or3 = table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
or3.name = "oil-refinery-3"
or3.minable = {mining_time = 0.2, result = "oil-refinery-3"}
or3.crafting_speed = 8
or3.energy_usage = "1600kW"
or3.module_specification = {module_slots = 6}
or3.fast_replaceable_group = "oil-refinery"
or3.icons = {{icon = or3_item.icon, tint = or3_tint}}
or3.energy_source.emissions_per_minute = or3.energy_source.emissions_per_minute * 10
for ___, dir in pairs({"north", "west", "east", "south"}) do
    or3.animation[dir].layers[1].filename = "__k2-danger-ores__/graphics/entity/oil-refinery-3.png"
    or3.animation[dir].layers[1].hr_version.filename = "__k2-danger-ores__/graphics/entity/hr-oil-refinery-3.png"
end

local or3_recipe = {
    type = "recipe",
    name = "oil-refinery-3",
    ingredients = 
    {
        { "oil-refinery-2", 2 },
        { "processing-unit", 20 },
        { "imersium-beam", 20 },
        { "rare-metals", 80 },
        { "energy-control-unit", 10 },
        { "imersium-gear-wheel", 20 },
        { "kr-steel-pipe", 10 },
    },
    result = "oil-refinery-3",
    enabled = false,
    energy_required = 8
}

data:extend{or3_item, or3, or3_recipe}

KDO.add_unlock("kr-advanced-chemical-plant", "oil-refinery-3")

--=================================================================================================

data:extend({
  -- Item
  {
    name = "kr-electrolysis-plant-2",
    type = "item",
    icon = "__Krastorio2Assets__/icons/entities/electrolysis-plant.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__Krastorio2Assets__/icons/entities/electrolysis-plant.png",
        tint = {
          a = 0.8,
          b = 0.50980392156862742,
          g = 0,
          r = 0.29411764705882355
        }
      }
    },
    order = "e-a1[electrolysis-plant]",
    place_result = "kr-electrolysis-plant-2",
    stack_size = 50,
    subgroup = "production-machine",
  },
  -- Recipe
  {
    name = "kr-electrolysis-plant-2",
    type = "recipe",
    enabled = false,
    energy_required = 8,
    ingredients = {
      {
        "kr-electrolysis-plant",
        4
      },
      {
        "glass",
        120
      },
      {
        "processing-unit",
        20
      },
      {
        "rare-metals",
        80
      },
      {
        "imersium-gear-wheel",
        20
      },
      {
        "kr-steel-pipe",
        20
      }
    },
    result = "kr-electrolysis-plant-2",
  },
  -- Entity
  {
    name = "kr-electrolysis-plant-2",
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
          filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant.png",
          frame_count = 1,
          height = 190,
          hr_version = {
            filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant.png",
            frame_count = 1,
            height = 380,
            scale = 0.5,
            shift = {
              0,
              0
            },
            tint = {
              a = 0.8,
              b = 0.50980392156862742,
              g = 0,
              r = 0.29411764705882355
            },
            width = 380
          },
          shift = {
            0,
            0
          },
          tint = 0,
          width = 190
        },
        {
          draw_as_shadow = true,
          filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-sh.png",
          frame_count = 1,
          height = 190,
          hr_version = {
            draw_as_shadow = true,
            filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-sh.png",
            frame_count = 1,
            height = 380,
            scale = 0.5,
            shift = {
              0,
              0
            },
            width = 380
          },
          shift = {
            0,
            0
          },
          width = 190
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
        -2.2999999999999998,
        -2.2999999999999998
      },
      {
        2.2999999999999998,
        2.2999999999999998
      }
    },
    corpse = "kr-medium-random-pipes-remnant",
    crafting_categories = {
      "electrolysis"
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
    dying_explosion = "big-explosion",
    energy_source = {
      emissions_per_minute = 2.5,
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "1940kW",
    fast_replaceable_group = "kr-electrolysis-plant",
    flags = {
      "placeable-neutral",
      "placeable-player",
      "player-creation"
    },
    fluid_boxes = {
      {
        base_area = 10,
        base_level = -1,
        pipe_connections = {
          {
            position = {
              -3,
              -1
            },
            type = "input"
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
            filename = "__Krastorio2Assets__/entities/empty.png",
            height = 1,
            priority = "high",
            scale = 0.5,
            shift = {
              0,
              0
            },
            width = 1
          },
          north = 0,
          south = {
            filename = "__Krastorio2Assets__/entities/pipe-patch/pipe-patch.png",
            height = 25,
            hr_version = {
              filename = "__Krastorio2Assets__/entities/pipe-patch/hr-pipe-patch.png",
              height = 50,
              priority = "high",
              scale = 0.5,
              shift = {
                0.01,
                -0.57999999999999998
              },
              width = 55
            },
            priority = "high",
            shift = {
              0.01,
              -0.57999999999999998
            },
            width = 28
          },
          west = 0
        },
        production_type = "input"
      },
      {
        base_area = 10,
        base_level = -1,
        pipe_connections = {
          {
            position = {
              -3,
              1
            },
            type = "input"
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
        pipe_picture = 0,
        production_type = "input"
      },
      {
        base_area = 10,
        base_level = 1,
        pipe_connections = {
          {
            position = {
              3,
              -1
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
        pipe_picture = 0,
        production_type = "output"
      },
      {
        base_area = 10,
        base_level = 1,
        pipe_connections = {
          {
            position = {
              3,
              1
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
        pipe_picture = 0,
        production_type = "output"
      },
      off_when_no_fluid_recipe = false
    },
    icon = "__Krastorio2Assets__/icons/entities/electrolysis-plant.png",
    icon_mipmaps = 4,
    icon_size = 64,
    icons = {
      {
        icon = "__Krastorio2Assets__/icons/entities/electrolysis-plant.png"
      }
    },
    ingredient_count = 6,
    max_health = 500,
    minable = {
      mining_time = 1,
      result = "kr-electrolysis-plant-2"
    },
    module_specification = {
      module_slots = 4
    },
    open_sound = {
      {
        filename = "__base__/sound/machine-open.ogg",
        volume = 0.5
      }
    },
    resistances = {
      {
        percent = 50,
        type = "physical"
      },
      {
        percent = 50,
        type = "fire"
      },
      {
        percent = 50,
        type = "impact"
      }
    },
    return_ingredients_on_change = true,
    scale_entity_info_icon = false,
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
    squeak_behaviour = false,
    vehicle_impact_sound = {
      filename = "__base__/sound/car-metal-impact.ogg",
      volume = 0.65
    },
    water_reflection = {
      orientation_to_variation = false,
      pictures = {
        filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-reflection.png",
        height = 38,
        priority = "extra-high",
        scale = 5,
        shift = {
          0,
          1.25
        },
        variation_count = 1,
        width = 42
      },
      rotate = false
    },
    working_sound = {
      apparent_volume = 1.5,
      idle_sound = {
        filename = "__base__/sound/idle1.ogg",
        volume = 0.5
      },
      sound = {
        filename = "__Krastorio2Assets__/sounds/buildings/electrolysis-plant.ogg",
        volume = 0.85
      }
    },
    working_visualisations = {
      {
        animation = {
          animation_speed = 0.4,
          blend_mode = "additive",
          draw_as_glow = true,
          filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-work.png",
          frame_count = 12,
          height = 190,
          hr_version = {
            animation_speed = 0.4,
            blend_mode = "additive",
            draw_as_glow = true,
            filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-work.png",
            frame_count = 12,
            height = 380,
            line_length = 6,
            scale = 0.5,
            shift = {
              0,
              0
            },
            width = 380
          },
          line_length = 6,
          shift = {
            0,
            0
          },
          width = 190
        },
        apply_recipe_tint = "primary"
      },
      {
        animation = {
          animation_speed = 0.4,
          draw_as_light = true,
          filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-work-light.png",
          frame_count = 12,
          height = 190,
          hr_version = {
            animation_speed = 0.4,
            draw_as_light = true,
            filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-work-light.png",
            frame_count = 12,
            height = 380,
            line_length = 6,
            scale = 0.5,
            shift = {
              0,
              0
            },
            width = 380
          },
          line_length = 6,
          shift = {
            0,
            0
          },
          width = 190
        },
        apply_recipe_tint = "primary"
      }
    }
  },
})

local el2_tint = {r = 75 / 255, g = 0 / 255, b = 130 / 255, a = 0.8}

local el2_item = table.deepcopy(data.raw["item"]["kr-electrolysis-plant"])
el2_item.name = "kr-electrolysis-plant-2"
el2_item.icons = {{icon = el2_item.icon, tint = el2_tint}}
el2_item.place_result = "kr-electrolysis-plant-2"

local el2 = table.deepcopy(data.raw["assembling-machine"]["kr-electrolysis-plant"])
el2.name = "kr-electrolysis-plant-2"
el2.minable.result = "kr-electrolysis-plant-2"
el2.crafting_speed = el2.crafting_speed * 4
el2.energy_usage = "1940kW"
el2.module_specification = { module_slots = 4 }
el2.fast_replaceable_group = "kr-electrolysis-plant"
el2.icons = {{ icon = el2_item.icon, tint = el2.tint }}
el2.energy_source.emissions_per_minute = el2.energy_source.emissions_per_minute * 5
el2.animation.layers[1].tint = el2_tint
el2.animation.layers[1].hr_version.tint = el2_tint

local el2_recipe = {
    type = "recipe",
    name = "kr-electrolysis-plant-2",
    ingredients = 
    {
        { "kr-electrolysis-plant", 4 },
        { "glass", 120 },
        { "processing-unit", 20 },
        { "rare-metals", 80 },
        { "imersium-gear-wheel", 20 },
        { "kr-steel-pipe", 20 },
    },
    result = "kr-electrolysis-plant-2",
    enabled = false,
    energy_required = 8
}

data:extend{el2_item, el2, el2_recipe}

KDO.add_unlock("kr-advanced-chemical-plant", "kr-electrolysis-plant-2")

data.raw["assembling-machine"]["kr-electrolysis-plant"].fast_replaceable_group = "kr-electrolysis-plant"
data.raw["assembling-machine"]["kr-electrolysis-plant"].next_upgrade = "kr-electrolysis-plant-2"

--=================================================================================================

data:extend({{
    type = "technology",
    name = "oil-processing-2",
    icon_size = 256,
    icon_mipmaps = 4,
    icon = "__base__/graphics/technology/oil-gathering.png",
    prerequisites = {"oil-processing", "production-science-pack"},
    effects = {
        {type = "unlock-recipe", recipe = "chemical-plant-2"},
        {type = "unlock-recipe", recipe = "oil-refinery-2"}
    },
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1}
        },
        time = 60
    },
    order = "d-a"
}})

KDO.add_prerequisite("kr-advanced-chemical-plant", "oil-processing-2")
