extends LinkButton

class_name silaba_button

@export var sound_button: AudioStream
@onready var audio_player := AudioStreamPlayer.new()

#const SOUND_PATH = preload("res://audios/be.mp3")


func _init(new_text: String, audio_path: String) -> void:
	text = new_text
	sound_button = load(audio_path)
	print(new_text)

func _ready() -> void:
	#sound_button = SOUND_PATH
	if sound_button:
		audio_player.stream = sound_button
		add_child(audio_player)

func _pressed() -> void:
	audio_player.play()
