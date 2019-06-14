extends Area2D

func _ready():
	pass

func _on_Visibilidad_screen_exited():
	queue_free()
	pass 

func _on_Enemigo_area_entered(area):
	if area.name == "Nave":
		queue_free()
	pass 

func _on_Enemigo_body_entered(body):
	if body.name == "Disparo_s" or "Escudo":
		queue_free()
	if body.name == "Disparox4":
		queue_free()
	pass 
