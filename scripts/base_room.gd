extends Node2D

@export var player_entrances: Dictionary[Enums.WorldDirection, Node2D]
@export var player: Player

func _ready() -> void:
	player.position = player_entrances[Globals.entrance_direction].position