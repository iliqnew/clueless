extends Node

var dialogue_manager: DialogueManager
var dialogue_is_in_progress: bool = false
var entrance_direction: Enums.WorldDirection = Enums.WorldDirection.West
var found_last_clue: bool = false
