extends Label


func _process(_delta: float) -> void:
	text = "The most kills you ever got was " + health.highscore + "!"
