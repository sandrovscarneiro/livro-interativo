extends TouchScreenButton

@onready var john_locke = get_parent().get_node("john_locke")

func _input(event):
	if event is InputEventScreenTouch:
		if event.pressed:
			john_locke.visible = true
		else:
			john_locke.visible = false
		
