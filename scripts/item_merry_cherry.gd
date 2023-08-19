extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "merry_cherry"
	display_name = "Merry Cherry"
	localized_names = {}
	description = "<icon_cherry> give <text_color_keyword><value_1>x<end> more <icon_coin> when in the topmost row."
	localized_descriptions = {}
	value = ""
	values = [5]
	rarity = "common"
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "cherry"
				},
				{
					"a": "grid_position_y",
					"b": 0
				}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		}
	]