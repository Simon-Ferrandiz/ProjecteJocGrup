extends Area2D

signal exit
var players_in_area := {}

func _on_body_entered(body: Node2D) -> void:
	print(body.name + " entered")
	if body.name == "PersonajeCaballero" or body.name == "PersonajePerro":
		players_in_area[body.name] = true
		_check_win_condition()


func _on_body_exited(body: Node2D) -> void:
	if players_in_area.has(body.name):
		print(body.name + " exited")
		players_in_area.erase(body.name)


func _check_win_condition():
	if players_in_area.has("PersonajeCaballero") and players_in_area.has("PersonajePerro"):
		exit.emit()
