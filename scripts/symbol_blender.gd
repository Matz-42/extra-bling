extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "blender"
	display_name = "Blender"
	localized_names = {}
	value = 1
	description = "<color_E14A68>Destroys<end> adjacent <icon_banana> <group_blendermixed> <last_blendermixed> and <icon_watermelon>. Gives <icon_coin> equal to <color_E14A68><value_2>x<end> the value of symbols <color_E14A68>destroyed<end> this way. <color_E14A68>Destroys<end> itself after <color_E14A68>destroying <value_1><end> symbols."
	localized_descriptions = {}
	rarity = "uncommon"
	values = [5,8]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	groups = ["limitedmachines"]
	sfx = ["blender_STEAM_ID_76561198119199707_"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "blendermixed"
				}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "blender_STEAM_ID_76561198119199707_"
		},
		{	
			"push_front": true,
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "blendermixed"
				},
				{
					"a": "destroyed",
					"b": true
				}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": {"starting_value": values[1], "var_math": [{"*": "non_prev_final_value"}]}
		},
		{
			"push_front": true,
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "blendermixed"
				},
				{
					"a": "destroyed",
					"b": true,
					"not_prev": true
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
					"b": "banana"
				}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "blender_STEAM_ID_76561198119199707_"
		},
		{	
			"push_front": true,
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "banana"
				},
				{
					"a": "destroyed",
					"b": true
				}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": {"starting_value": values[1], "var_math": [{"*": "non_prev_final_value"}]}
		},
		{
			"push_front": true,
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "banana"
				},
				{
					"a": "destroyed",
					"b": true,
					"not_prev": true
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
					"b": "watermelon"
				}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "blender_STEAM_ID_76561198119199707_"
		},
		{	
			"push_front": true,
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "watermelon"
				},
				{
					"a": "destroyed",
					"b": true
				}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": {"starting_value": values[1], "var_math": [{"*": "non_prev_final_value"}]}
		},
		{
			"push_front": true,
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "watermelon"
				},
				{
					"a": "destroyed",
					"b": true,
					"not_prev": true
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
			"sfx_override": "lightbulbbreak",
			"anim": "shake"
		}
	]