extends Label

func _process(_delta: float) -> void:
	text = "But hey, look on the bright side! You got " + str(health.kills) + " kills before you died!"
