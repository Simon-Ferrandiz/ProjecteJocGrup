extends Node2D
var level_select = load("res://scenes/level_select.tscn")



func _on_exit_exit() -> void:
	GameState.unblocked_level.append(2)
	get_tree().change_scene_to_packed(level_select)
