extends Node2D

var = direction = 1

const SPEED = 60
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += SPEED*delta*direction
	

