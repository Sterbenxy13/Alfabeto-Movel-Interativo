extends Node2D

func _ready() -> void:
	
	var silabas: Array[silaba_button] = []
	var x: int = 300
	var y: int = 0
	var currentIndex: int = 0
	
	for c in ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']:
		x = 300
		for v in ['a', 'é', 'i', 'ó', 'u', 'ão']:
			silabas.append(silaba_button.new(c + v, "res://audios/" + c + v + ".mp3"))
			silabas[currentIndex].set_position(Vector2(x, y))
			x += 50
			add_child(silabas[currentIndex])
			currentIndex += 1
		y += 20
			
	
	#var bao = silaba_button.new("BÃO", "res://audios/bão.mp3")
	#bao.set_position(Vector2(300, 0))
	#
	#
	#var ba = silaba_button.new("BA", "res://audios/ba.mp3")
	#ba.set_position(Vector2(500, 0))
	#var be = silaba_button.new("BE", "res://audios/be.mp3")
	#be.set_position(Vector2(700, 0))
	#add_child(ba)
	#add_child(be)
	#add_child(bao)
	
