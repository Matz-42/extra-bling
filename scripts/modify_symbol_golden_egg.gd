extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "golden_egg"
	display_name = "Golden Egg"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	inherit_description = true
	rarity = "rare"
	value = 4
	values = [5]
	groups = ["antiquescuratorlikes","goldenfeatherbuffed"]
	effects = [
		{
			"required_items": ["golden_feather"],
			"comparisons": [
				{
					"a": "values",
					"b": {"starting_value": {"rand_num": {"min": 0, "max": 100}}},
					"rand": true,
					"value_num": 0
				}
			],
			"anim": "shake",
			"sfx_override": "goosehatch_STEAM_ID_76561198119199707_",
			"value_to_change": "type",
			"diff": "golden_goose"
		}
	]