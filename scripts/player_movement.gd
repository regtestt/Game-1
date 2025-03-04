extends CharacterBody2D

const MAXSPEED = 120.0
const INPUTSPEED = 20
var BASESPEED = 0
const JUMP_VELOCITY = -300.0
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		animated_sprite.play("jump")

	# Get the input direction and handle the movement/deceleration.
	var direction := Input.get_axis("move_left", "move_right")
	
	if direction == 0:
		animated_sprite.play("idle")
	else:
		animated_sprite.play("move")
		
	if direction == -1:
		animated_sprite.flip_h = true
	elif direction == 1:
		animated_sprite.flip_h = false
		
	if direction:
		velocity.x = direction * MAXSPEED
	else:
		velocity.x = move_toward(velocity.x, 0, MAXSPEED)

	move_and_slide()
