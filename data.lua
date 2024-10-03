local VehicleFuel = {
    type = "fuel-category",
    name = "vehicle-fuel"
}

local SolidHeavyOil = {
    type = "item",
    name = "solid-heavy-oil",
    icon = "__AdvancedFuelProcessing__/graphics/Solid_heavy_oil.png",
    icon_size = 64, icon_mipmaps = 4,
    fuel_category = "vehicle-fuel",
    fuel_value = "20MJ",
    fuel_acceleration_multiplier = 2.00,
    fuel_top_speed_multiplier = 0.80,
    subgroup = "intermediate-product",
    stack_size = 50
}

local SolidHeavyOilRecipe = {
    type = "recipe",
    name = "solid-heavy-oil",
    energy_required = 4,
    enabled = false,
    category = "chemistry",
    ingredients = {{name = "solid-fuel", amount = 1}, {type = "fluid", name = "heavy-oil", amount = 8}},
    result = "solid-heavy-oil"
}

local SolidLightOil = {
    type = "item",
    name = "solid-light-oil",
    icon = "__AdvancedFuelProcessing__/graphics/Solid_light_oil.png",
    icon_size = 64, icon_mipmaps = 4,
    fuel_category = "vehicle-fuel",
    fuel_value = "6MJ",
    fuel_acceleration_multiplier = 1.60,
    fuel_top_speed_multiplier = 1.15,
    subgroup = "intermediate-product",
    stack_size = 100
}

local SolidLightOilRecipe = {
    type = "recipe",
    name = "solid-light-oil",
    energy_required = 16,
    enabled = false,
    category = "chemistry",
    ingredients = {{name = "solid-fuel", amount = 5}, {type = "fluid", name = "light-oil", amount = 25}},
    result = "solid-light-oil",
    result_count = 10
}

local SolidCoal = {
    type = "item",
    name = "solid-coal",
    icon = "__AdvancedFuelProcessing__/graphics/Solid_coal.png",
    icon_size = 64, icon_mipmaps = 4,
    fuel_category = "vehicle-fuel",
    fuel_value = "40MJ",
    fuel_acceleration_multiplier = 1.00,
    fuel_top_speed_multiplier = 1.30,
    subgroup = "intermediate-product",
    stack_size = 25
}

local SolidCoalRecipe = {
    type = "recipe",
    name = "solid-coal",
    energy_required = 8,
    enabled = false,
    category = "advanced-crafting",
    ingredients = {{name = "solid-fuel", amount = 2}, {name = "coal", amount = 4}},
    result = "solid-coal"
}

local llrRocketFuel = {
	type = "item",
    name = "llr-rocket-fuel",
    icon = "__base__/graphics/icons/rocket-fuel.png",
    icon_size = 64, icon_mipmaps = 4,
    fuel_category = "chemical",
    fuel_value = "100MJ",
    fuel_acceleration_multiplier = 1.80,
    fuel_top_speed_multiplier = 1.15,
    subgroup = "intermediate-product",
    order = "p[rocket-fuel]",
    stack_size = 10
}

local llrRocketFuelRecipe = {
    type = "recipe",
    name = "llr-rocket-fuel",
    energy_required = 20,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients = {{type = "fluid", name = "ll-rocket-fuel", amount = 10}, {name = "steel-plate", amount = 1}},
    result = "llr-rocket-fuel"
}

local SpoiledPlastic = {
  type = "item",
  name = "spoiled-plastic",
  icon = "__AdvancedFuelProcessing__/graphics/Spoiled_plastic_bar.png",
  icon_size = 64, icon_mipmaps = 4,
  stack_size = 100
}

local HeavyOilPlasticRecipe = {
  type = "recipe",
  name = "alternative-plastic",
  icon = "__AdvancedFuelProcessing__/graphics/Plastic_from_Heavy_Oil.png",
  icon_size = 64, icon_mipmaps = 4,
  energy_required = 0.5,
  enabled = false,
  category = "chemistry",
  ingredients = {{type = "fluid", name = "petroleum-gas", amount = 10}, {type = "fluid", name = "heavy-oil", amount = 5}},
  results = {
    {type = item, name = "plastic-bar", amount = 1, probability = 0.9},
    {type = item, name = "spoiled-plastic", amount = 2, probability = 0.1}
  },
  main_product = "plastic-bar"
}

