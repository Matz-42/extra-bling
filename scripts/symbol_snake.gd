extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "snake"
	display_name = "Snake"
	localized_names = {}
	value = 1
	description = "<color_E14A68>Destroys<end> adjacent <icon_egg> and <icon_golden_egg>. Gives <icon_coin><color_FBF236><value_1><end> for each <icon_egg> <color_E14A68>destroyed<end>. Permanently gives <icon_coin><color_FBF236><value_2><end> for each <icon_golden_egg> <color_E14A68>destroyed<end>."
	localized_descriptions = {}
	values = [9,2]
	rarity = "common"
	groups = ["organism","animal","scaler"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "egg"
				}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "golden_egg"
				}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "egg"
				},
				{
					"a": "destroyed",
					"b": true
				}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": values[0]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "golden_egg"
				},
				{
					"a": "destroyed",
					"b": true
				}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": values[1]
		}
	]
