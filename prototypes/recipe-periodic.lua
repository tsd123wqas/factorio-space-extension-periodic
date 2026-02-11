local productionCost = settings.startup["SpaceX-production"].value or 1
local classicMode = settings.startup["SpaceX-classic-mode"].value or false

local function replace_ingredient(ingredients, old, new, new_amount)
	local amount = 0
	if ingredients then
		for i, ingredient in pairs(ingredients) do
			if ingredient then
				if ingredient[1] == old or ingredient.name == old then
					amount = ingredient[2] or ingredient.amount
					table.remove(ingredients, i)
					break
				end
			end
		end
		if new_amount then
			table.insert(ingredients, { type = "item", name = new, amount = new_amount })
		elseif amount ~= 0 then
			table.insert(ingredients, { type = "item", name = new, amount = amount })
		end
	end
end

local function replace(recipe_name, old, new, new_amount)
	local recipe = data.raw["recipe"][recipe_name]
	if recipe then
		for _, diff in pairs({ recipe }) do
			if diff then
				if diff.ingredients then
					replace_ingredient(diff.ingredients, old, new, new_amount)
				end
			end
		end
	end
end
local function insert_ingredient(recipe_name, ingredient, amount)
	local recipe = data.raw["recipe"][recipe_name]
	if recipe then
		for _, diff in pairs({ recipe }) do
			if diff then
				if diff.ingredients then
					table.insert(diff.ingredients, { type = "item", name = ingredient, amount = amount })
				end
			end
		end
	end
end


replace("space-oxygen-tank", "storage-tank", "pm-stainless-steel-storage-tank")
replace("space-oxygen-tank", "pump", "pm-stainless-steel-pump")
replace("space-oxygen-tank", "pipe", "pm-osmium-pipe")
replace("space-oxygen-tank", "space-oxygen-barrel", "pm-argon-gas-barrel")



replace("space-fuel-tank", "storage-tank", "pm-stainless-steel-storage-tank")
replace("space-fuel-tank", "pump", "pm-stainless-steel-pump")
replace("space-fuel-tank", "pipe", "pm-osmium-pipe")
replace("space-fuel-tank", "nuclear-fuel", "pm-polonium-fuel-rod")
replace("space-fuel-tank", "rocket-fuel", "pm-liquid-rocket-fuel-tank")


replace("space-water-tank", "storage-tank", "pm-stainless-steel-storage-tank")
replace("space-water-tank", "pump", "pm-stainless-steel-pump")
replace("space-water-tank", "pipe", "pm-osmium-pipe")


replace("space-ai-robot", "processing-unit", "pm-advanced-processing-unit")
replace("space-ai-robot", "productivity-module-3", "pm-productivity-module-5")
replace("space-ai-robot", "battery-mk2-equipment", "pm-selenium-sulfur-battery-mk2-equipment")
replace("space-ai-robot", "fission-reactor-equipment", "pm-RTG-equipment")


replace("space-ai-robot-frame", "logistic-robot", "pm-selenium-logistic-robot")
replace("space-ai-robot-frame", "construction-robot", "pm-selenium-construction-robot")


replace("exploration-satellite", "nuclear-fuel", "pm-strontium-fuel-rod")

replace("ftl-drive", "productivity-module-3", "pm-productivity-module-5")
replace("ftl-drive", "efficiency-module-3", "pm-efficiency-module-5")
replace("ftl-drive", "speed-module-3", "pm-speed-module-5")
replace("ftl-drive", "processing-unit", "pm-space-processing-unit")



replace("astrometrics", "lab", "pm-bio-lab")
replace("astrometrics", "speed-module-3", "pm-speed-module-5")
replace("astrometrics", "processing-unit", "pm-space-processing-unit")

replace("laser-cannon", "processing-unit", "pm-advanced-processing-unit")

replace("command", "processing-unit", "pm-space-processing-unit")
replace("command", "productivity-module-3", "pm-productivity-module-5")
replace("command", "efficiency-module-3", "pm-efficiency-module-5")
replace("command", "speed-module-3", "pm-speed-module-5")
replace("command", "plastic-bar", "pm-polytetrafluoroethylene")
insert_ingredient("command", "pm-CRT", 50 * productionCost)

replace("life-support", "pipe", "pm-osmium-pipe")
replace("life-support", "productivity-module-3", "pm-productivity-module-5")
replace("life-support", "processing-unit", "pm-advanced-processing-unit")


replace("habitation", "plastic-bar", "pm-polytetrafluoroethylene")
replace("habitation", "steel-plate", "pm-stainless-steel-alloy")
replace("habitation", "processing-unit", "pm-advanced-processing-unit")


replace("fuel-cell", "processing-unit", "pm-advanced-processing-unit")
replace("fuel-cell", "steel-plate", "pm-stainless-steel-alloy")


replace("space-thruster", "processing-unit", "pm-advanced-processing-unit")
replace("space-thruster", "speed-module-3", "pm-speed-module-5")
replace("space-thruster", "pipe", "pm-osmium-pipe")
replace("space-thruster", "electric-engine-unit", "pm-advanced-electric-engine-unit")

replace("hull-component", "steel-plate", "pm-stainless-steel-alloy")

replace("fusion-reactor", "fission-reactor-equipment", "pm-RTG-equipment")


replace("drydock-assembly", "processing-unit", "pm-advanced-processing-unit")
replace("drydock-assembly", "solar-panel", "pm-solar-panel-3")
replace("drydock-assembly", "roboport", "pm-roboport-2")


replace("assembly-robot", "construction-robot", "pm-selenium-construction-robot")
replace("assembly-robot", "speed-module-3", "pm-speed-module-5")
replace("assembly-robot", "efficiency-module-3", "pm-efficiency-module-5")
