extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "golden_egg"
	display_name = "Golden Egg"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	inherit_description = true
	rarity = "rare"
	value = 4
	groups = ["antiquescuratorlikes","goldenfeatherbuffed"]