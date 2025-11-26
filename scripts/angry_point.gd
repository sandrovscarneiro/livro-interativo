extends Node3D

@onready var anim_player = $AnimationPlayer;

func _ready():
	randomize()
	var timer = Timer.new()
	timer.one_shot = false
	timer.wait_time = randf_range(2,5)
	add_child(timer)
	timer.start()
	timer.timeout.connect(func():
		anim_player.play("mixamo_com")
		)
