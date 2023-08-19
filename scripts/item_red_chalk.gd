extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "red_chalk"
	display_name = "Red Chalk"
	localized_names = {}
	description = "You may <text_color_keyword>destroy<end> this item and <text_color_keyword>add <value_1><end> <group_hex> or <last_hex> at random."
	localized_descriptions = {}
	value = ""
	values = [3]
	rarity = "common"
	manually_destroyable = true
	effects = [
		{
			"comparisons": [
				{
					"a": "destroyed",
					"b": true
				}
			],
			"tiles_to_add": [{"group": "hex"}, {"group": "hex"}, {"group": "hex"}]
		}
	]