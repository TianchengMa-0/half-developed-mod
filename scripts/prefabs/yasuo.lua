local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
	Asset("ANIM","anim/player_basic.zip"),
	Asset("ANIM","anim/player_idles_shiver.zip"),
	Asset("ANIM","anim/player_actions.zip"),
	Asset("ANIM","anim/player_actions_axe.zip"),
	Asset("ANIM","anim/player_actions_pickaxe.zip"),
	Asset("ANIM","anim/player_actions_shovel.zip"),
	Asset("ANIM","anim/player_actions_blowdart.zip"),
	Asset("ANIM","anim/player_actions_eat.zip"),
	Asset("ANIM","anim/player_actions_item.zip"),
	Asset("ANIM","anim/player_actions_uniqueitem.zip"),
	Asset("ANIM","anim/player_actions_bugnet.zip"),
	Asset("ANIM","anim/player_actions_fishing.zip"),
	Asset("ANIM","anim/player_actions_boomerang.zip"),
	Asset("ANIM","anim/player_bush_hat.zip"),
	Asset("ANIM","anim/player_attacks.zip"),
	Asset("ANIM","anim/player_idles.zip"),
	Asset("ANIM","anim/player_rebirth.zip"),
	Asset("ANIM","anim/player_jump.zip"),
	Asset("ANIM","anim/player_amulet_resurrect.zip"),
	Asset("ANIM","anim/player_teleport.zip"),
	Asset("ANIM","anim/wilson_fx.zip"),
	Asset("ANIM","anim/player_one_man_band.zip"),
	Asset("ANIM","anim/shadow_hands.zip"),
	Asset("SOUND","sound/sfx.fsb"),
	Asset("ANIM","anim/beard.zip"),
	Asset("ANIM","anim/yasuo.zip"),
}

local prefabs = {}

--local start_inv = {
	--"duskblade"
--}
	
local fn = function(inst)
	inst.soundsname = "hasakei"
	inst.MiniMapEntity:SetIcon("yasuo.tex")

	inst.components.health:SetMaxHealth(200)
	inst.components.hunger:SetMax(200)
	inst.components.combat.damagemultiplier = 2.5
	inst.components.sanity:SetMax(200)
	inst.components.combat:SetAttackPeriod(0.5)
	inst.components.locomotor.walkspeed = (TUNING.WILSON_WALK_SPEED * 1.5)
	inst.components.locomotor.runspeed = (TUNING.WILSON_RUN_SPEED * 1.5)
	inst.components.hunger:SetRate(TUNING.WILSON_HUNGER_RATE * 1.3)
	--inst:ListenForEvent("onhitother",Attack)
	inst.component.health:StartRegen(-1,60)
	if IsDLCEnabled(REIGN_OF_GIANTS) then
		inst.Light:SetRadius(9)
		inst.Light:SetFalloff(1)
		inst.Light:SetIntensity(1)
		inst.Light:SetColour(128/255,128/255,128/255)
		inst.Light:Enable(false)
	end
	
	TUNING.SANITY_NIGHT_LIGHT = 1/60
	TUNING.SANITY_NIGHT_MID = 15/60
	TUNING.SANITY_NIGHT_DARK = 1
	TUNING.SANITY_DAY_GAIN = -30/60
	
	return inst
end

STRINGS.CHARACTER_TITLES.yasuo="0/21/0"
STRINGS.CHARACTER_NAMES.yasuo = "yasuo"
STRINGS.CHARACTER_DESCRIPTIONS.yasuo = "Give me your life"
STRINGS.CHARACTER_QUOTES.yasuo = "DEATH IS LIKE THE WIND, ALWAYS BY MY SIDE"

return MakePlayerCharacter("yasuo",prefabs,assets,fn)
