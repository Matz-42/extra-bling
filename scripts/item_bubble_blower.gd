extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "bubble_blower"
	display_name = "Bubble Blower"
	localized_names = {}
	description = "<groub_bubbleblowerbuffed> and <last_bubbleblowerbuffed> give <icon_coin><color_FBF236><value_2><end> more. Has a <color_E14A68><value_1>%<end> chance of <color_E14A68>adding<end> <icon_bubble> each spin."
	localized_descriptions = {}
	value = ""
	values = [30,1]
	rarity = "common"
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "bubbleblowerbuffed"
				}
			],
			"value_to_change": "value_bonus",
			"diff": values[1]
		},
		{
			"comparisons": [
				{
					"a": "values",
					"b": {"starting_value": {"rand_num": {"min": 0, "max": 100}}},
					"rand": true,
					"value_num": 0
				}
			],
			"tiles_to_add": [{"type": "bubble"}]
		}
	]