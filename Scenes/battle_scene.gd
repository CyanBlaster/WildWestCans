extends Node2D

var timer = 5 - health.kills * 0.1
@onready var enemy = preload("res://Scenes/enemy.tscn")

func _process(delta: float) -> void:
	timer -= delta;
	if (timer <= 0):
		var instance = enemy.instantiate()
		instance.position.x = randi_range(0, 1000)
		instance.position.y = randi_range(350, 600)
		get_tree().current_scene.add_child(instance)
		timer = 5 - health.kills * 0.1
	if(health.health <= 0):
		get_tree().change_scene_to_file("res://Scenes/lose_scene.tscn")
