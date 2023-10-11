local factory_tiles = {
  "landfill",
  "stone-path",
  "concrete",
  "hazard-concrete-left",
  "hazard-concrete-right",
  "refined-concrete",
  "refined-hazard-concrete-left",
  "refined-hazard-concrete-right",
  "kr-white-reinforced-plate",
  "kr-black-reinforced-plate",
}

data:extend({
  {
    type = "shortcut",
    name = "kdo-waterfill",
    icon = {
      filename = "__k2-danger-ores__/graphics/icons/waterfill.png",
      size = 128,
      mipmap_count = 1,
      flags = { "gui-icon" },
    },
    action = "spawn-item",
    item_to_spawn = "kdo-waterfill",
    associated_control_input = "kdo-waterfill",
    technology_to_unlock = "landfill",
  },
  {
    type = "selection-tool",
    name = "kdo-waterfill",
    icon = kr_icons_path .. "items/jackhammer.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = { "hidden", "not-stackable", "spawnable", "only-in-cursor" },
    stack_size = 1,
    selection_color = { r = 0, g = 1, b = 1 },
    alt_selection_color = { r = 0, g = 1, b = 1 },
    selection_mode = {
      "any-tile",
    },
    alt_selection_mode = {
      "any-tile",
    },
    selection_cursor_box_type = "not-allowed",
    alt_selection_cursor_box_type = "not-allowed",
    always_include_tiles = true,
    show_in_library = false,
    tile_filters = factory_tiles,
    alt_tile_filters = factory_tiles,
    tile_filter_mode = "whitelist",
    alt_tile_filter_mode = "whitelist",
  },
  {
    type = "custom-input",
    name = "kdo-waterfill",
    key_sequence = "SHIFT + ALT + J",
    action = "spawn-item",
    item_to_spawn = "kdo-waterfill",
  },
})