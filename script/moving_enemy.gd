extends Node2D
const speed = 50
var direction = 1
@onready var raycast_right=$RayCast_right
@onready var raycast_left =$RayCast_left
@onready var animated_sprite =$Area2D/AnimatedSprite2D
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if raycast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h=true
	if raycast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h=false
	position.x += delta * speed * direction
