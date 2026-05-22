extends Area2D

var amplitude := 1.5
var time = 0
var frequency := 2.0
var rounding := 0.5
var bob

@onready var og_pos = $AnimatedSprite2D.get_position()
@onready var Item = $AnimatedSprite2D

var items = [
	"cherry bomb",
	"diams",
	"emz",
	"health"
]

func _ready() -> void:
	var key = randi() % 4
	Item.play(items[key])

func _process(delta : float) -> void:
	time += delta * frequency
	bob = round(sin(time) * amplitude / rounding) * rounding
	Item.set_position(og_pos + Vector2(0, bob))

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		hide()
