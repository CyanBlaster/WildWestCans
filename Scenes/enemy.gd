extends Node2D
@onready var player = Node2D
@export var idle : Sprite2D
@export var shoot : Sprite2D
@export var dead : Sprite2D

var killing = 0
var timer = 2 - 0.01 * health.kills;
var fire = 0;
var hp = 1;

func _ready() -> void:
	killing = 1
	idle.show()
	#print(position.x)
	#print(position.y)

func _process(delta: float) -> void:
	if(Input.is_action_just_pressed("shoot")):
		if(position.x >= get_global_mouse_position().x - 25 && position.x <= get_global_mouse_position().x + 25
		 && position.y >= get_global_mouse_position().y - 35 && position.y <= get_global_mouse_position().y + 35):
			hp -= 1;
			queue_free()
			health.kills += 1
			killing = 0
	timer -= delta
	if(hp <= 0):
		dead.show()
	if(fire >= 0):
		shoot.show()
		idle.hide()
		dead.hide()
		fire -= delta
	else:
		shoot.hide()
		idle.show()
		dead.hide()
	if(timer <= 0):
		fire = 0.1;
		health.health -= 5 * killing
		timer = 2 - 0.01 * health.kills;
