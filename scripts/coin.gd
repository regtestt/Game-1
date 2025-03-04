extends Area2D

@onready var pickup_animation: AnimationPlayer = $"pickup animation"



func _on_body_entered(body: CharacterBody2D) -> void:
	print("+1 coin")
	pickup_animation.play("pickup")
	
