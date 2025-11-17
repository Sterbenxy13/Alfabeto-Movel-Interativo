extends Panel

var IS_OUT_SCREEN: bool = false

func _ready() -> void:
	slide()
	
func slide() -> void:
	if (IS_OUT_SCREEN):
		slide_right()
		IS_OUT_SCREEN = false
		return
	else:
		slide_left()
		IS_OUT_SCREEN = true
		return
	
func slide_left() -> void:
	while (0 - self.size.x) < self.position.x:
		self.position.x -= 1
		print(self.position.x)

func slide_right() -> void:
	while 0 > self.position.x:
		self.position.x = self.position.x + 1
		await get_tree().create_timer(0.000001).timeout
		print(self.position.x)
