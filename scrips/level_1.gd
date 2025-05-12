extends Node2D
var level_select = load("res://scenes/level_select.tscn")



func _on_exit_exit() -> void:
	GameState.unblocked_level.append(2)
	get_tree().change_scene_to_packed(level_select)


func _on_personaje_caballero_action() -> void:
	if $Pulsador1.caballero_in_button():
		$Puerta1/CollisionShape2D.disabled = true
		$Puerta1.hide()
	if $Pulsador2.caballero_in_button():
		$Puerta2/CollisionShape2D.disabled = true
		$Puerta2.hide()
	

func reload_scene():
	var current_scene = get_tree().current_scene
	get_tree().reload_current_scene()

func _input(event):
	if event.is_action_pressed("Restart"):
		reload_scene()



func _on_button_pressed() -> void:
	get_tree().change_scene_to_packed(level_select)



func _on_placa_body_entered(body: Node2D) -> void:
	if body.name == "PersonajeCaballero" or body.name == "PersonajePerro":
		$Puerta3/CollisionShape2D.disabled = true
		$Puerta3.hide()
	print($Puerta3/CollisionShape2D)
	print($Puerta3/CollisionShape2D.disabled)

func _on_placa_body_exited(body: Node2D) -> void:
	if body.name == "PersonajeCaballero" or body.name == "PersonajePerro":
		$Puerta3/CollisionShape2D.disabled = false
		$Puerta3.show()
	print($Puerta3/CollisionShape2D)
	print($Puerta3/CollisionShape2D.disabled)
