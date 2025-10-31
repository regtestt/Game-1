extends Control


func _on_button_pressed() -> void:
	print("b1 pressed")
	get_tree().change_scene_to_file("res://scenes/level1.tscn")

func _on_button_2_pressed() -> void:
	print("b2 pressed")
	get_tree().change_scene_to_file("res://scenes/level2.tscn")
