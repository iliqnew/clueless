class_name SceneEntry extends Area2D

@export var next_scene: PackedScene

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		if next_scene == null:
			print_debug("Next scene is null, make sure there isn't a circular dependancy that is preventing the attached packed scene from being loaded and remaining null")

		get_tree().change_scene_to_packed.call_deferred(next_scene)
