extends "res://scripts/platform_move_updown.gd"

@onready var area: Area2D = $"Area2D"

var inside: bool

func _on_area_2d_body_shape_entered(_body_rid, _body, _body_shape_index, _local_shape_index) -> void:	
#	print("area entered")
	inside = true
	speed = 0


func _on_area_2d_body_shape_exited(_body_rid, _body, _body_shape_index, _local_shape_index) -> void:
	inside = false
	if !inside:	
			speed = initial_speed
#			print(speed)

func down(): return super() && notInside()

func notInside() -> bool: return !inside