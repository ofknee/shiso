extends Node

enum rarity {
	COMMON=10, 
	UNCOMMON=7, 
	RARE=5, 
	EPIC=3, 
	LEGENDARY=1
}

const INFO: Dictionary = {
	"gem_blue" : {
		"name" : "Diamond",
		"desc" : "looks like money",
		"collectable" : true,
		"stats" : {
			"use" : "$$$",
			"effect" : {
				"id" : "money",
				"amount" : 300
			},
			"value" : 300,
			"weight" : rarity.EPIC,
			"rarity_desc" : "woah."
		}},
	"gem_green" : {
		"name" : "Emerald",
		"desc" : "green green bling",
		"collectable" : true,
		"stats" : {
			"use" : "$$",
			"effect" : {
				"id" : "money",
				"amount" : 50
			},
			"value" : 50,
			"weight" : rarity.COMMON,
			"rarity_desc" : "don't worry abt it..."
		}},
	"heart_red" : {
		"name" : "Heart",
		"desc" : "gotta stay fit",
		"collectable" : false,
		"stats" : {
			"use" : "take a wild guess",
			"effect" : {
				"id" : "health",
				"amount" : 1
			},
			"value" : 40,
			"weight" : rarity.UNCOMMON,
			"rarity_desc" : "meh"
		}},
	"heart_blue" : {
		"name" : "Uhh...",
		"desc" : "contains kree blood (marvel don't copyright strike me pls sob)",
		"collectable" : false,
		"stats" : {
			"use" : "take a wilder guess",
			"effect" : {
				"id" : "health",
				"amount" : 2
			},
			"value" : 90,
			"weight" : rarity.RARE,
			"rarity_desc" : "woah."
		}},
}
