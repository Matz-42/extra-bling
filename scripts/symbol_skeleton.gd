extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "skeleton"
	display_name = "Skeleton"
	localized_names = {}
	value = 0
	description = "<color_E14A68>Destroys<end> itself after <color_E14A68><value_1><end> spins. <color_E14A68>Adds <value_2><end> <icon_bone> when <color_E14A68>destroyed<end>. <color_E14A68>Destroys<end> adjacent <icon_milk>. Permanently gives <icon_coin><color_FBF236><value_3><end> and lasts for <color_E14A68><value_1><end> extra spins for each <icon_milk> <color_E14A68>destroyed<end>."
	localized_descriptions = {}
	values = [8,3,2]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	rarity = "uncommon"
	groups = ["organism","doglikes","fossillikes","witchlikes","darkhumor"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "milk"
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
					"b": "milk"
				},
				{
					"a": "destroyed",
					"b": true
				}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": values[2]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "milk"
				},
				{
					"a": "destroyed",
					"b": true
				}
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": -values[0]
		},
		{
			"one_time": true,
			"value_to_change": "saved_value",
			"diff": 1
		},
		{
			"comparisons": [
				{
					"a": "saved_value",
					"b": values[0],
					"greater_than_eq": true,
				}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"sfx_override": "matryoshka",
			"anim": "shake"
		},
		{
			"comparisons": [
				{
					"a": "destroyed",
					"b": true
				},
				{
					"a": "type",
					"b": "skeleton"
				}
			],
			"tiles_to_add": [{"type": "bone"}, {"type": "bone"}, {"type": "bone"}]
		}
	]
