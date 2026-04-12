extends Area2D


# Called when-- This was the engine I dont need this right now
# func _ready() -> void:
	# pass
	






func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and not event.pressed:
			get_tree().change_scene_to_file("res://stages/city_skyline/city_skyline_act_1.tscn")
