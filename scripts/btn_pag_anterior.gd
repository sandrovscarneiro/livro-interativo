extends TouchScreenButton

@export var path_pag_anterior:String; 




func _on_pressed() -> void:
	get_tree().change_scene_to_file(path_pag_anterior)
