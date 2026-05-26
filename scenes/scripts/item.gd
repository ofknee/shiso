extends Area2D

var amplitude := 1.5
var time = 0
var frequency := 2.0
var rounding := 0.5
var bob
var item = GlobalItem.new()


var inventory = global_vars.inv

@onready var anim = $item_icons
@onready var og_pos = anim.get_position()

var item_options = [
	"bomb",
	"diams",
	"emz",
	"health",
	"health_blue"
]

func _ready() -> void:
	
	item.type = item_options[randi() % item_options.size()]
	anim.play(item.type)

func _process(delta : float) -> void:
	time += delta * frequency
	bob = round(sin(time) * amplitude / rounding) * rounding
	anim.set_position(og_pos + Vector2(0, bob))

pass # Replace with function body.





func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		if inventory.size() <= 10:
			inventory.append(item)
			hide()
		
