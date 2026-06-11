extends Control
@onready var coins_text = $"coinsValue"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	coins_text.text = str(global_vars.coins)
	#print(global_vars.coins)
