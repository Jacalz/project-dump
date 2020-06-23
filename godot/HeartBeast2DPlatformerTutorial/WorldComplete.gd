extends Area2D

export(String, FILE, "*.tscn") var world_scene

func _physics_process(_delta: float) -> void:
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			get_tree().change_scene(world_scene)
			break
