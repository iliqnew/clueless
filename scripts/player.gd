class_name Player
extends CharacterBody2D

@export var speed: float = 300.0
@export var interact_key_sprite: Sprite2D
@export var interact_area: Area2D

func _enter_tree() -> void:
	interact_key_sprite.hide()

func _physics_process(_delta: float) -> void:
	if Globals.dialogue_is_in_progress:
		return

	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed

	move_and_slide()

func _process(_delta: float) -> void:
	if Globals.dialogue_is_in_progress:
		if Input.is_action_just_pressed("interact"):
			Globals.dialogue_manager.end_dialogue()
			return

	if !can_interact():
		interact_key_sprite.hide()
		return

	interact_key_sprite.show()

	if Input.is_action_just_pressed("interact"):
		var interactable_npcs: Array[NPC] = get_interactable_npcs()

		for npc in interactable_npcs:
			npc.interact()

func can_interact() -> bool:
	for area in interact_area.get_overlapping_areas():
		if area.owner.is_in_group("npcs"):
			return true
	
	return false

func get_interactable_npcs() -> Array[NPC]:
	var result: Array[NPC] = []

	for area in interact_area.get_overlapping_areas():
		if area.owner.is_in_group("npcs"):
			result.push_back(area.owner as NPC)
	
	return result
