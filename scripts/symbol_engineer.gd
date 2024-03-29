extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "engineer"
	display_name = "Engineer"
	localized_names = {}
	value = 3
	description = "Adjacent <group_limitedmachines> and <last_limitedmachines> give <text_color_keyword><value_1>x<end> more <icon_coin> and gain <text_color_keyword><value_2><end> extra <text_color_keyword>uses<end>."
	localized_descriptions = {}
	rarity = "rare"
	values = [2,2]
	groups = ["organism","human","doglikes","studentgraduation"]
	sfx = ["beam"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "limitedmachines"
				}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "beam",
		},
		{
			"push_front": true,
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "limitedmachines"
				}
			],
			"value_to_change": "saved_value",
			"diff": -values[1]
		}
	]