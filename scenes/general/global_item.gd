#extends Resource
extends Node

class_name GlobalItem

static var inv : Array[GlobalItem] = []
@export var type: String = "" #help still have to figure out how to use export within the inspector :(((((
enum rarity {COMMON=10, UNCOMMON=7, RARE=5, EPIC=3, LEGENDARY=1}
const INFO: Dictionary = {
	#"bomb_gray" : { feeling lazy, too much to code rn lol
		#"name" : "Bomb",
		#"desc" : "highly volatile",
		#"stats" : {
			#"use" : "kaboom",
			#"value" : 50,
			#"weight" : rarity.UNCOMMON,
			#"rarity_desc" : "meh"
		#}},
	"gem_blue" : {
		"name" : "Diamond",
		"desc" : "looks like money",
		"collectable" : true,
		"stats" : {
			"use" : "$$$",
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
			"value" : 50,
			"weight" : rarity.COMMON,
			"rarity" : "don't worry abt it..."
		}},
	"heart_red" : {
		"name" : "Heart",
		"desc" : "gotta stay fit",
		"collectable" : false,
		"stats" : {
			"use" : "health +10",
			"value" : 40,
			"weight" : rarity.UNCOMMON,
			"rarity_desc" : "meh"
		}},
	"heart_blue" : {
		"name" : "Uhh...",
		"desc" : "why is it blue?",
		"collectable" : false,
		"stats" : {
			"use" : "unknown",
			"value" : 90,
			"weight" : rarity.RARE,
			"rarity_desc" : "woah."
		}},
}

#func _ready() -> void:
#	computah_randomize_it_pls()

#pick weightedly random power up/item? if it works 
func computah_randomize_it_pls():
	var rng = RandomNumberGenerator.new()
	var types = INFO.keys()#[randi() % INFO.size()]
	var weights := []
	weights.resize(types.size()) #THIS LINE WAS :DLKFJKFJDKFJLKSDFJSKLDFKLDSJJDFKLSFJKLDSKLFDKLJDFFKJLDS
	var index = 0
	for elem in INFO.values():
		#index = types.index(elem)
		weights[index] = (elem["stats"]["weight"])
		#print(elem)
		index+=1#++1
	#print("hi",weights)

	weights = PackedFloat32Array(weights)
	#print(types.size())
	#print(weights)
	#print(weights.size())
	type = (types[rng.rand_weighted(weights)])
	print("type — "+type)
		
		
	
#get not ()
