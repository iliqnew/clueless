class_name SkeletonNPC
extends NPC

func interact() -> void:
    super.interact()
    Globals.found_last_clue = true
