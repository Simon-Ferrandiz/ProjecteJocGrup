extends Node2D
var level_select = load("res://scenes/level_select.tscn")


func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_packed(level_select)



func _on_exit_button_pressed() -> void:
	get_tree().quit()
