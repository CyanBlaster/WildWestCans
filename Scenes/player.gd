extends Node2D

var reload = 0

func _process(delta: float) -> void:
	if(Input.is_action_just_pressed("shoot") && health.ammo > 0):
		health.ammo -= 1
	elif(Input.is_action_just_pressed("reload")):
		reload = 1
	elif(health.ammo <= 0 && reload <= 0):
		reload = 1
	if(reload > 0):
		reload -= delta
		if(reload <= 0):
			health.ammo = 7 
