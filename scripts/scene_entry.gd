class_name SceneEntry extends Area2D


@export var connected_scene: String
@export var scene_folder: String = "res://scenes/"


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		var scene = str(scene_folder, connected_scene, ".tscn")
		var scene_tree = get_tree()
		print(scene)
		scene_tree.change_scene_to_file(scene)
