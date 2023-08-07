extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "orange_pepper"
	display_name = "Orange Pepper"
	localized_names = {}
	description = "Gives <icon_coin><color_FBF236><value_1><end> if you have no symbols with a base value of more than <icon_coin><color_FBF236><value_2><end>."
	localized_descriptions = {}
	value = ""
	values = [3,2]
	rarity = "common"
	groups = ["pepper"]
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{
					"a": "value",
					"b": values[1],
					"greater_than": true
				}
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": 1,
			"overwrite": true
		},
		{
			"last": true,
			"comparisons": [
				{
					"a": "saved_value",
					"b": 0
				}
			],
			"value_to_change": "value",
			"diff": values[0],
			"overwrite": true
		},
		{
			"last": true,
			"value_to_change": "saved_value",
			"diff": 0,
			"overwrite": true
		}
	]