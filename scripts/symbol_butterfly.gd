extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "butterfly"
	display_name = "Butterfly"
	localized_names = {}
	value = 4
	description = "Has a <text_color_keyword><value_1>%<end> chance of giving <icon_essence_token><text_color_essence><value_2><end>."
	localized_descriptions = {}
	values = [8,1]
	rarity = "very_rare"
	groups = ["organism","animal"]
	sfx = ["shine"]
	effects = [
		{
			"comparisons": [
				{
					"a": "values",
					"b": {"starting_value": {"rand_num": {"min": 0, "max": 100}}},
					"rand": true,
					"value_num": 0
				}
			],
			"anim": "circle",
			"sfx_override": "shine",
			"value_to_change": "essence_token_value",
			"diff": values[1]
		}
	]