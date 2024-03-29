extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "antiques_curator"
	display_name = "Antiques Curator"
	localized_names = {}
	value = 2
	description = "Adjacent <icon_key> <group_antiquescuratorlikes> <last_antiquescuratorlikes> and <icon_highlander> give <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [2]
	rarity = "rare"
	groups = ["organism","human","doglikes","studentgraduation"]
	sfx = ["shine"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "antiquescuratorlikes"
				}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "key"
				}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "highlander"
				}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"value_to_change": "value_multiplier",
			"diff": values[0]
		}	
	]
