extends AnimatableBody2D


@onready var ray_cast_right: RayCast2D = $"right"
@onready var ray_cast_left: RayCast2D = $"left"

var speed := 0
var dir := 1
var initial_speed := 80

func _ready() -> void:
	speed = initial_speed
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
#	print(speed,constant_linear_velocity.y)
	move_platform(delta)

func move_platform(delta):
	position.x += speed * delta * dir
#	print(speed)
#	print(inside, ray_cast_left.is_colliding())
	if (ray_cast_left.is_colliding()):
#		print ("enter")
		dir = 1
	elif (ray_cast_right.is_colliding()):
		dir = -1
