extends Area2D

@onready var timer = $Timer
  

func _on_body_entered(body):
	print("you died") # Replace with function body.
	Engine.time_scale = 0.5
	print(body.get_children())
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	
func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
