extends Node

var dialogue_manager: DialogueManager
var dialogue_is_in_progress: bool = false
var entrance_direction: Enums.WorldDirection = Enums.WorldDirection.West

const reverse_world_directions: Dictionary[Enums.WorldDirection, Enums.WorldDirection] = {
    Enums.WorldDirection.West: Enums.WorldDirection.East,
    Enums.WorldDirection.North: Enums.WorldDirection.South,
    Enums.WorldDirection.East: Enums.WorldDirection.West,
    Enums.WorldDirection.South: Enums.WorldDirection.North,
}

func get_reverse_world_direction(direction: Enums.WorldDirection) -> Enums.WorldDirection:
    return reverse_world_directions[direction]
