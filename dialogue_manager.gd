class_name DialogueManager
extends CanvasLayer

@export var dialogue_pane: DialoguePane

func _enter_tree() -> void:
	dialogue_pane.hide()
	Globals.dialogue_manager = self

func show_dialogue(text: String) -> void:
	dialogue_pane.show()
	dialogue_pane.set_text(text)
