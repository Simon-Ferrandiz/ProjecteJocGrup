extends Node2D
var level_select = load("res://scenes/level_select.tscn")

func _on_next_level_button_2_pressed() -> void:
	GameState.unblocked_level.append(3)
	get_tree().change_scene_to_packed(level_select)

func _on_placa_body_entered(body: Node2D) -> void:
	if body.name == "PersonajeCaballero" or body.name == "PersonajePerro":
		$Puerta45/CollisionShape2D.set_deferred("disabled", true)
		$Puerta45.hide()


func _on_placa_body_exited(body: Node2D) -> void:
	if body.name == "PersonajeCaballero" or body.name == "PersonajePerro":
		$Puerta45/CollisionShape2D.set_deferred("disabled", false)
		$Puerta45.show()
