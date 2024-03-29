extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "cocoon"
	display_name = "Cocoon"
	localized_names = {}
	value = 0
	description = "Has a <text_color_keyword><value_1>%<end> chance to <text_color_keyword>transform<end> into <icon_butterfly>."
	localized_descriptions = {}
	values = [8]
	rarity = "none"
	groups = []
	sfx = ["growhit"]
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
			"anim": "shake",
			"sfx_override": "growhit",
			"value_to_change": "type",
			"diff": "butterfly"
		}
	]