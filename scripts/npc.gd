class_name NPC
extends Node2D

@export var dialogue_text: String

var interactable: bool = true

func interact() -> void:
	if !interactable:
		return

	Globals.dialogue_manager.show_dialogue(dialogue_text)

func set_interactable(val: bool) -> void:
	interactable = val
