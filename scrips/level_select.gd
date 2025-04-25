extends Node2D
var main = load("res://scenes/main.tscn")
var level1 = preload("res://scenes/level_1.tscn").instantiate()
var level2 = preload("res://scenes/level_2.tscn").instantiate()
var level3 = preload("res://scenes/level_3.tscn").instantiate()


func _ready() -> void:
	level1.connect("levelwon", Callable(self, "_on_level_1_levelwon"))
	add_child(level1)

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_packed(main)



func _on_level_1_button_pressed() -> void:
	get_tree().change_scene_to_packed(level1)


func _on_level_2_button_pressed() -> void:
	get_tree().change_scene_to_packed(level2)


func _on_level_3_button_pressed() -> void:
	get_tree().change_scene_to_packed(level3)


func _on_level_1_levelwon() -> void:
	$Level2Button.disabled = false


func _on_level_2_levelwon() -> void:
	$Level3Button.disabled = false
	
