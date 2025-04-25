extends Node2D
var level_select = load("res://scenes/level_select.tscn")
signal levelwon


func _on_next_level_button_1_pressed() -> void:
	levelwon.emit()
	get_tree().change_scene_to_packed(level_select)
	
