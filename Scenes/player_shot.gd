extends Node2D

var timer = 0

func _ready():
	hide()
func _process(delta: float) -> void:
	if(Input.is_action_just_pressed("shoot")):
		if(timer <= 0):
			show()
			timer = 0.1
		position = get_global_mouse_position()
	timer -= delta
	if(timer <= 0):
		hide()
