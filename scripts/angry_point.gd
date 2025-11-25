extends Node3D

@onready var anim_player = $AnimationPlayer;

func _input(event):
	if event is InputEventScreenTouch:
		anim_player.play("mixamo_com")
	
