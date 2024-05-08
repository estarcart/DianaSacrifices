extends CharacterBody2D
@onready var animated_sprite = $AnimatedSprite2D
const SPEED = 130.0
func _physics_process(delta):
	var directionX = Input.get_axis("left", "right")
	var directionY = Input.get_axis("up", "down")
	velocity.x = directionX * SPEED
	velocity.y = directionY * SPEED
	
	if velocity.length() > 0.0:
		animated_sprite.play("run")
	else:
		animated_sprite.play("idle")
	
	
	
	if directionX > 0:
		animated_sprite.flip_h = false
	elif directionX < 0:
		animated_sprite.flip_h = true
	move_and_slide()
