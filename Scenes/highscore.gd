extends Label

func _process(delta: float) -> void:
	text = "Highscore: " + str(health.highscore)
