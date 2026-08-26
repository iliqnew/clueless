extends Node

enum WorldDirection {
	West,  # 0
	North, # 1
	East,  # 2
	South  # 3
}

var reverse_world_directions: Dictionary[Enums.WorldDirection, Enums.WorldDirection] = {
	Enums.WorldDirection.West: Enums.WorldDirection.East,
	Enums.WorldDirection.North: Enums.WorldDirection.South,
	Enums.WorldDirection.East: Enums.WorldDirection.West,
	Enums.WorldDirection.South: Enums.WorldDirection.North,
}

func get_reverse_world_direction(direction: Enums.WorldDirection) -> Enums.WorldDirection:
	return reverse_world_directions[direction]
