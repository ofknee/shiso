extends CenterContainer
var index
@onready var gv = global_vars
var anim

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	index= int(name.substr(1))
	anim = $stateAnim
	#print(index)
	#print()
	#index # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	#print("index: ",index," health: ",health)
	if index >= gv.playerHealth:
		anim.play("empty")
		#print("empty")
	else:
		anim.play("full")
	pass
