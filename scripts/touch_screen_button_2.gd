extends TouchScreenButton


@onready var array_icons = [preload("res://assets/imagens/baixados.png"), preload("res://icon.svg")]; var rand;




func _on_pressed() -> void:
	if get_parent().get_node("Node2D/Path2D/PathFollow2D").get_child_count() == 0:
		randomize()
		rand = randi_range(0,1)
		var new_sprite = Sprite2D.new()
		new_sprite.texture = array_icons[rand]
		new_sprite.apply_scale(Vector2(0.5,0.5))
		get_parent().get_node("Node2D/Path2D/PathFollow2D").add_child(new_sprite)

func get_rand():
	return rand
