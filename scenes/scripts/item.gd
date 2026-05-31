extends Area2D

var amplitude := 1.5
var time = 0
var frequency := 2.0
var rounding := 0.5
var bob

var inventory = GlobalItem.inv
var item = GlobalItem.new()
@onready var anim = $item_icons
@onready var og_pos = anim.get_position()

func _ready() -> void:
	var types = GlobalItem.INFO.keys()
	item.type = types[randi() % types.size()]
	anim.play(item.type)
	add_to_group("items") 


func _process(delta : float) -> void:
	time += delta * frequency
	bob = round(sin(time) * amplitude / rounding) * rounding
	anim.set_position(og_pos + Vector2(0, bob))
	anim.play(item.type)#FIXME


pass # Replace with function body.





func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		if inventory.size() <= 10:
			inventory.append(item)
			hide()
		
