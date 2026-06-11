#l1 - player
#l2 - walls
#l3 - enemy
#l4 - enemy go pew pew pew


extends CharacterBody2D

var spin_speed = 1.0 / 50

var amplitude := 1.5
var time = 0
var frequency := 2.0
var rounding := 0.5
var bob
var moving_up := true
var speed := 25.0

var iso_up := Vector2(9, -4.5).normalized()
var iso_down := Vector2(-9, 4.5).normalized()

@onready var anim = $main_sprites
@onready var og_pos = anim.get_position()

@onready var bgmusic = $"../../../bgmusic"


@onready var layers := [
	$main_sprites/layer1,
	$main_sprites/layer2,
	$main_sprites/layer3,
	$main_sprites/layer4
]

func _physics_process(delta: float) -> void:
	bobit(delta)

	for i in layers.size():
		var orientation_of_stratum = 1 if i % 2 == 0 else -1
		layers[i].rotation += orientation_of_stratum * delta

	var move_offset = iso_up if moving_up else iso_down

	if test_move(global_transform, move_offset):
		moving_up = !moving_up
	else:
		velocity = move_offset * speed
		move_and_slide()




func bobit(delta : float) -> void:
	time += delta * frequency
	bob = round(sin(time) * amplitude / rounding) * rounding
	anim.set_position(og_pos + Vector2(0, bob))


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "player":
		global_vars.playerHealth -= 2
		bgmusic.pitch_scale /= 1.15
		queue_free()
