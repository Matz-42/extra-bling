extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "thief"
	display_name = "Thief"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	inherit_description = true
	rarity = "uncommon"
	value = -1
	groups = ["thievesguildbuffed"]