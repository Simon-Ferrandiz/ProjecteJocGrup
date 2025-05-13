extends Camera2D


@export var target_1: Node2D
@export var target_2: Node2D
@export var max_distance: float = 400.0
@export var min_zoom: float = 2.0
@export var max_zoom: float = 3.0
@export var zoom_speed: float = 2.0

func _process(delta):
	if not target_1 or not target_2:
		return

	# Midpoint between both characters
	var center = (target_1.global_position + target_2.global_position) / 2.0
	global_position = global_position.lerp(center, 0.1)

	# Distance between characters
	var dist = target_1.global_position.distance_to(target_2.global_position)

	# Clamp the zoom based on their distance
	var target_zoom = clamp(dist / max_distance, min_zoom, max_zoom)
	zoom = zoom.lerp(Vector2(target_zoom, target_zoom), zoom_speed * delta)
