extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "rainbow"
	display_name = "Rainbow"
	localized_names = {}
	value = 3
	description = "Adjacent <icon_hover_coin> <icon_bubble> and <icon_rain> act like <icon_wildcard> and give <color_E14A68><value_1>x<end> more <icon_coin>. Affects non-adjacent symbols as well if you have <icon_clear_sky>."
	localized_descriptions = {}
	values = [2]
	rarity = "rare"
	effects = [
		{
			"forbidden_items": ["clear_sky"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "coin"
				}
			],
			"value_to_change": "wildcarded",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "ding"
		},
		{
			"forbidden_items": ["clear_sky"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "coin"
				}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"forbidden_items": ["clear_sky"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "bubble"
				}
			],
			"value_to_change": "wildcarded",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "ding"
		},
		{
			"forbidden_items": ["clear_sky"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "bubble"
				}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"forbidden_items": ["clear_sky"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "rain"
				}
			],
			"value_to_change": "wildcarded",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "ding"
		},
		{
			"forbidden_items": ["clear_sky"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "rain"
				}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		
		
		{
			"required_items": ["clear_sky"],
			"effect_type": "symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "coin"
				}
			],
			"value_to_change": "wildcarded",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "ding"
		},
		{
			"required_items": ["clear_sky"],
			"effect_type": "symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "coin"
				}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"required_items": ["clear_sky"],
			"effect_type": "symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "bubble"
				}
			],
			"value_to_change": "wildcarded",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "ding"
		},
		{
			"required_items": ["clear_sky"],
			"effect_type": "symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "bubble"
				}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"required_items": ["clear_sky"],
			"effect_type": "symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "rain"
				}
			],
			"value_to_change": "wildcarded",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "ding"
		},
		{
			"required_items": ["clear_sky"],
			"effect_type": "symbols",
			"comparisons": [
				{
					"a": "type",
					"b": "rain"
				}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		}
	]
