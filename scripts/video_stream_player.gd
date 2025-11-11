extends VideoStreamPlayer


func _on_btn_play_pressed() -> void:
	if paused:
		paused = false;
	elif !is_playing():
		play()

func _on_btn_pause_pressed() -> void:
	paused = true

func _on_btn_stop_pressed() -> void:
	stop()
