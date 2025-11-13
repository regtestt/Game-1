extends AnimatableBody2D


@onready var area: Area2D = $"Area2D"
@onready var raycastPiso: RayCast2D = $"floor"
@onready var raycastLimite: RayCast2D = $"limit"

var speed: int = 0
var inside: bool

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
#	print(speed,constant_linear_velocity.y)
		move_platform(delta)

func _on_area_2d_body_shape_entered(_body_rid, _body, _body_shape_index, _local_shape_index) -> void:	
#	print("area entered")
	inside = true
	speed = 65


func _on_area_2d_body_shape_exited(_body_rid, _body, _body_shape_index, _local_shape_index) -> void:
	inside = false
	if !inside:	
			speed = -65
#			print(speed)

func move_platform(delta):
	position.y += speed * delta 
	if (!inside && raycastLimite.is_colliding() )||(inside && raycastPiso.is_colliding()):
		speed = 0
