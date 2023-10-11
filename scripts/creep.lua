-- Credits to Krastorio2 mod
-- calling the interface unfortunately didn't work well in scenarios
-- source: https://github.com/raiguard/Krastorio2/blob/master/scripts/creep.lua 

local SCAN_LIMIT = 1

--- @param entities LuaEntity[]
local function generate_creep(entities)
  local surface = entities[1].surface
  local radius = math.random(5, 7)
  local to_add = {}
  local i = 0
  for _, entity in pairs(entities) do
    for _, tile in pairs(surface.find_tiles_filtered({ position = entity.position, radius = radius })) do
      if not tile.collides_with("player-layer") then
        i = i + 1
        to_add[i] = { name = "kr-creep", position = tile.position }
      end
    end
  end
  surface.set_tiles(to_add)
end

local function setup()
  global.chunk = global.chunk or {}
  global.queue = global.queue or {}
end

local function on_nth_tick()
  for x, _gq in pairs(global.queue) do
    for y, i_surface in pairs(_gq) do
      local area = { left_top = { x=32*x, y=32*y }, right_bottom = { x=32*x+32, y=32*y+32} }
      local entities = game.get_surface(i_surface).find_entities_filtered({ type = { "unit-spawner" }, area = area, force = "enemy" })
      for _, entity in pairs(entities) do
        if entity.valid then
          generate_creep({ entity })
        end
      end
      global.queue[x][y] = nil
      global.chunk[x] = global.chunk[x] or {}
      global.chunk[x][y] = (global.chunk[x][y] or 0) + 1
    end
  end
end

--- @param chunk_area BoundingBox
--- @param position ChunkPosition 
--- @param surface_index uint
local function on_chunk_charted(e)
  local position = e.position
  if not position then error() end
  local x, y = position.x or position[1], position.y or position[2]

  if (global.chunk[x] and global.chunk[x][y] and (global.chunk[x][y] > SCAN_LIMIT)) then return 
  elseif (global.queue[x] and global.queue[x][y]) then return 
  else 
    global.queue[x] = global.queue[x] or {}
    global.queue[x][y] = e.surface_index
  end
end

--=================================================================================================

---@type ScriptLib
local Creep = {}

Creep.on_init = setup
Creep.on_load = setup

Creep.on_nth_tick = { 
  [60] = on_nth_tick
}

Creep.events = {
  [defines.events.on_chunk_charted] = on_chunk_charted
}

return Creep