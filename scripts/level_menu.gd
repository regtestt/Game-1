extends Control


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("esq"):
		get_tree().change_scene_to_file("res://scenes/menu.tscn")

func _on_button_pressed() -> void:
#	print("b1 pressed")
	get_tree().change_scene_to_file("res://scenes/level1.tscn")

func _on_button_2_pressed() -> void:
#	print("b2 pressed")
	get_tree().change_scene_to_file("res://scenes/level2.tscn")
