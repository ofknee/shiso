extends Node
var playerHealth:= 10
var coins := 0
#@onready var coins_text = $"GUI/coins/Label"

#var score := 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#playerHealth=10 # Replace with function body.
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	playerHealth = clamp(playerHealth,0,10)
	#coins_text = str(coins)
	#print(str(coins))
	if playerHealth == 0:
		get_tree().quit()
