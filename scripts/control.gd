extends Control

@onready var accelerometer_values;

func _process(_delta: float) -> void:
	accelerometer_values = Input.get_accelerometer()
	$Label.text = "X: "+str(accelerometer_values.x)+" Y: "+str(accelerometer_values.y)

	
	
	
