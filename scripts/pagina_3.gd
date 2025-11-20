extends Node2D

@onready var colher: Sprite2D = $Colher
@onready var linha = $LinhaDaAgua
@onready var topo: Sprite2D = $Colher/Topo
@onready var fundo: Sprite2D = $Colher/Fundo

var arrastando := false
var offset := 0.0

var escala_normal_fundo: Vector2
var rotacao_normal_fundo: float
var pos_normal_x_fundo: float



func _ready():
	# Guardar estado REAL do fundo (para não estragar sua escala manual)
	colher.self_modulate.a = 0.0
	escala_normal_fundo = fundo.scale
	rotacao_normal_fundo = fundo.rotation
	pos_normal_x_fundo = fundo.position.x


func _input(event):

	# Clique na colher
	if event is InputEventScreenTouch:
		if event.pressed:
			if colher.get_rect().has_point(colher.to_local(event.position)):
				arrastando = true
				offset = colher.position.y - event.position.y
		else:
			arrastando = false

	# Arrastar apenas na vertical
	if arrastando and event is InputEventScreenDrag:
		var novo_y = event.position.y + offset

		# Impedir que passe da linha da água para baixo
		novo_y = min(novo_y, linha.global_position.y)

		colher.position.y = novo_y




func _process(_delta):

	# Y da água
	var y_agua: float = linha.global_position.y

	# Y real da parte de baixo
	var y_fundo: float = fundo.global_position.y

	var submerso := y_fundo > y_agua

	if submerso:
		# DESLOCAMENTO LEVE APENAS NO X
		fundo.position.x = lerp(fundo.position.x, pos_normal_x_fundo -18.0, 0.1)

		# PEQUENA rotação adicional
		fundo.rotation = lerp(fundo.rotation, rotacao_normal_fundo + deg_to_rad(8), 0.1)

		# LEVE deformação
		fundo.scale = fundo.scale.lerp(escala_normal_fundo * Vector2(1.05, 0.92), 0.1)

	else:
		# Voltar ao normal suavemente (baseado no seu tamanho real)
		fundo.position.x = lerp(fundo.position.x, pos_normal_x_fundo, 0.1)
		fundo.rotation = lerp(fundo.rotation, rotacao_normal_fundo, 0.1)
		fundo.scale = fundo.scale.lerp(escala_normal_fundo, 0.1)
