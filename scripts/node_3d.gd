extends Node3D

func _process(delta):
	rotation_degrees.y += 30 * delta
	print("Pivot rot:", rotation_degrees)
