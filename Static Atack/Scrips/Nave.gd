extends Area2D

var rotation_dir = 5

func _ready():
	name = "Nave"
	pass

func _process(delta):
	if Input.is_action_pressed("ui_right"):
		rotation_degrees += rotation_dir
	if Input.is_action_pressed("ui_left"):
		rotation_degrees -= rotation_dir
	pass

func _on_Nave_area_entered(area):
	if area.name == "Enemigo":
		$HUD/Barra_vida.value -= 25
	if area.name == "Enemigo2":
		$HUD/Barra_vida.value -= 25
	if area.name == "Enemigo3":
		$HUD/Barra_vida.value -= 25
	if area.name == "Enemigo4":
		$HUD/Barra_vida.value -= 25
	if area.name == "Enemigo5":
		$HUD/Barra_vida.value -= 25
	if area.name == "Enemigo6":
		$HUD/Barra_vida.value -= 25
	if area.name == "Enemigo7":
		$HUD/Barra_vida.value -= 25
	if area.name == "Enemigo8":
		$HUD/Barra_vida.value -= 25
	if area.name == "Enemigo9":
		$HUD/Barra_vida.value -= 25
	if area.name == "Enemigo10":
		$HUD/Barra_vida.value -= 25
	pass 

func _on_Nave_body_entered(body):
	if body.name == "Escudo":
		$HUD/Barra_mana.value -= 10
	pass

func _on_Reg_mana_timeout():
	$HUD/Barra_mana.value += 10
	pass 

func _on_B_iz_pressed():
	if $HUD/B_iz.pressed:
		rotation_degrees -= rotation_dir
	pass 

func _on_B_de_pressed():
	if $HUD/B_de.pressed:
		rotation_degrees += rotation_dir
	pass 
