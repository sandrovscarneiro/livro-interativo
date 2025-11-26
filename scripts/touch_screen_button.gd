extends TouchScreenButton

@onready var john_locke = get_parent().get_node("john_locke")


		


func _on_pressed() -> void:
	john_locke.visible = true


func _on_released() -> void:
	john_locke.visible = false
