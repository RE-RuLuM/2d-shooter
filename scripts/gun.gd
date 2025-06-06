extends Area2D

func _physics_process(delta):
	var enemies_in_range: Array[Node2D] = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemy: Node2D = enemies_in_range.front()
		look_at(target_enemy.global_position)

func shoot():
	const BULLET = preload("res://scenes/bullet.tscn")
	var new_bullet: Area2D = BULLET.instantiate()
	new_bullet.global_position = %ShootingPoint.global_position
	new_bullet.global_rotation = %ShootingPoint.global_rotation
	%ShootingPoint.add_child(new_bullet)


func _on_timer_timeout() -> void:
	shoot()
