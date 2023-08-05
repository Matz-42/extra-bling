extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "pirate"
	display_name = "Pirate"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	inherit_description = true
	rarity = "very_rare"
	value = 2
	groups = ["thievesguildbuffed"]