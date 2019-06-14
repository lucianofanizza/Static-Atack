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
	if $HUD/Barra_vida.value == 0:
		queue_free()
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
