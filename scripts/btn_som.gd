extends TouchScreenButton

const list_icons: Array = [preload("res://assets/imagens/btn_som_ligar.png"), preload("res://assets/imagens/btn_som_desligar.png")]
const list_texts: Array = ["Ligar Som", "Desligar Som"]


func _ready() -> void:
	texture_normal = list_icons[int(Globals.play_sound)]
	$Label.text = list_texts[int(Globals.play_sound)]


func _on_pressed() -> void:
	Globals.play_sound = !Globals.play_sound
	texture_normal = list_icons[int(Globals.play_sound)]
	$Label.text = list_texts[int(Globals.play_sound)]
