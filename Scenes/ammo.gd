extends Label

func _process(_delta: float) -> void:
	if(health.ammo >= 1):
		text = "Ammo: " + str(health.ammo - 1)
	else:
		text = "Ammo: 0"
