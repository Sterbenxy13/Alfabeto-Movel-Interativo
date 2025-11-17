extends MenuButton

@export var sound_button: AudioStream
@onready var audio_player := AudioStreamPlayer.new()

func _ready() -> void:
	if sound_button:
		audio_player.stream = sound_button
		add_child(audio_player)


func _on_pressed() -> void:
	audio_player.play()
