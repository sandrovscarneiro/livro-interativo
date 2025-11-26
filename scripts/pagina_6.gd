extends Node2D


var touches_dict = {}
func _input(event):
	if event is InputEventScreenTouch:
		if event.pressed:
			var new_area = $Area2D.duplicate()
			new_area.position = event.position
			add_child(new_area)
			touches_dict[event.index] = new_area
			
		else:
			if touches_dict.has(event.index):
				touches_dict[event.index].queue_free()
				touches_dict.erase(event.index)
	elif event is InputEventScreenDrag:
		if touches_dict.has(event.index):
			touches_dict[event.index].position = event.position
		
		
	
		
		
