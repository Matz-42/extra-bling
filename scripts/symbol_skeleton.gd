extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "skeleton"
	display_name = "Skeleton"
	localized_names = {}
	value = 0
	description = "<text_color_keyword>Destroys<end> itself after <text_color_keyword><value_1><end> spins. <text_color_keyword>Adds <value_2><end> <icon_bone> when <text_color_keyword>destroyed<end>. <text_color_keyword>Destroys<end> adjacent <icon_milk>. Permanently gives <icon_coin><color_FBF236><value_3><end> and lasts for <text_color_keyword><value_1><end> extra spins for each <icon_milk> <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [8,3,2]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	rarity = "uncommon"
	groups = ["organism","doglikes","witchlikes","darkhumor","scaler"]
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
					"b": "milk",
				},
				{
					"a": "destroyed",
					"b": true,
					"not_prev": true
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
					"b": true,
					"not_prev": true
				},
				{
					"a": "type",
					"b": "skeleton",
					"target_self": true,
					"not_prev": true
				}
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": -values[0]
		},
		{
			"comparisons": [
				{
					"a": "type",
					"b": "skeleton",
					"not_prev": true
				}
			],
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
					"not_prev": true
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
