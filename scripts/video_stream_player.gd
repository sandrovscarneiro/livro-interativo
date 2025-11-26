extends VideoStreamPlayer

@onready var icons = [preload("res://assets/imagens/btn_pause.png"), preload("res://assets/imagens/btn_play.png") ]

func _on_btn_play_pressed() -> void:
	if !is_playing():
		play()
	else:
		paused = !paused
	
	get_parent().get_node("btn_play").texture_normal = icons[int(paused)]
		


func _on_btn_stop_pressed() -> void:
	stop()
	paused = false
	get_parent().get_node("btn_play").texture_normal = icons[1]
	
