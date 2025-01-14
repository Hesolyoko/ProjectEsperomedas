extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var input_pressed = true

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	# Get the input direction and handle the movement/deceleration.
	if input_pressed:
		# Handle jump.
		if Input.is_action_just_pressed("jump") and is_on_floor():
			velocity.y = JUMP_VELOCITY
			input_pressed = false
		
		var direction := Input.get_axis("move_left", "move_right")
		if direction:
			velocity.x = direction * SPEED
			input_pressed = false
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
		
		if Input.is_action_just_pressed("secret"):
			print_rich("You found the secret!")
			input_pressed = false

	move_and_slide()
