extends Control

@onready var accelerometer_values;

func _process(_delta: float) -> void:
	accelerometer_values = Input.get_accelerometer()
	$ball.x += accelerometer_values.x
	$ball.y += accelerometer_values.y
	
	
