extends Area2D

@onready var pickup_animation: AnimationPlayer = $"pickup animation"




func _on_body_entered(body: CharacterBody2D) -> void:
##	print("+1 coin")
	pickup_animation.play("pickup")
	await get_tree().create_timer(0.1).timeout
	queue_free()
