extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "paperwork"
	display_name = "Paperwork"
	localized_names = {}
	description = "Gives <icon_coin><color_FBF236><value_1><end> for each <icon_adoption_papers> <icon_tax_evasion> <icon_treasure_map> <icon_wanted_poster> <icon_zaroffs_contract> <icon_anthropology_degree> <icon_devils_deal> and <icon_old_photograph> you have atleast <text_color_keyword>1<end> of."
	localized_descriptions = {}
	value = ""
	values = [1]
	rarity = "uncommon"
	effects = [
		{
			"required_items": ["adoption_papers"],
			"value_to_change": "value",
			"diff": values[0]
		},
		{
			"required_items": ["tax_evasion"],
			"value_to_change": "value",
			"diff": values[0]
		},
		{
			"required_items": ["treasure_map"],
			"value_to_change": "value",
			"diff": values[0]
		},
		{
			"required_items": ["wanted_poster"],
			"value_to_change": "value",
			"diff": values[0]
		},
		{
			"required_items": ["zaroffs_contract"],
			"value_to_change": "value",
			"diff": values[0]
		},
		{
			"required_items": ["anthropology_degree"],
			"value_to_change": "value",
			"diff": values[0]
		},
		{
			"required_items": ["devils_deal"],
			"value_to_change": "value",
			"diff": values[0]
		},
		{
			"required_items": ["old_photograph"],
			"value_to_change": "value",
			"diff": values[0]
		}
	]