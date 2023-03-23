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
	local chaingunner_modified = table.deepcopy(base)

	if chaingunner_modified.ingredients then 
		replace_ingredient(chaingunner_modified, "iron-gear-wheel", "ei_iron-mechanical-parts", 6) 
		replace_ingredient(chaingunner_modified, "iron-plate", "ei_iron-beam", 16)
	end
	if chaingunner_modified.normal then
		replace_ingredient(chaingunner_modified.normal, "iron-gear-wheel", "ei_iron-mechanical-parts", 6) 
		replace_ingredient(chaingunner_modified.normal, "iron-plate", "ei_iron-beam", 16)
	end
	if chaingunner_modified.expensive then
		replace_ingredient(chaingunner_modified.expensive, "iron-gear-wheel", "ei_iron-mechanical-parts", 8) 
		replace_ingredient(chaingunner_modified.expensive, "iron-plate", "ei_iron-beam", 20)
	end

	data:extend({
		chaingunner_modified
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
	local hauler_modified = table.deepcopy(base)

	if hauler_modified.ingredients then 
		replace_ingredient(hauler_modified, "iron-gear-wheel", "ei_iron-mechanical-parts", 6) 
		replace_ingredient(hauler_modified, "iron-plate", "ei_iron-beam", 20)
	end
	if hauler_modified.normal then
		replace_ingredient(hauler_modified.normal, "iron-gear-wheel", "ei_iron-mechanical-parts", 6) 
		replace_ingredient(hauler_modified.normal, "iron-plate", "ei_iron-beam", 20)
	end
	if hauler_modified.expensive then
		replace_ingredient(hauler_modified.expensive, "iron-gear-wheel", "ei_iron-mechanical-parts", 6) 
		replace_ingredient(hauler_modified.expensive, "iron-plate", "ei_iron-beam", 20)
	end

	data:extend({
		hauler_modified
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
if data.raw.recipe["vehicle-warden"] then0
	local base = data.raw.recipe["vehicle-warden"]
	local warden_modified = table.deepcopy(base)

	if warden_modified.ingredients then 
		replace_ingredient(warden_modified, "iron-gear-wheel", "engine-unit", 8) 
		replace_ingredient(warden_modified, "iron-plate", "ei_iron-mechanical-parts", 20)
	end
	if warden_modified.normal then
		replace_ingredient(warden_modified.normal, "iron-gear-wheel", "engine-unit", 8) 
		replace_ingredient(warden_modified.normal, "iron-plate", "ei_iron-mechanical-parts", 20)
	end
	if warden_modified.expensive then
		replace_ingredient(warden_modified.expensive, "iron-gear-wheel", "engine-unit", 8) 
		replace_ingredient(warden_modified.expensive, "iron-plate", "ei_iron-mechanical-parts", 30)
	end

	data:extend({
		warden_modified
	})
end

if data.raw.recipe["reverse-factory-1"] then
	local base = data.raw.recipe["reverse-factory-1"]
	local reverse1_modified = table.deepcopy(base)

	if reverse1_modified.ingredients then 
		replace_ingredient(reverse1_modified, "iron-gear-wheel", "ei_iron-mechanical-parts", 5) 
	end
	if reverse1_modified.normal then
		replace_ingredient(reverse1_modified.normal, "iron-gear-wheel", "ei_iron-mechanical-parts", 5) 
	end
	if reverse1_modified.expensive then
		replace_ingredient(reverse1_modified.expensive, "iron-gear-wheel", "ei_iron-mechanical-parts", 8) 
	end

	data:extend({
		reverse1_modified
	})
end
if data.raw.recipe["reverse-factory-2"] then
	local base = data.raw.recipe["reverse-factory-2"]
	local reverse2_modified = table.deepcopy(base)

	if reverse2_modified.ingredients then 
		replace_ingredient(reverse2_modified, "iron-gear-wheel", "ei_iron-mechanical-parts", 5) 
	end
	if reverse2_modified.normal then
		replace_ingredient(reverse2_modified.normal, "iron-gear-wheel", "ei_iron-mechanical-parts", 5) 
	end
	if reverse2_modified.expensive then
		replace_ingredient(reverse2_modified.expensive, "iron-gear-wheel", "ei_iron-mechanical-parts", 8) 
	end

	data:extend({
		reverse2_modified
	})
end
