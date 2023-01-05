extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "golden_feather"
	display_name = "Golden Feather"
	localized_names = {}
	description = "<group_goldenfeatherbuffed> and <last_goldenfeatherbuffed> give <icon_coin><color_FBF236><value_3><end> more. <group_goldenfeatherspawners> and <last_goldenfeatherspawners> are <color_E14A68><value_1>x<end> more likely to <color_E14A68>add<end> symbols. <icon_golden_egg> have a <color_E14A68><value_2>%<end> chance to transform into <icon_golden_goose>."
	localized_descriptions = {}
	value = ""
	values = [5,5,2]
	rarity = "rare"
	effects = [
		{
			"push_front": true,
			"effect_type": "symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "goldenfeatherspawners"
				},
				{
					"a": "groups",
					"b": "spawner0"
				}
			],
			"value_to_change": "bonus_value_multipliers",
			"bonus_value_num": 0,
			"diff": values[0]
		},
		{
			"push_front": true,
			"effect_type": "symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "goldenfeatherspawners"
				},
				{
					"a": "groups",
					"b": "spawner1"
				}
			],
			"value_to_change": "bonus_value_multipliers",
			"bonus_value_num": 1,
			"diff": values[0]
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "golden_egg",
					"not_prev": true
				},
				{
					"a": values[1],
					"b": {"starting_value": {"rand_num": {"min": 1, "max": 100}}},
					"greater_than_eq": true
				},
				{
					"a": "destroyed",
					"b": "false"
				}
			],
			"anim": "shake",
			"sfx_override": "goosehatch_STEAM_ID_76561198119199707_",
			"value_to_change": "type",
			"diff": "golden_goose"
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "goldenfeatherbuffed"
				}
			],
			"value_to_change": "value_bonus",
			"diff": values[2]
		}
	]