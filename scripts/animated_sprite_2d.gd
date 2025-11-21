extends AnimatedSprite2D

@onready var state: String;
func _process(_delta):
	var accel = Input.get_accelerometer()
	if accel.x > 1:
		state = "right"
		flip_h = true
	elif accel.x < 1:
		state = "right"
		flip_h = false
	if accel.y > 1:
		state = "back"
	elif accel.y < 1:
		state = "front"
	play(state)
	
	position.x += sign(accel.x)
	position.y -= sign(accel.y)
	
	
