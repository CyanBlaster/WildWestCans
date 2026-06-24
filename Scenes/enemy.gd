extends Node2D
@onready var player = Node2D

var killing = 0
var timer = 2 - 0.01 * health.kills;


func _ready() -> void:
	killing = 1
	print(position.x)
	print(position.y)

func _process(delta: float) -> void:
	if(Input.is_action_just_pressed("shoot")):
		if(position.x >= get_global_mouse_position().x - 25 && position.x <= get_global_mouse_position().x + 25
		 && position.y >= get_global_mouse_position().y - 35 && position.y <= get_global_mouse_position().y + 35):
			queue_free()
			health.kills += 1
			killing = 0
	timer -= delta
	if(timer <= 0):
		health.health -= 5 * killing
		timer = 2 - 0.01 * health.kills;
	
	
