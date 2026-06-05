extends Node
var playerHealth:= 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#playerHealth=10 # Replace with function body.
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	playerHealth = clamp(playerHealth,0,10)
	pass
