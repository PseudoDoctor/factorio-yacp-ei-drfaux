-- -- replace_ingredient copied from Less_Wood_For_aai_industry_1.0.1 
local function replace_ingredient (recipe, current, new, amount)
	for i, component in pairs(recipe.ingredients) do
		for _, value in pairs(component) do
			if value == current then
				found = true
				recipe.ingredients[i] = {type=item, name=new, amount=amount}
				break
			end
		end
	end
end
-- -- "original" recipe modification if aai_industry is installed
-- if aai_industry then
-- 	data.raw.recipe["vehicle-chaingunner"].normal.ingredients = {
-- 		  {type="item", name="iron-plate", amount=16},
-- 		  {type="item", name="motor", amount=6},
-- 		  {type="item", name="gun-turret", amount=1},
-- 	}
-- 	data.raw.recipe["vehicle-chaingunner"].expensive.ingredients = {
-- 		  {type="item", name="iron-plate", amount=20},
-- 		  {type="item", name="motor", amount=8},
-- 		  {type="item", name="gun-turret", amount=1},
-- 	}
--   end
if data.raw.recipe["vehicle-chaingunner"] then
	local base = data.raw.recipe["vehicle-chaingunner"]
	local iron_version = table.deepcopy(base)

	if iron_version.ingredients then 
		replace_ingredient(iron_version, "iron-gear-wheel", "ei_iron-mechanical-parts", 6) 
		replace_ingredient(iron_version, "iron-plate", "ei_iron-beam", 16)
	end
	if iron_version.normal then
		replace_ingredient(iron_version.normal, "iron-gear-wheel", "ei_iron-mechanical-parts", 6) 
		replace_ingredient(iron_version.normal, "iron-plate", "ei_iron-beam", 16)
	end
	if iron_version.expensive then
		replace_ingredient(iron_version.expensive, "iron-gear-wheel", "ei_iron-mechanical-parts", 8) 
		replace_ingredient(iron_version.expensive, "iron-plate", "ei_iron-beam", 20)
	end

	data:extend({
		iron_version
	})
end
-- -- "original" recipe modification if aai_industry is installed
-- if aai_industry then
-- 	data.raw.recipe["vehicle-hauler"].normal.ingredients = {
-- 		  {type="item", name="iron-plate", amount=20},
-- 		  {type="item", name="motor", amount=6},
-- 		  {type="item", name="iron-chest", amount=5},
-- 	}
-- 	data.raw.recipe["vehicle-hauler"].expensive.ingredients = {
-- 		  {type="item", name="iron-plate", amount=20},
-- 		  {type="item", name="motor", amount=6},
-- 		  {type="item", name="iron-chest", amount=5},
-- 	}
--   end
if data.raw.recipe["vehicle-hauler"] then
	local base = data.raw.recipe["vehicle-hauler"]
	local iron_version = table.deepcopy(base)

	if iron_version.ingredients then 
		replace_ingredient(iron_version, "iron-gear-wheel", "ei_iron-mechanical-parts", 6) 
		replace_ingredient(iron_version, "iron-plate", "ei_iron-beam", 20)
	end
	if iron_version.normal then
		replace_ingredient(iron_version.normal, "iron-gear-wheel", "ei_iron-mechanical-parts", 6) 
		replace_ingredient(iron_version.normal, "iron-plate", "ei_iron-beam", 20)
	end
	if iron_version.expensive then
		replace_ingredient(iron_version.expensive, "iron-gear-wheel", "ei_iron-mechanical-parts", 6) 
		replace_ingredient(iron_version.expensive, "iron-plate", "ei_iron-beam", 20)
	end

	data:extend({
		iron_version
	})
end
-- -- "original" recipe modification if aai_industry is installed
-- if aai_industry then
-- 	data.raw.recipe["vehicle-warden"].normal.ingredients = {
-- 		{type="item", name="iron-plate", amount=20},
-- 		{type="item", name="motor", amount=8},
-- 		{type="item", name="iron-chest", amount=5},
-- 		{type="item", name="electronic-circuit", amount=50},
-- 		{type="item", name="radar", amount=1},
-- 	}
-- 	data.raw.recipe["vehicle-warden"].expensive.ingredients = {
-- 	  {type="item", name="iron-plate", amount=30},
-- 	  {type="item", name="motor", amount=8},
-- 	  {type="item", name="iron-chest", amount=10},
-- 	  {type="item", name="electronic-circuit", amount=100},
-- 	  {type="item", name="radar", amount=1},
-- 	}
--   end
if data.raw.recipe["vehicle-warden"] then
	local base = data.raw.recipe["vehicle-warden"]
	local iron_version = table.deepcopy(base)

	if iron_version.ingredients then 
		replace_ingredient(iron_version, "iron-gear-wheel", "engine-unit", 8) 
		replace_ingredient(iron_version, "iron-plate", "ei_iron-mechanical-parts", 20)
	end
	if iron_version.normal then
		replace_ingredient(iron_version.normal, "iron-gear-wheel", "engine-unit", 8) 
		replace_ingredient(iron_version.normal, "iron-plate", "ei_iron-mechanical-parts", 20)
	end
	if iron_version.expensive then
		replace_ingredient(iron_version.expensive, "iron-gear-wheel", "engine-unit", 8) 
		replace_ingredient(iron_version.expensive, "iron-plate", "ei_iron-mechanical-parts", 30)
	end

	data:extend({
		iron_version
	})
end
