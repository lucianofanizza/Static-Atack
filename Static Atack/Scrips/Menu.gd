extends Node2D

func _ready():
	pass

func _on_B_jugar_pressed():
	get_tree().change_scene("res://Escenas/Menu principal/Pantalla_carga.tscn")
	pass 

func _on_B_salir_pressed():
	get_tree().quit()
	pass 
