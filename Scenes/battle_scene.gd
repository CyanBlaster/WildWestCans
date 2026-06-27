extends Node2D

var multiplier = 0
var timer = 5 - multiplier * 0.2
var type_summon = 0
@onready var enemy = preload("res://Scenes/enemy.tscn")

func summon_one():
	var instance = enemy.instantiate()
	instance.position.x = randi_range(0, 1000) 
	instance.position.y = randi_range(300, 600)
	get_tree().current_scene.add_child(instance)
	timer = 5 - health.kills * 0.1
func summon_stack():
	var instance = enemy.instantiate()
	var x = randi_range(0, 1000)
	var y = randi_range(300, 530)
	instance.position.x = x
	instance.position.y = y
	get_tree().current_scene.add_child(instance)
	x += 25
	y += 70
	var instance2 = enemy.instantiate()
	instance2.position.x = x
	instance2.position.y = y
	get_tree().current_scene.add_child(instance2)
	x -= 50
	var instance3 = enemy.instantiate()
	instance3.position.x = x
	instance3.position.y = y
	get_tree().current_scene.add_child(instance3)
	timer = 5 - health.kills * 0.1


func _process(delta: float) -> void:
	timer -= delta;
	multiplier = health.kills/10
	if (timer <= 0):
		type_summon = randi_range(1, 5)
		if(type_summon == 5):
			summon_stack()
		else:
			summon_one()
	if(health.health <= 0):
		get_tree().change_scene_to_file("res://Scenes/lose_scene.tscn")
