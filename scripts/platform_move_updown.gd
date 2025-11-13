class_name PlatformUpDown

extends AnimatableBody2D

@onready var ray_cast_up: RayCast2D = $"up"
@onready var ray_cast_down: RayCast2D = $"down"

var speed := 0
var dir := 1
var initial_speed := 80


func _ready() -> void:
	speed = initial_speed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	move_platform(delta)

func move_platform(delta):
	position.y += speed * delta * dir
#	print(speed)
#	print(inside, ray_cast_down.is_colliding())
	if (down()):
#		print ("enter")
		dir = -1
	elif (up()):
		dir = 1

func down() -> bool: return ray_cast_down.is_colliding()

func up() -> bool: return ray_cast_up.is_colliding()