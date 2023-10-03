local lib = {}

-- ADD a prerequisite to a given technology
function lib.add_prerequisite(tech_name, prerequisite)
  local technology = data.raw.technology[tech_name]
  for _, name in pairs(technology.prerequisites) do
    if name == prerequisite then
      return
    end
  end
  table.insert(technology.prerequisites, prerequisite)
end

-- REPLACE a prerequisite with another
function lib.replace_prerequisite(tech_name, old, new)
  lib.remove_prerequisite(tech_name, old)
  lib.add_prerequisite(tech_name, new)
end

-- REMOVE a prerequisite from a given tech
function lib.remove_prerequisite(tech_name, prerequisite)
  local technology = data.raw.technology[tech_name]
  if not technology then error(tech_name) end
  for i, name in pairs(technology.prerequisites or {}) do
    if name == prerequisite then
      table.remove(technology.prerequisites, i)
    end
  end
end

-- ADD science pack to a given tech
function lib.add_research_ingredient(tech_name, ingredient)
  local technology = data.raw.technology[tech_name]
  for _, name in pairs(technology.unit.ingredients) do
    if name[1] == ingredient then
      return
    end
  end
  table.insert(technology.unit.ingredients, {ingredient, 1})
end

-- REPLACE a science pack with another
function lib.replace_research_ingredient(tech_name, old, new)
  lib.remove_research_ingredient(tech_name, old)
  lib.add_research_ingredient(tech_name, new)
end

-- REMOVE science pack to a given tech
function lib.remove_research_ingredient(tech_name, ingredient)
  local technology = data.raw.technology[tech_name]
  for i, name in pairs(technology.unit.ingredients) do
    if name[1] == ingredient then
      table.remove(technology.unit.ingredients, i)
    end
  end
end

-- ADD an effect to a given technology
function lib.add_effect(technology_name, effect)
  local technology = data.raw.technology[technology_name]
  if technology then
    if not technology.effects then technology.effects = {} end
    if effect and effect.type == "unlock-recipe" then
      if not data.raw.recipe[effect.recipe] then
        return
      end
      table.insert(technology.effects, effect)
    end
  end
end

-- ADD an effect to a given technology to unlock recipe
function lib.add_unlock(technology_name, recipe)
  lib.add_effect(technology_name, {type="unlock-recipe", recipe=recipe})
end

-- REMOVE recipe unlock effect from a given technology, multiple times if necessary
function lib.remove_recipe_effect(technology_name, recipe_name)
  local technology = data.raw.technology[technology_name]
  local index = -1
  local cnt = 0
  if technology and technology.effects then
      for i, effect in pairs(technology.effects) do
          if effect.type == "unlock-recipe" and effect.recipe == recipe_name then
              index = i
              cnt = cnt + 1
          end
      end
      if index > -1 then
          table.remove(technology.effects, index)
          if cnt > 1 then -- not over yet, do it again
              lib.remove_recipe_effect(technology_name, recipe_name)
          end
      end
  end
end

-- REMOVE all instances of unlocks for a given recipe
function lib.remove_all_recipe_effects(recipe_name)
  for name, _ in pairs(data.raw.technology) do
      lib.remove_recipe_effect(name, recipe_name)
  end
end

-- MOVE an unlock from a technology to another
function lib.move_recipe_unlock(recipe_name, old, new)
  lib.remove_recipe_effect(old, recipe_name)
  lib.add_unlock(new, recipe_name)
end

-- ADD recipe to productivity whitelisted limitations
function lib.whitelist_productivity(recipe_name)
  for _, module in pairs(data.raw.module) do
    if module.category == "productivity" and module.limitation then
      table.insert(module.limitation, recipe_name)
    end
  end
end

-- ADD a given quantity of ingredient to target recipe
function lib.add_ingredient(recipe_name, ingredient, quantity)
  local is_fluid = not not data.raw.fluid[ingredient]
  if data.raw.recipe[recipe_name] and (data.raw.item[ingredient] or is_fluid) then
    add_ingredient(data.raw.recipe[recipe_name], ingredient, quantity, is_fluid)
    add_ingredient(data.raw.recipe[recipe_name].normal, ingredient, quantity, is_fluid)
    add_ingredient(data.raw.recipe[recipe_name].expensive, ingredient, quantity, is_fluid)
  end
end

-- REPLACE one ingredient with another in a recipe
--    Use amount to set an amount. If that amount is a multiplier instead of an exact amount, set multiply true.
function lib.replace_ingredient(recipe_name, old, new, amount, multiply)
  if data.raw.recipe[recipe_name] and (data.raw.item[new] or data.raw.fluid[new]) then
    replace_ingredient(data.raw.recipe[recipe_name], old, new, amount, multiply)
    replace_ingredient(data.raw.recipe[recipe_name].normal, old, new, amount, multiply)
    replace_ingredient(data.raw.recipe[recipe_name].expensive, old, new, amount, multiply)
  end
end

-- REMOVE an ingredient from a recipe
function lib.remove_ingredient(recipe_name, old)
  if data.raw.recipe[recipe_name] then
    remove_ingredient(data.raw.recipe[recipe_name], old)
    remove_ingredient(data.raw.recipe[recipe_name].normal, old)
    remove_ingredient(data.raw.recipe[recipe_name].expensive, old)
  end
end

--=================================================================================================

function add_ingredient(recipe, ingredient, quantity, is_fluid)
  if recipe ~= nil and recipe.ingredients ~= nil then
    for i, existing in pairs(recipe.ingredients) do
      if existing[1] == ingredient or existing.name == ingredient then
        return
      end
    end
    if is_fluid then
      table.insert(recipe.ingredients, {type="fluid", name=ingredient, amount=quantity})
    else
      table.insert(recipe.ingredients, {ingredient, quantity})
    end
  end
end

function replace_ingredient(recipe, old, new, amount, multiply)
	if recipe ~= nil and recipe.ingredients ~= nil then
    for i, existing in pairs(recipe.ingredients) do
      if existing[1] == new or existing.name == new then
        return
      end
    end
		for i, ingredient in pairs(recipe.ingredients) do 
			if ingredient.name == old then 
        ingredient.name = new 
        if amount then
          if multiply then
            ingredient.amount = amount * ingredient.amount
          else
            ingredient.amount = amount
          end
        end
      end
			if ingredient[1] == old then 
        ingredient[1] = new
        if amount then
          if multiply then
            ingredient[2] = amount * ingredient[2]
          else
            ingredient[2] = amount
          end
        end
      end
		end
	end
end

function remove_ingredient(recipe, old)
  index = -1
	if recipe ~= nil and recipe.ingredients ~= nil then
		for i, ingredient in pairs(recipe.ingredients) do 
      if ingredient.name == old or ingredient[1] == old then
        index = i
        break
      end
    end
    if index > -1 then
      table.remove(recipe.ingredients, index)
    end
  end
end

--=================================================================================================

return lib
