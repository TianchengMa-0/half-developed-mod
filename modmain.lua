PrefabFiles = {
	"yasuo",
}

Assets = {
	Asset("IMAGE", "images/saveslot_portraits/yasuo.tex"),
	Asset("ATLAS", "images/saveslot_portraits/yasuo.xml"),
	
	Asset("IMAGE", "images/selectscreen_portraits/yasuo.tex"),
	Asset("ATLAS", "images/selectscreen_portraits/yasuo.xml"),
	
	Asset("IMAGE", "images/yasuo.tex"),
	Asset("ATLAS", "images/yasuo.xml"),
	
	Asset("IMAGE", "bigportraits/yasuo.tex"),
	Asset("ATLAS", "bigportraits/yasuo.xml"),
}

table.insert(GLOBAL.CHARACTER_GENDERS.MALE,"yasuo")
local Recipe = GLOBAL.Recipe
local Ingredient = GLOBAL.Ingredient
local RECIPETABS = GLOBAL.RECIPETABS
local STRINGS = GLOBAL.STRINGS
local TECH = GLOBAL.TECH

AddMinimapAtlas("images/yasuo.xml")
AddModCharacter("yasuo")