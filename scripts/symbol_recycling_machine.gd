extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "recycling_machine"
	display_name = "Recycling Machine"
	localized_names = {}
	value = 2
	description = "Gives <icon_reroll_token><color_49AA10><value_2><end> when an adjacent symbol is <color_E14A68>destroyed<end>. <color_E14A68>Destroys<end> itself after giving <icon_reroll_token><color_49AA10><value_1><end>."
	localized_descriptions = {}
	rarity = "rare"
	values = [5,1]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	groups = ["limitedmachines"]
	effects = [
		{
			"effect_type": "adjacent_symbols",	
			"comparisons": [
				{
					"a": "destroyed",
					"b": true,
					"not_prev": true
				}
			],
			"anim": "none",
			"target_self": true,
			"value_to_change": "reroll_token_value",
			"diff": values[1]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "destroyed",
					"b": true,
					"not_prev": true
				}		
			],
			"anim": "none",
			"target_self": true,
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
			"value_to_change": "destroyed",
			"diff": true,
			"sfx_override": "lightbulbbreak",
			"anim": "shake"
		}
	]