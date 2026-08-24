class_name DialoguePane
extends Panel

@export var dialogue_label: Label

func set_text(text: String) -> void:
	dialogue_label.text = text
