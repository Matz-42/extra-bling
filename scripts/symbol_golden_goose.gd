extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "golden_goose"
	display_name = "Golden Goose"
	localized_names = {}
	value = 5
	description = "Has a <text_color_keyword><value_1>%<end> chance of <text_color_keyword>adding<end> <icon_golden_egg>. Has a <text_color_keyword><value_2>%<end> chance of <text_color_keyword>adding<end> <icon_diamond>."
	localized_descriptions = {}
	values = [5, 1]
	rarity = "very_rare"
	groups = ["organism","animal","bird","spawner0","spawner1","goldenfeatherspawners","goldenfeatherbuffed","triggerchance"]
	sfx = ["honk"]
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
			"tiles_to_add": [{"type": "golden_egg"}],
			"anim": "shake",
			"sfx_override": "honk"
		},
		{
			"comparisons": [
				{
					"a": "values",
					"b": {"starting_value": {"rand_num": {"min": 0, "max": 100}}},
					"rand": true,
					"value_num": 1
				}
			],
			"tiles_to_add": [{"type": "diamond"}],
			"anim": "shake",
			"sfx_override": "honk"
		}
	]