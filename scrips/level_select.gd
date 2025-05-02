extends Node2D
var main = load("res://scenes/main.tscn")
var level1 = load("res://scenes/level_1.tscn")
var level2 = load("res://scenes/level_2.tscn")
var level3 = load("res://scenes/level_3.tscn")

var buttons = {}

func _ready() -> void:
	buttons = {1: $Level1Button, 2: $Level2Button, 3: $Level3Button}
	for level in GameState.unblocked_level:
		buttons [level].disabled = false

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_packed(main)


func _on_level_1_button_pressed() -> void:
	get_tree().change_scene_to_packed(level1)


func _on_level_2_button_pressed() -> void:
	get_tree().change_scene_to_packed(level2)


func _on_level_3_button_pressed() -> void:
	get_tree().change_scene_to_packed(level3)
