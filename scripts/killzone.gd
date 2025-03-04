extends Area2D

@onready var timer: Timer = $Timer


func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()

func _on_body_entered(body: CharacterBody2D) -> void:
	Engine.time_scale = 0.5
	body.disable_mode
	timer.start()
