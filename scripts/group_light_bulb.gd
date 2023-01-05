extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "light_bulb"
	display_name = "Light Bulb"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	inherit_description = true
	rarity = "common"
	value = 1
	groups = ["limitedmachines"]