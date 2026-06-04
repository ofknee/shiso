extends CenterContainer
var index

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	index = name.substr(1)
	print(index)
	#print()
	#index # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
#	if index < health
	pass
