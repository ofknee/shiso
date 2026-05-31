extends Resource

class_name GlobalItem

static var inv : Array[GlobalItem] = []
@export var type: String = "" #help still have to figure out how to use export within the inspector :(((((
enum rarity {COMMON=10, UNCOMMON=7, RARE=5, EPIC=3, LEGENDARY=1}
const INFO: Dictionary = {
	"bomb_gray" : {
		"name" : "Bomb",
		"desc" : "highly volatile",
		"stats" : {
			"use" : "kaboom",
			"value" : 50,
			"weight" : rarity.UNCOMMON,
			"rarity_desc" : "meh"
		}},
	"gem_blue" : {
		"name" : "Diamond",
		"desc" : "looks like money",
		"stats" : {
			"use" : "$$$",
			"value" : 300,
			"weight" : rarity.EPIC,
			"rarity_desc" : "woah."
		}},
	"gem_green" : {
		"name" : "Emerald",
		"desc" : "green green bling",
		"stats" : {
			"use" : "$$",
			"value" : 50,
			"weight" : rarity.COMMON,
			"rarity" : "don't worry abt it..."
		}},
	"heart_red" : {
		"name" : "Heart",
		"desc" : "gotta stay fit",
		"stats" : {
			"use" : "health +10",
			"value" : 40,
			"weight" : rarity.UNCOMMON,
			"rarity_desc" : "meh"
		}},
	"heart_blue" : {
		"name" : "Uhh...",
		"desc" : "why is it blue?",
		"stats" : {
			"use" : "health +25?",
			"value" : 90,
			"weight" : rarity.RARE,
			"rarity_desc" : "woah."
		}},
}

func _ready() -> void:
	pass

#pick weightedly random power up/item? if it works 
static func computah_randomize_it_pls():
	var rng = RandomNumberGenerator.new()
	var types = INFO.keys()[randi() % INFO.size()]
	var weights := []
	weights.resize(INFO.size())
	for elem in INFO.values():
		weights.append(elem["stats"]["weight"])
	print(types[rng.rand_weighted(weights)])
		
		
	
