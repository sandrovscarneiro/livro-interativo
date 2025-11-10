extends TouchScreenButton

@onready var path_inicio: String = "res://capa.tscn";



func _on_pressed() -> void:
	get_tree().change_scene_to_file(path_inicio)
