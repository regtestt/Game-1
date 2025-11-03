extends AnimatableBody2D


@onready var area: Area2D = $"Area2D"
@onready var raycastPiso: RayCast2D = $"RayCastPiso"
@onready var raycastLimite: RayCast2D = $"RayCastLimite"

var speed: int = 0
var firstPosition
var inside: bool

func _ready() -> void:
	firstPosition = position.y
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
#	print(speed,constant_linear_velocity.y)
	move_platform(delta)
		

func _on_area_2d_body_shape_entered(_body_rid, _body, _body_shape_index, _local_shape_index) -> void:	
#	print("area entered")
	inside = true
	speed = 50


func _on_area_2d_body_shape_exited(_body_rid, _body, _body_shape_index, _local_shape_index) -> void:
	inside = false
	if !inside:	
			speed = -50
			print(speed)

	

func move_platform(delta):
	position.y += speed * delta
#	print(speed)
	print(inside, raycastLimite.is_colliding())
	if (!inside && raycastLimite.is_colliding() )||(inside && raycastPiso.is_colliding()):
		print ("enter")
		speed = 0
