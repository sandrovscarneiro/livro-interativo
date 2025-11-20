extends RigidBody2D

@onready var label = $Label

func _physics_process(_delta: float) -> void:
	var acc_values = Input.get_accelerometer();
	var tilt = Vector2(acc_values.x*50, -acc_values.y*200)
	apply_central_force(tilt)

func _on_area_2d_body_entered(body) -> void:
	if body is RigidBody2D:
		body.label.text = "Verdade"

		
	
