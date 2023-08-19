extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "battery"
	display_name = "Battery"
	localized_names = {}
	description = "<group_limitedmachines> and <last_limitedmachines> gain <text_color_keyword><value_1><end> extra <text_color_keyword>use<end> each spin."
	localized_descriptions = {}
	value = ""
	values = [1]
	rarity = "uncommon"
	effects = [
		{
			"push_front": true,
			"effect_type": "symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "limitedmachines"
				}
			],
			"value_to_change": "saved_value",
			"diff": -values[0]
		}
	]