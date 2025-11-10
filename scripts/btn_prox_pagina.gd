extends TouchScreenButton

@export var path_prox_pagina: String;




func _on_pressed() -> void:
	get_tree().change_scene_to_file(path_prox_pagina)
