extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "magpie"
	display_name = "Magpie"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	inherit_description = true
	rarity = "common"
	value = -1
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"required_items": ["magpies_nest"],
			"comparisons": [
				{
					"a": "type",
					"b": "d3"
				}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump"
		},
		{
			"effect_type": "adjacent_symbols",
			"required_items": ["magpies_nest"],
			"comparisons": [
				{
					"a": "type",
					"b": "d3"
				},
				{
					"a": "destroyed",
					"b": true
				},
				{
					"a": "tbd",
					"b": false
				}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": 1
		},
		{
			"effect_type": "adjacent_symbols",
			"required_items": ["magpies_nest"],
			"comparisons": [
				{
					"a": "type",
					"b": "d3"
				},
				{
					"a": "removed",
					"b": true
				},
				{
					"a": "tbd",
					"b": false
				}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": 1
		},
		
		{
			"effect_type": "adjacent_symbols",
			"required_items": ["magpies_nest"],
			"comparisons": [
				{
					"a": "type",
					"b": "coin"
				}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump"
		},
		{
			"effect_type": "adjacent_symbols",
			"required_items": ["magpies_nest"],
			"comparisons": [
				{
					"a": "type",
					"b": "coin"
				},
				{
					"a": "destroyed",
					"b": true
				},
				{
					"a": "tbd",
					"b": false
				}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": 1
		},
		{
			"effect_type": "adjacent_symbols",
			"required_items": ["magpies_nest"],
			"comparisons": [
				{
					"a": "type",
					"b": "coin"
				},
				{
					"a": "removed",
					"b": true
				},
				{
					"a": "tbd",
					"b": false
				}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": 1
		},
		
		{
			"effect_type": "adjacent_symbols",
			"required_items": ["magpies_nest"],
			"comparisons": [
				{
					"a": "groups",
					"b": "magpienesting"
				}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump"
		},
		{
			"effect_type": "adjacent_symbols",
			"required_items": ["magpies_nest"],
			"comparisons": [
				{
					"a": "groups",
					"b": "magpienesting"
				},
				{
					"a": "destroyed",
					"b": true
				},
				{
					"a": "tbd",
					"b": false
				}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": 1
		},
		{
			"effect_type": "adjacent_symbols",
			"required_items": ["magpies_nest"],
			"comparisons": [
				{
					"a": "groups",
					"b": "magpienesting"
				},
				{
					"a": "removed",
					"b": true
				},
				{
					"a": "tbd",
					"b": false
				}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": 1
		}
	]