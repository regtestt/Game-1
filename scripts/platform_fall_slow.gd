extends AnimatableBody2D


@onready var area: Area2D = $"Area2D"
@onready var raycast: RayCast2D = $"RayCast2D"

var speed: int = 0
var firstPosition

func _ready() -> void:
	firstPosition = int(position.y)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
#	print(speed,constant_linear_velocity.y)
	move_platform(delta)





func _on_area_2d_body_shape_entered(_body_rid, _body, _body_shape_index, _local_shape_index) -> void:	
#	print("area entered")
	speed = 50

func _on_area_2d_body_shape_exited(_body_rid, _body, _body_shape_index, _local_shape_index) -> void:

	if position.y << firstPosition.y:
		speed = -50
	

func control_position():
	return position == firstPosition
	

func move_platform(delta):
	position.y += speed * delta
	await get_tree().create_timer(1).timeout
	if control_position():
		speed = 0


