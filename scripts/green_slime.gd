extends Node2D

const Speed = 60

var direction = 1
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	#Script sencillo para hacer el movimiento, direction muestra la direccion 1 o -1, speed la velocidad y delta
	#se refiere a la velocidad de frames, es una cosa extraña, mirar turorial si perder.
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h=true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h=false
	position.x += direction * Speed * delta
