extends CharacterBody2D

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

const SPEED := 1.0

const TILE_W := 18.0
const TILE_H := 9.0
var move_time := 0.28/SPEED # TODO - change back to 0.28
const BOB_AMOUNT := 2.0/SPEED
const DELAY := 0.1/SPEED*0 # TODO - change back to 0.1 when done testing?

var inventory = GlobalItem.inv
var moving := false
var sprite_start_y := 0.0


#@onready var gv = global_vars # TESTING PURPOSES ONLY

var iso_dirs := {
	"right": Vector2(TILE_W / 2.0, TILE_H / 2.0),
	"left": Vector2(-TILE_W / 2.0, -TILE_H / 2.0),
	"up": Vector2(TILE_W / 2.0, -TILE_H / 2.0),
	"down": Vector2(-TILE_W / 2.0, TILE_H / 2.0),
}

func _ready() -> void:
	sprite_start_y = sprite.position.y
	#gv.playerHealth = 10



func _physics_process(_delta: float) -> void:
	if moving:
		return

	var direction_name := get_pressed_direction()

	if direction_name != "":
		move_tile(direction_name)
	else:
		sprite.pause()


func get_pressed_direction() -> String:
	if Input.is_action_pressed("right"):
		#gv.playerHealth += 1 # TESTING PURPOSES ONLY
		#print(gv.playerHealth) # TESTING PURPOSES ONLY
		return "right"

	elif Input.is_action_pressed("left"):
		#gv.playerHealth -= 1 TESTING PURPOSES ONLY
		#print(gv.playerHealth) # TESTING PURPOSES ONLY
		return "left"
	elif Input.is_action_pressed("up"):
		return "up"
	elif Input.is_action_pressed("down"):
		return "down"

	return ""


func move_tile(direx: String) -> void:
	var move_offset: Vector2 = iso_dirs[direx]
	var target_pos: Vector2 = global_position + move_offset

	if test_move(global_transform, move_offset):
		return

	moving = true
	sprite.play(direx)

	var tween := create_tween()
	tween.set_parallel(true)

	tween.tween_property(self, "global_position", target_pos, move_time)\
		.set_trans(Tween.TRANS_SINE)\
		.set_ease(Tween.EASE_IN_OUT)

	tween.tween_property(sprite, "position:y", sprite_start_y - BOB_AMOUNT, move_time / 2.0)
	tween.tween_property(sprite, "position:y", sprite_start_y, move_time / 2.0)\
		.set_delay(move_time / 2.0)

	await tween.finished

	global_position = target_pos
	sprite.position.y = sprite_start_y

	await get_tree().create_timer(DELAY).timeout

	moving = false
	
