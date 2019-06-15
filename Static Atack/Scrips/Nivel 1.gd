extends Node2D

var Disparo_s = preload("res://Escenas/Disparo y escudo/Disparo_s.tscn")
var Escudo = preload("res://Escenas/Disparo y escudo/Escudo.tscn")
var Disparox4 = preload("res://Escenas/Disparo y escudo/Disparox4.tscn")
var vida = true

func _physics_process(delta):
	if $Nave/HUD/Barra_mana.value == 0:
		$B_Escudo.visible = false
	if $Nave/HUD/Barra_mana.value > 0:
		$B_Escudo.visible = true
	if $Nave/HUD/Barra_vida.value == 0:
		vida = false
		$Nave/Sprite.visible = false
		$Nave/Sprite2.visible = true
		yield(get_tree().create_timer(0.1),"timeout")
		$Nave/Sprite2.visible = false
		$B_Escudo.visible = false
		yield(get_tree().create_timer(0.5),"timeout")
		get_tree().change_scene("res://Escenas/Menu principal/Pantalla_game_over.tscn")

func _ready():
	$B_Disparox4.disabled = true
	pass

func _on_nave_tree_exited():
	vida = false
	$Button.queue_free()
	pass

func _on_T_disparo_timeout():
	if vida:
		var Pos_disparo = Vector2()
		Pos_disparo = $Nave/Pos_bala.global_position 
		var tiro = Disparo_s.instance()
		add_child(tiro)
		tiro.rotation_degrees= $Nave.rotation_degrees
		tiro.set_vector($Nave/Pos_bala2.global_position - Pos_disparo)
		tiro.global_position = Pos_disparo
		pass 

func _on_B_Escudo_pressed():
	$B_Escudo.visible = false
	var Pos_escudo = Vector2()
	Pos_escudo= $Nave.global_position
	var escudo = Escudo.instance()
	add_child(escudo)
	escudo.global_position = Pos_escudo
	yield(get_tree().create_timer(0.1),"timeout")
	escudo.queue_free()
	if vida:
		$B_Escudo.visible = true
	pass

func _on_T_disparox4_timeout():
	$B_Disparox4.disabled = false
	$B_Disparox4.modulate = Color(1,1,1,2)
	pass 

func _on_B_Disparox4_pressed():
	if vida and $B_Disparox4.modulate == Color(1,1,1,2):
		$B_Disparox4.modulate = Color(1,1,1,1)
		var Pos_disparox4 = Vector2()
		Pos_disparox4 = $Nave/Pos_bala.global_position 
		var tiro = Disparox4.instance()
		add_child(tiro)
		tiro.rotation_degrees= $Nave.rotation_degrees
		tiro.set_vector($Nave/Pos_bala2.global_position - Pos_disparox4)
		tiro.global_position = Pos_disparox4
		$T_disparox4.wait_time = 3
		$B_Disparox4.disabled = true
		pass

