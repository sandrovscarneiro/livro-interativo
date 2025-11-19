extends VideoStreamPlayer


func _on_btn_play_pressed() -> void:
	if !is_playing():
		play()
