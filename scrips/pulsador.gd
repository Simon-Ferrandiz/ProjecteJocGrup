extends Area2D

var caballero_near_button = false


func _on_body_entered(body: Node2D) -> void:
	if body.name == "PersonajeCaballero":
		caballero_near_button = true
	


func _on_body_exited(body: Node2D) -> void:
	if body.name == "PersonajeCaballero":
		caballero_near_button = false
	

func caballero_in_button():
	return caballero_near_button
