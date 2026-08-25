class_name NPC
extends Node2D

@export var dialogue_text: String

func interact() -> void:
	Globals.dialogue_manager.show_dialogue(dialogue_text)
