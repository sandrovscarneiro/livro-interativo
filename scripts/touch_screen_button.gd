extends TouchScreenButton

@export var path: String; 
@onready var node = get_parent().get_node(path)


		


func _on_pressed() -> void:
	node.visible = true


func _on_released() -> void:
	node.visible = false
