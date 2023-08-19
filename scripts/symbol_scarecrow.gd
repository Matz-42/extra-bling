extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "scarecrow"
	display_name = "Scarecrow"
	localized_names = {}
	value = 3
	description = "Adjacent <icon_seed> <group_plant> and <last_plant> give <icon_coin><color_FBF236>1<end> more. <text_color_keyword>Removes<end> adjacent <group_scarecrowhates> and <last_scarecrowhates>. Permanently increase the bonus given to adjacent symbols by <icon_coin><color_FBF236>1<end> for each symbol <text_color_keyword>removed<end>."
	localized_descriptions = {}
	rarity = "very_rare"
	value_text = {"color": "symbol_reminder_up_text", "value": {"starting_value": "saved_value"}}
	groups = ["farmerlikes"]
	sfx = ["farmer"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "scarecrowhates"
				}
			],
			"value_to_change": "removed",
			"diff": true,
			"anim": "shake",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "caw_STEAM_ID_76561198119199707_"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "scarecrowhates"
				},
				{
					"a": "removed",
					"b": true
				}
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": 1
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "scarecrowhates"
				},
				{
					"a": "removed",
					"b": true
				}
			],
			"target_self": true,
			"value_to_change": "saved_values",
			"value_num": 0,
			"diff": 1
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "plant"
				}
			],
			"value_to_change": "value_bonus",
			"diff": {"starting_value": 1, "var_math":[{"+": "saved_value", "target_self": true},{"-": {"saved_values": {"value_num": 0}}, "target_self": true}]},
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "farmer"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "seed"
				}
			],
			"value_to_change": "value_bonus",
			"diff": {"starting_value": 1, "var_math":[{"+": "saved_value", "target_self": true},{"-": {"saved_values": {"value_num": 0}}, "target_self": true}]},
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "farmer"
		},
		{
			"last": true,
			"value_to_change": "saved_values",
			"value_num": 0,
			"diff": 0,
			"overwrite": true
		}
	]