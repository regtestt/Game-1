extends Node2D


@onready var ray_cast_left: RayCast2D = $"RayCast Left"
@onready var ray_cast_right: RayCast2D = $"RayCast Right"
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var speed := 60
var dir := 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
#	print(animated_sprite_2d.flip_h)
	if ray_cast_right.is_colliding():
		dir = -1
		print(flip())
		animated_sprite_2d.flip_h = flip()
		
	if ray_cast_left.is_colliding():
		dir = 1
		print(flip())
		animated_sprite_2d.flip_h = flip()

	position.y += dir * delta * speed

func flip() -> bool : 
	var a := animated_sprite_2d.flip_h != true
#	print(a)
	return a
