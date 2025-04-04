extends Area2D

func _physics_process(delta):
	var enemies_in_range: Array[Node2D] = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemy: Node2D = enemies_in_range.front()
		look_at(target_enemy.global_position)
