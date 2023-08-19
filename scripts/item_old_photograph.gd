extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "old_photograph"
	display_name = "Old Photograph"
	localized_names = {}
	description = "Every <text_color_keyword><value_1><end> spins, <text_color_keyword>adds 1<end> symbol that was <text_color_keyword>destroyed<end> this game."
	localized_descriptions = {}
	value = ""
	values = [2]
	value_text = {"color": "item_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	rarity = "very_rare"
	effects = [
		{
			"value_to_change": "saved_value",
			"diff": 1
		},
		{
			"comparisons": [
				{
					"a": "saved_value",
					"b": values[0],
					"greater_than_eq": true
				}
			],
			"value_to_change": "saved_value",
			"diff": 0,
			"overwrite": true,
			"tiles_to_add": ["prev_destroyed_symbol"]
		}
	]