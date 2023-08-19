extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "student"
	display_name = "Student"
	localized_names = {}
	value = 1
	description = "Transforms into <icon_robin_hood> <icon_archaeologist> <icon_beastmaster> <icon_card_shark> <icon_chef> <icon_dame> <icon_diver> <icon_farmer> <icon_mrs_fruit> <icon_witch> <icon_antiques_curator> <icon_bartender> <icon_comedian> <icon_joker> or <icon_engineer> after giving <icon_coin> <text_color_keyword><value_1> times<end>."
	localized_descriptions = {}
	values = [12,15]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "times_coins_given"}]}}
	rarity = "uncommon"
	groups = ["organism","human","doglikes"]
	effects = [
		
		#	The reason why we are not using a group is because modifying some of those symbols in this group would break things; like Comedian with Dark Humor
		
		{
			"push_front": true,
			"one_time": true,
			"value_to_change": "saved_values",
			"value_num": 0,
			"diff": {"starting_value": {"rand_num": {"min": 0.000001, "max": values[1], "ceil": true}}},
			"overwrite": true
		},
		{
			"comparisons": [
				{
					"a": {"starting_value": values[0], "var_math": [{"-": "times_coins_given"}]},
					"b": 1,
					"less_than_eq": true
				},
				{
					"a": "type",
					"b": "student",
					"not_prev": true
				},
				{
					"a": "destroyed",
					"b": "false",
					"not_prev": true
				}
			],
			"value_to_change": "saved_values",
			"value_num": 1,
			"diff": 1,
			"overwrite": true
		},
		{
			"comparisons": [
				{
					"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [{"-": 1}]},
					"b": 0
				},
				{
					"a": {"starting_value": {"saved_values": {"value_num": 0}}, "var_math": [{"-": 1}]},
					"b": 0
				}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "type",
			"diff": "robin_hood"
		},
		{
			"comparisons": [
				{
					"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [{"-": 1}]},
					"b": 0
				},
				{
					"a": {"starting_value": {"saved_values": {"value_num": 0}}, "var_math": [{"-": 2}]},
					"b": 0
				}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "type",
			"diff": "archaeologist"
		},
		{
			"comparisons": [
				{
					"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [{"-": 1}]},
					"b": 0
				},
				{
					"a": {"starting_value": {"saved_values": {"value_num": 0}}, "var_math": [{"-": 3}]},
					"b": 0
				}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "type",
			"diff": "beastmaster"
		},
		{
			"comparisons": [
				{
					"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [{"-": 1}]},
					"b": 0
				},
				{
					"a": {"starting_value": {"saved_values": {"value_num": 0}}, "var_math": [{"-": 4}]},
					"b": 0
				}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "type",
			"diff": "card_shark"
		},
		{
			"comparisons": [
				{
					"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [{"-": 1}]},
					"b": 0
				},
				{
					"a": {"starting_value": {"saved_values": {"value_num": 0}}, "var_math": [{"-": 5}]},
					"b": 0
				}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "type",
			"diff": "chef"
		},
		{
			"comparisons": [
				{
					"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [{"-": 1}]},
					"b": 0
				},
				{
					"a": {"starting_value": {"saved_values": {"value_num": 0}}, "var_math": [{"-": 6}]},
					"b": 0
				}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "type",
			"diff": "dame"
		},
		{
			"comparisons": [
				{
					"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [{"-": 1}]},
					"b": 0
				},
				{
					"a": {"starting_value": {"saved_values": {"value_num": 0}}, "var_math": [{"-": 7}]},
					"b": 0
				}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "type",
			"diff": "diver"
		},
		{
			"comparisons": [
				{
					"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [{"-": 1}]},
					"b": 0
				},
				{
					"a": {"starting_value": {"saved_values": {"value_num": 0}}, "var_math": [{"-": 8}]},
					"b": 0
				}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "type",
			"diff": "farmer"
		},
		{
			"comparisons": [
				{
					"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [{"-": 1}]},
					"b": 0
				},
				{
					"a": {"starting_value": {"saved_values": {"value_num": 0}}, "var_math": [{"-": 9}]},
					"b": 0
				}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "type",
			"diff": "mrs_fruit"
		},
		{
			"comparisons": [
				{
					"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [{"-": 1}]},
					"b": 0
				},
				{
					"a": {"starting_value": {"saved_values": {"value_num": 0}}, "var_math": [{"-": 10}]},
					"b": 0
				}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "type",
			"diff": "witch"
		},
		{
			"comparisons": [
				{
					"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [{"-": 1}]},
					"b": 0
				},
				{
					"a": {"starting_value": {"saved_values": {"value_num": 0}}, "var_math": [{"-": 11}]},
					"b": 0
				}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "type",
			"diff": "bartender"
		},
		{
			"comparisons": [
				{
					"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [{"-": 1}]},
					"b": 0
				},
				{
					"a": {"starting_value": {"saved_values": {"value_num": 0}}, "var_math": [{"-": 12}]},
					"b": 0
				}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "type",
			"diff": "comedian"
		},
		{
			"comparisons": [
				{
					"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [{"-": 1}]},
					"b": 0
				},
				{
					"a": {"starting_value": {"saved_values": {"value_num": 0}}, "var_math": [{"-": 13}]},
					"b": 0
				}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "type",
			"diff": "joker"
		},
		{
			"comparisons": [
				{
					"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [{"-": 1}]},
					"b": 0
				},
				{
					"a": {"starting_value": {"saved_values": {"value_num": 0}}, "var_math": [{"-": 14}]},
					"b": 0
				}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "type",
			"diff": "antiques_curator"
		},
		{
			"comparisons": [
				{
					"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [{"-": 1}]},
					"b": 0
				},
				{
					"a": {"starting_value": {"saved_values": {"value_num": 0}}, "var_math": [{"-": 15}]},
					"b": 0
				}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "type",
			"diff": "engineer"
		},
		{
			"last": true,
			"value_to_change": "saved_values",
			"value_num": 1,
			"diff": 0,
			"overwrite": true
		}
	]