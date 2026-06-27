extends Node2D

func _process(_delta: float) -> void:
	if(Input.is_action_just_pressed("shoot")):
		get_tree().change_scene_to_file("res://Scenes/battle_scene.tscn")
		health.health = 100
		health.highscore = health.kills
		health.kills = 0 
