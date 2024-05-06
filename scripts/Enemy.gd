extends Node2D
func _physics_process(delta):
	position += (get_parent().get_node("Player").position - position).normalized() * 0.7
