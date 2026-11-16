extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		# Tell the player to enable anti-gravity
		body.enable_anti_gravity() 

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		# Tell the player to turn normal gravity back on
		body.disable_anti_gravity()
