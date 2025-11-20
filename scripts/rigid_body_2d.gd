extends RigidBody2D

@onready var label = $Label


func _on_area_2d_body_entered(body) -> void:
	if body is RigidBody2D:
		body.label.text = "Verdade"
