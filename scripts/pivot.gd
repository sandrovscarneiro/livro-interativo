extends Node3D
@onready var camera = $Camera3D; var sensibilidade = 0.009; 

func _process(_delta: float) -> void:
	pass

func _input(event):
	if event is InputEventScreenDrag:
		rotate_y(-event.relative.x*sensibilidade)
		

		

	
