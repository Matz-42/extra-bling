extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "student"
	display_name = "Student"
	localized_names = {}
	value = 1
	description = "Transforms into <group_studentgraduation> or <last_studentgraduation> after giving <icon_coin> <color_E14A68><value_1> times<end>."
	localized_descriptions = {}
	values = [12]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "times_coins_given"}, {"-": "saved_value"}]}}
	rarity = "uncommon"
	groups = ["organism","human","doglikes"]
	effects = [
	
	# Disabled time machine code, too broken for now
	
	#	{
	#		"push_front": true,
	#		"required_items": ["time_machine"],
	#		"comparisons": [
	#			{
	#				"a": "saved_value",
	#				"b": 4,
	#				"less_than": true
	#			}
	#		],
	#		"value_to_change": "saved_value",
	#		"diff": 4,
	#		"overwrite": true
	#	},
	#	{
	#		"push_front": true,
	#		"required_items": ["time_machine_essence"],
	#		"value_to_change": "saved_value",
	#		"diff": 10000000
	#	},
	#	{
	#		"required_items": ["time_machine_essence"],
	#		"anim": "bounce",
	#		"sfx_override": "jump",
	#		"value_to_change": "type",
	#		"group": "studentgraduation"
	#	},
		{
			"comparisons": [
				{
					"a": {"starting_value": values[0], "var_math": [{"-": 1}, {"-": "times_coins_given"}, {"-": "saved_value"}]},
					"b": 0,
					"lesser_than_eq": true
				}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "type",
			"group": "studentgraduation"
		}
	]
