extends CharacterBody2D


const SPEED = 100.0
var direction
#const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	direction = Input.get_vector("up", "left", "right", "down")
	if direction != Vector2.ZERO:
		velocity = direction * 18.0
	else:
		velocity = Vector2.ZERO
	move_and_slide()
	# Add the gravity.
	#if not is_on_floor():
		#velocity += get_gravity() * delta
#
	## Handle jump.
	#if Input.is_action_just_pressed("ui_accept") : #and is_on_floor()
		#target_pos = position+Vector2(9,4.5)
		#if position != target_pos:
			#velocity+=Vector2(3,1.5)
	## Get the input direction and handle the movement/deceleration.
	## As good practice, you should replace UI actions with custom gameplay actions.
	##var direction := Input.get_axis("ui_left", "ui_right")
	##if direction:
		##velocity.x = direction * SPEED
	##else:
		##velocity.x = move_toward(velocity.x, 0, SPEED)
#
	#move_and_slide()
