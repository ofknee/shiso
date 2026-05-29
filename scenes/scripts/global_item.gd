extends Resource

class_name GlobalItem

static var inv : Array[GlobalItem] = []
@export var type: String = "" #help still have to figure out how to use export within the inspector :(((((
const INFO: Dictionary = {
	"bomb_gray" : {
		"name" : "Bomb",
		"desc" : "highly volatile"	
	},
	"gem_blue" : {
		"name" : "Blue Gem",
		"desc" : "looks like money"
	},
	"gem_green" : {
		"name" : "Green Gem",
		"desc" : "green green bling"
	},
	"heart_red" : {
		"name" : "Red Heart",
		"desc" : "gotta stay fit"
	},
	"heart_blue" : {
		"name" : "Blue Heart",
		"desc" : "why is it blue?"
	},
}
#
#static func create(new_params: int) -> GlobalItem:
	#var instance = GlobalItem.new()
	#instance.type = params
	#return instance
#
#@export var icon: Texture2D
#@export var amount: int = 1
