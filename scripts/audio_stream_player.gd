extends AudioStreamPlayer


func _on_ready() -> void:
	if Globals.play_sound:
		play()
	print(Globals.play_sound)
	
func _on_btn_som_pressed() -> void:
	if !Globals.play_sound:
		stop()
	else:
		play()
