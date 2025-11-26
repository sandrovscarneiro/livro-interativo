extends TouchScreenButton


@onready var array_icons = [preload("res://assets/imagens/maca.png"), preload("res://assets/imagens/chocolate.png")]; var rand;




func _on_pressed() -> void:
	$Sprite2D.flip_h = !$Sprite2D.flip_h
	if get_parent().get_node("Node2D3/Path2D/PathFollow2D").get_child_count() == 0:
		randomize()
		rand = randi_range(0,1)
		var new_sprite = Sprite2D.new()
		new_sprite.texture = array_icons[rand]
		new_sprite.apply_scale(Vector2(0.1,0.1))
		new_sprite.z_index = 0
		get_parent().get_node("Node2D3/Path2D/PathFollow2D").add_child(new_sprite)

func get_rand():
	return rand
