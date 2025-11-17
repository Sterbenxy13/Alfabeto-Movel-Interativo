extends MenuButton

@export var vogal:String

func _on_pressed() -> void:
	$"../Panel".slide()
