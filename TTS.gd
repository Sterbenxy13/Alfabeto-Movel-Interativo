extends Node

# One-time steps.
# Pick a voice. Here, we arbitrarily pick the first English voice.
var voices = DisplayServer.tts_get_voices_for_language("pt")
var voice_id = voices[0]
#var voice_id = "Portuguese (Brazil)+anika"

var tts_volume = 50
var tts_pitch = 0.3
var tts_rate = 0.3
var tts_text = ""


func _on_toggled(toggled_on: bool) -> void:
	if not toggled_on:
		return
	
	DisplayServer.set
	
	print(voices)
	print(voice_id)
	
	# Say "Hello, world!".
	DisplayServer.tts_speak("Hello, world!", voice_id)

	# Say a longer sentence, and then interrupt it.
	# Note that this method is asynchronous: execution proceeds to the next line immediately,
	# before the voice finishes speaking.
	var long_message = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur"
	DisplayServer.tts_speak(long_message, voice_id)

	# Immediately stop the current text mid-sentence and say goodbye instead.
	DisplayServer.tts_stop()
	DisplayServer.tts_speak(tts_text, voice_id, tts_volume, tts_pitch, tts_rate)
	#DisplayServer.tts_speak("LA", voice_id, tts_volume, tts_pitch, tts_rate)

func speak() -> void:
	print("TTS ativado usando a voz: " + voice_id)
	DisplayServer.tts_speak(tts_text, voice_id, tts_volume, tts_pitch, tts_rate)

func _on_volume_value_changed(value: float) -> void:
	tts_volume = value

func _on_pitch_value_changed(value: float) -> void:
	tts_pitch = value

func _on_rate_value_changed(value: float) -> void:
	tts_rate = value

func _on_test_text_changed(new_text: String) -> void:
	tts_text = new_text
	print("Texto do TTS alterado. Novo texto: " + tts_text)

func _on_pressed() -> void:
	speak()