local SpoiledPlasticSteamRecycling = {
  type = "recipe",
  name = "plastic-steam-recycling",
  icon = "__AdvancedFuelProcessing__/graphics/Plastic_recycling_icon.png",
  icon_size = 64, icon_mipmaps = 4,
  energy_required = 5,
  enabled = false,
  category = "chemistry",
  ingredients = {{type = "fluid", name = "steam", amount = 10}, {name = "spoiled-plastic", amount = 1}},
  results = {
    {type = item, name = "plastic-bar", amount = 1, probability = 0.5},
    {type = item, name = "spoiled-plastic", amount = 1, probability = 0.5}
  },
  main_product = "plastic-bar"
}
local SpoiledPlasticAcidRecycling = {
  type = "recipe",
  name = "plastic-acid-recycling",
  icon = "__AdvancedFuelProcessing__/graphics/Plastic_acid_recycling.png",
  icon_size = 64, icon_mipmaps = 4,
  energy_required = 5,
  enabled = false,
  category = "chemistry",
  ingredients = {{type = "fluid", name = "sulfuric-acid", amount = 10}, {name = "spoiled-plastic", amount = 1}},
  results = {
    {type = item, name = "plastic-bar", amount = 1, probability = 0.3},
    {type = item, name = "spoiled-plastic", amount = 1, probability = 0.7}
  },
  main_product = "plastic-bar"
}

local CoalExperimentationResearch = {
    type = "technology",
  name = "Coal-experimentation-research",
  icon = "__AdvancedFuelProcessing__/graphics/Coal_research.png",
  icon_size = 256, icon_mipmaps = 4,
  visible_when_disabled = true,
  prerequistes = {"automobilism", "railway"},
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "solid-coal"
    }
  },
  unit =
  {
    count = 200,
    ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 2}},
    time = 30
  },
}

local SolidFuelExperimentationResearch = {
    type = "technology",
  name = "Solid-fuel-experimentation-research",
  icon = "__AdvancedFuelProcessing__/graphics/Solid_Fuel_research.png",
  icon_size = 256, icon_mipmaps = 4,
  visible_when_disabled = true,
  prerequistes = {"advanced-oil-processing","Coal-experimentation-research"},
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "solid-heavy-oil"
    },
    {
        type = "unlock-recipe",
        recipe = "solid-light-oil"
    }
  },
  unit =
  {
    count = 200,
    ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 2}},
    time = 30
  },
}



table.insert(data.raw.technology["rocket-fuel"].effects,{type = "unlock-recipe",recipe = "llr-rocket-fuel"})
table.insert(data.raw.technology["plastics"].effects,{type = "unlock-recipe",recipe = "alternative-plastic"})
table.insert(data.raw.technology["plastics"].effects,{type = "unlock-recipe",recipe = "plastic-steam-recycling"})
table.insert(data.raw.technology["plastics"].effects,{type = "unlock-recipe",recipe = "plastic-acid-recycling"})

data.raw["recipe"]["plastic-bar"].results = {{type = item, name = "plastic-bar", amount = 2, probability = 0.9},{type = item, name = "spoiled-plastic", amount = 4, probability = 0.1}}
data.raw["recipe"]["plastic-bar"].main_product = "plastic-bar"

data.raw["car"]["car"].burner.fuel_categories = {"vehicle-fuel","chemical"}
data.raw["car"]["tank"].burner.fuel_categories = {"vehicle-fuel","chemical"}
data.raw["locomotive"]["locomotive"].burner.fuel_categories = {"vehicle-fuel","chemical"}

data:extend{VehicleFuel, SolidHeavyOil, SolidHeavyOilRecipe, SolidLightOil, SolidLightOilRecipe, SolidCoal, SolidCoalRecipe, llrRocketFuel, llrRocketFuelRecipe, SpoiledPlastic, HeavyOilPlasticRecipe, SpoiledPlasticSteamRecycling, SpoiledPlasticAcidRecycling, CoalExperimentationResearch, SolidFuelExperimentationResearch}