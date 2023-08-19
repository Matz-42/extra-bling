extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "caterpillar"
	display_name = "Caterpillar"
	localized_names = {}
	value = 1
	description = "<text_color_keyword>Destroys<end> adjacent <icon_flower>. Gives <icon_coin><color_FBF236><value_1><end> for each <icon_flower> <text_color_keyword>destroyed<end>. <text_color_keyword>Transforms<end> into <icon_cocoon> after <text_color_keyword>destroying<end> <text_color_keyword><value_2><end> <icon_flower>."
	localized_descriptions = {}
	values = [24,3]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[1], "var_math": [{"-": "saved_value"}]}}
	rarity = "uncommon"
	groups = ["organism","animal"]
	sfx = ["jump"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "flower"
				}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump"
		},
		{	
			"push_front": true,
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "flower"
				},
				{
					"a": "destroyed",
					"b": true
				}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": values[0]
		},
		{
			"push_front": true,
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "flower"
				},
				{
					"a": "destroyed",
					"b": true,
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
					"a": "saved_value",
					"b": values[1],
					"greater_than_eq": true
				}
			],
			"value_to_change": "type",
			"diff": "cocoon",
			"sfx_override": "wrap_STEAM_ID_76561198119199707_",
			"anim": "rotate"
		}
	]