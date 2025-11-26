extends Node2D

@onready var matrix_answer = [[
preload("res://assets/imagens/branca_neve.png"),
preload("res://assets/imagens/macieira.png")
], [preload("res://assets/imagens/bolo.png"),preload("res://assets/imagens/ovo_pascoa.webp")]];
@onready var bolha_img = preload("res://assets/imagens/bolha_pensamento.png")
func _process(delta: float) -> void:
	randomize()
	if !$Path2D/PathFollow2D.get_child_count() == 0:
		$Path2D/PathFollow2D.progress += 100*delta
	if $Path2D/PathFollow2D.progress >= $Path2D.curve.get_baked_length():
		for child in $Path2D/PathFollow2D.get_children():
			if child is Sprite2D:
				child.queue_free()
		$Path2D/PathFollow2D.progress = 0
		spawn_bolha()
func spawn_bolha():
		var bolha = Sprite2D.new()
		bolha.texture = bolha_img
		add_child(bolha)
		var entrada = get_parent().get_node("TouchScreenButton5").get_rand()
		var pensamento = Sprite2D.new()
		pensamento.texture = matrix_answer[entrada][randi_range(0,1)]
		pensamento.position.y -= 50
		bolha.flip_h = true
		bolha.position = Vector2(200,150)
		bolha.apply_scale(Vector2(0.7,0.7))
		bolha.add_child(pensamento)
		
		var timer = Timer.new()
		timer.wait_time = 2.0
		timer.one_shot = true
		add_child(timer)
		
		timer.timeout.connect(func():
			bolha.queue_free()
			timer.queue_free()
			)
		timer.start()



		

	
