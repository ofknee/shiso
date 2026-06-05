#extends Resource
extends Node
class_name GlobalItem


const ItemData = preload("res://code/inventory_and_items/item_data.gd")
const INFO = ItemData.INFO
const rarity = ItemData.rarity

static var inv : Array[GlobalItem] = []
@export var type: String = "" #help still have to figure out how to use export within the inspector :(((((

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
