extends Node

@export var early_find_npc: NPC
@export var chest: NPC

var has_removed_npc: bool = false

func _ready() -> void:
	chest.hide()
	chest.set_interactable(false)

func _process(_delta: float) -> void:
	if has_removed_npc:
		return

	if Globals.found_last_clue:
		has_removed_npc = true
		early_find_npc.queue_free()
		chest.show()
		chest.set_interactable(true)
