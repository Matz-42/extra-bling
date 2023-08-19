extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "bone"
	display_name = "Bone"
	localized_names = {}
	value = 1
	description = "Adjacent <icon_dog> <icon_wolf> and <icon_eldritch_beast> give <text_color_keyword><value_2>x<end> more <icon_coin>. <text_color_keyword>Destroys<end> itself after making other symbols give additional <icon_coin> <text_color_keyword><value_1> times<end>."
	localized_descriptions = {}
	rarity = "common"
	values = [3,2]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	groups = ["witchlikes"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "dog"
				}
			],
			"value_to_change": "value_multiplier",
			"diff": values[1],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "dogpant"
		},
		{
			"push_front": true,
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "dog"
				}
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": 1
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "wolf"
				}
			],
			"value_to_change": "value_multiplier",
			"diff": values[1],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "dogpant"
		},
		{
			"push_front": true,
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "wolf"
				}
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": 1
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "eldritch_beast"
				}
			],
			"value_to_change": "value_multiplier",
			"diff": values[1],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "eldritch"
		},
		{
			"push_front": true,
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "eldritch_beast"
				}
			],
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
			"sfx_override": "matryoshka",
			"anim": "shake"
		}
	]