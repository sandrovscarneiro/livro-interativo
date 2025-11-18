extends Node3D

var rotating := false
var last_pos := Vector2.ZERO
var rotation_speed := 0.01

var yaw := 0.0
var pitch := 0.0

@onready var cam := $Camera3D

func _input(event):
	if event is InputEventScreenTouch:
		rotating = event.pressed
		last_pos = event.position

	if event is InputEventScreenDrag and rotating:
		var delta = event.position - last_pos
		last_pos = event.position

		yaw -= delta.x * rotation_speed
		pitch -= delta.y * rotation_speed
		pitch = clamp(pitch, deg_to_rad(-80), deg_to_rad(80))

		rotation.y = yaw      # gira o pivot (horizontal)
		cam.rotation.x = pitch # gira a camera (vertical)

func _process(delta):
	print("Pivot rot:", rotation)
	print("Camera rot:", cam.rotation)
