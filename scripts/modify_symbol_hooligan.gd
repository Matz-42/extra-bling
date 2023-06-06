extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "hooligan"
	display_name = "Hooligan"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	inherit_description = false
	rarity = "uncommon"
	value = 2
	description = "<color_E14A68>Destroys<end> adjacent <group_hooligandescription> and <last_hooligandescription>. Gives <icon_coin><color_FBF236><value_1><end> for <group_hooligandescription> and <last_hooligandescription> <color_E14A68>destroyed<end>."
	values = [6]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "hooliganextradestroy"
				}
			],
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "hooligan",
			"value_to_change": "destroyed", 
			"diff": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "groups",
					"b": "hooliganextradestroy"
				},
				{
					"a": "destroyed",
					"b": true
				}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": values[0]
		}
	]