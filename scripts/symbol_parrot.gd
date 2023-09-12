extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "parrot"
	display_name = "Parrot"
	localized_names = {}
	value = 1
	description = "Has a <text_color_keyword><value_1>%<end> chance to act like <icon_wildcard>. This effect always happen when adjacent to <icon_pirate>."
	localized_descriptions = {}
	values = [15]
	rarity = "uncommon"
	groups = ["organism","animal","bird","scarecrowhates","funny"]
	sfx = ["parrot_STEAM_ID_76561198119199707_"]
	effects = [
		{
			"push_front": true,
			"effect_type": "reverse_adjacent_symbol",
			"reverse_type": "pirate",
			"comparisons": [
				{
					"a": "type",
					"b": "parrot"
				}
			],
			"one_time": true,
			"value_to_change": "bonus_value_multipliers",
			"bonus_value_num": 0,
			"diff": 100
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
			"value_to_change": "wildcarded",
			"diff": true,
			"anim": "shake",
			"sfx_override": "parrot_STEAM_ID_76561198119199707_"
		}
	]