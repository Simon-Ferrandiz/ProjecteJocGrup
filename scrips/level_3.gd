extends Node2D
var level_select = load("res://scenes/level_select.tscn")


func _on_next_level_button_3_pressed() -> void:
	get_tree().change_scene_to_packed(level_select)
