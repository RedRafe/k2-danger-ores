local REACH = 20
local RED = {r = 1, g = 0, b = 0}

local function dist(pos1, pos2)
  local x1 = pos1.x or pos1[1]
  local y1 = pos1.y or pos1[2]
  local x2 = pos2.x or pos2[1]
  local y2 = pos2.y or pos2[2]
  return ((x1-x2)^2 + (y1-y2)^2)^0.5
end

local function edit(e)
    local player = game.get_player(e.player_index)
    local item = e.item
    if not player then return end
    if not (e.item == "kdo-waterfill") then return end

    local surface = e.surface
    local tiles = e.tiles
    local area = e.area
    local pos = player.position
    local entities = surface.find_entities(area)
    local new_tiles = {}
    local too_far = 0
    local t = 0
    for ___, tile in pairs(tiles) do
      if dist(tile.position, pos) <= REACH then
        if (tile.name and tile.name == "landfill") or (tile.hidden_tiile and tile.hidden_tile == "landfill") then
          t = t + 1
          new_tiles[t] = { name = "water", position = tile.position }
        end
      else
        too_far = too_far + 1
      end
    end

    if #entities > 0 then
      player.create_local_flying_text({
        color = RED,
        create_at_cursor = true,
        position = pos,
        text = {"text.waterfill:entities"},
      })
      player.play_sound({ path = "utility/cannot_build" })
    elseif t == 0 and too_far == 0 then
      player.create_local_flying_text({
        color = RED,
        create_at_cursor = true,
        position = pos,
        text = {"text.waterfill:not_here"}
      })
      player.play_sound({ path = "utility/cannot_build" })
    elseif t == 0 and too_far > 0 then
      player.create_local_flying_text({
        color = RED,
        create_at_cursor = true,
        position = pos,
        text = {"text.waterfill:cannot_reach"},
      })
      player.play_sound({ path = "utility/cannot_build" })
    else
      surface.set_tiles(new_tiles)
    end


end

--=================================================================================================

---@type ScriptLib
local Waterfill = {}

Waterfill.events = {
  [defines.events.on_player_selected_area] = edit,
  [defines.events.on_player_alt_selected_area] = edit,
}

return Waterfill