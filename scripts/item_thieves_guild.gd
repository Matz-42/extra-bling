extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "thieves_guild"
	display_name = "Thieves' Guild"
	localized_names = {}
	description = "<group_thievesguildbuffed> <last_thievesguildbuffed> and <icon_billionaire> give <icon_coin><color_FBF236><value_2><end> more. <color_E14A68>Adds<end> <icon_thief> every <color_E14A68><value_1><end> spins."
	localized_descriptions = {}
	value = ""
	values = [12,2]
	value_text = {"color": "item_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	rarity = "uncommon"
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "thievesguildbuffed"
				}
			],
			"value_to_change": "value_bonus",
			"diff": values[1]
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "billionaire"
				}
			],
			"value_to_change": "value_bonus",
			"diff": values[1]
		},
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
			"tiles_to_add": [{"type": "thief"}]
		}
	]