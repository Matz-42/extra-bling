extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "pot_of_gold"
	display_name = "Pot of Gold"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Removes<end> adjacent <icon_hover_coin> and store them inside this symbol. Starts with <text_color_keyword><value_2><end> <icon_hover_coin> stored and can store up to <text_color_keyword><value_1><end>. <text_color_keyword>Adds<end> all stored <icon_hover_coin> when <text_color_keyword>destroyed<end> and gives <icon_coin><color_FBF236><value_4><end> for each one <text_color_keyword>added<end>. Gives <text_color_keyword><value_1>x<end> more <icon_coin> when directly below <icon_rainbow>."
	localized_descriptions = {}
	values = [10,3,7,5]
	value_text = {"color": "symbol_reminder_up_text", "value": {"starting_value": values[1], "var_math": [{"+": "saved_value"}]}}
	rarity = "uncommon"
	groups = ["antiquescuratorlikes","piratelikes","box","hooligandescription","hooliganextradestroy"]
	sfx = ["coinjingle"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "rainbow"
				},
				{
					"a": "grid_position_x",
					"b": {"starting_value": 0, "var_math": [{"+": "grid_position_x", "target_self": true}]}
				},
				{
					"a": "grid_position_y",
					"b": {"starting_value": -1, "var_math": [{"+": "grid_position_y", "target_self": true}]}
				}
			],
			"target_self": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "ding",
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "coin"
				},
				{
					"a": "saved_value",
					"b": values[2],
					"less_than": true,
					"target_self": true
				},
				{
					"a": "type",
					"b": "pot_of_gold",
					"target_self": true,
					"not_prev": true
				},
				{
					"a": "destroyed",
					"b": false,
					"target_self": true,
					"not_prev": true
				}
			],
			"value_to_change": "removed",
			"diff": true,
			"anim": "shake",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "coinjingle"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "coin"
				},
				{
					"a": "removed",
					"b": true
				},
				{
					"a": "saved_value",
					"b": values[2],
					"less_than": true,
					"target_self": true
				},
				{
					"a": "type",
					"b": "pot_of_gold",
					"target_self": true,
					"not_prev": true
				},
				{
					"a": "destroyed",
					"b": false,
					"target_self": true,
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
					"a": "destroyed",
					"b": true
				},
				{
					"a": "type",
					"b": "pot_of_gold"
				}
			],
			"tiles_to_add": [{"type": "coin"}, {"type": "coin"}, {"type": "coin"}],
			"value_to_change": "value_bonus",
			"diff": 15
		},
		
		{
			"comparisons": [
				{
					"a": "destroyed",
					"b": true
				},
				{
					"a": "type",
					"b": "pot_of_gold"
				},
				{
					"a": "saved_value",
					"b": 1,
					"greater_than_eq": true
				}
			],
			"tiles_to_add": [{"type": "coin"}],
			"value_to_change": "value_bonus",
			"diff": 5
		},
		{
			"comparisons": [
				{
					"a": "destroyed",
					"b": true
				},
				{
					"a": "type",
					"b": "pot_of_gold"
				},
				{
					"a": "saved_value",
					"b": 2
				}
			],
			"tiles_to_add": [{"type": "coin"}, {"type": "coin"}],
			"value_to_change": "value_bonus",
			"diff": 10
		},
		{
			"comparisons": [
				{
					"a": "destroyed",
					"b": true
				},
				{
					"a": "type",
					"b": "pot_of_gold"
				},
				{
					"a": "saved_value",
					"b": 3
				}
			],
			"tiles_to_add": [{"type": "coin"}, {"type": "coin"}, {"type": "coin"}],
			"value_to_change": "value_bonus",
			"diff": 15
		},
		{
			"comparisons": [
				{
					"a": "destroyed",
					"b": true
				},
				{
					"a": "type",
					"b": "pot_of_gold"
				},
				{
					"a": "saved_value",
					"b": 4
				}
			],
			"tiles_to_add": [{"type": "coin"}, {"type": "coin"}, {"type": "coin"}, {"type": "coin"}],
			"value_to_change": "value_bonus",
			"diff": 20
		},
		{
			"comparisons": [
				{
					"a": "destroyed",
					"b": true
				},
				{
					"a": "type",
					"b": "pot_of_gold"
				},
				{
					"a": "saved_value",
					"b": 5
				}
			],
			"tiles_to_add": [{"type": "coin"}, {"type": "coin"}, {"type": "coin"}, {"type": "coin"}, {"type": "coin"}],
			"value_to_change": "value_bonus",
			"diff": 25
		},
		{
			"comparisons": [
				{
					"a": "destroyed",
					"b": true
				},
				{
					"a": "type",
					"b": "pot_of_gold"
				},
				{
					"a": "saved_value",
					"b": 6
				}
			],
			"tiles_to_add": [{"type": "coin"}, {"type": "coin"}, {"type": "coin"}, {"type": "coin"}, {"type": "coin"}, {"type": "coin"}],
			"value_to_change": "value_bonus",
			"diff": 30
		},
		{
			"comparisons": [
				{
					"a": "destroyed",
					"b": true
				},
				{
					"a": "type",
					"b": "pot_of_gold"
				},
				{
					"a": "saved_value",
					"b": 7,
					"greater_than_eq": true
				}
			],
			"tiles_to_add": [{"type": "coin"}, {"type": "coin"}, {"type": "coin"}, {"type": "coin"}, {"type": "coin"}, {"type": "coin"}, {"type": "coin"}],
			"value_to_change": "value_bonus",
			"diff": 35
		}
		
	]