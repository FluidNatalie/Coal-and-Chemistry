local SpoiledPlastic = {
  type = "item",
  name = "spoiled-plastic",
  icon = "__Coal-and-Chemistry__/graphics/Spoiled_plastic_bar.png",
  icon_size = 64, icon_mipmaps = 4,
  stack_size = 100
}

local HeavyOilPlasticRecipe = {
  type = "recipe",
  name = "alternative-plastic",
  icon = "__Coal-and-Chemistry__/graphics/Plastic_from_Heavy_Oil.png",
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
  icon = "__Coal-and-Chemistry__/graphics/Plastic_recycling_icon.png",
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
  icon = "__Coal-and-Chemistry__/graphics/Plastic_acid_recycling.png",
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

table.insert(data.raw.technology["plastics"].effects,{type = "unlock-recipe",recipe = "alternative-plastic"})
table.insert(data.raw.technology["plastics"].effects,{type = "unlock-recipe",recipe = "plastic-steam-recycling"})
table.insert(data.raw.technology["plastics"].effects,{type = "unlock-recipe",recipe = "plastic-acid-recycling"})

data.raw["recipe"]["plastic-bar"].results = {{type = item, name = "plastic-bar", amount = 2, probability = 0.9},{type = item, name = "spoiled-plastic", amount = 4, probability = 0.1}}
data.raw["recipe"]["plastic-bar"].main_product = "plastic-bar"


data:extend{SpoiledPlastic, HeavyOilPlasticRecipe, SpoiledPlasticSteamRecycling, SpoiledPlasticAcidRecycling}