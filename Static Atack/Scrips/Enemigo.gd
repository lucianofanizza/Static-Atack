extends Area2D

func _ready():
	pass

func _on_Visibilidad_screen_exited():
	queue_free()
	pass 

func _on_Enemigo_area_entered(area):
	if area.name == "Nave":
		$Sprite.visible = false
		$Sprite2.visible= true
		yield(get_tree().create_timer(0.1),"timeout")
		queue_free()
	pass 

func _on_Enemigo_body_entered(body):
	if body.name == "Escudo":
		$Sprite.visible = false
		$Sprite2.visible = true
		yield(get_tree().create_timer(0.001), "timeout")
		queue_free()
	if body.name == "Disparo_s":
		$Sprite.visible = false
		$Sprite2.visible= true
		yield(get_tree().create_timer(0.1),"timeout")
		queue_free()
	if body.name == "Disparox4":
		$Sprite.visible = false
		$Sprite2.visible= true
		yield(get_tree().create_timer(0.1),"timeout")
		queue_free()
	pass 
