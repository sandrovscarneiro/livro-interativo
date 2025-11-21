extends Node2D

@onready var array = [null,null,null,null,null]; var selected_objects = []

func _input(event):
	var space = get_world_2d().direct_space_state
	if event is InputEventScreenTouch:
		if event.pressed:
			array[event.index] = event.position
			print(array)
			var params = PhysicsPointQueryParameters2D.new()
			params.position = event.position
			params.collision_mask = 1
			var result = space.intersect_point(params)
			if result.size()>0:
				selected_objects.append(result[0].collider)
				print(selected_objects)
		else:
			
			array[event.index] = null
			selected_objects = []
	if event is InputEventScreenDrag:
		pass
			
