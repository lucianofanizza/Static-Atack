extends Node2D

func _ready():
	pass

func _on_B_reitentar_pressed():
	get_tree().change_scene("res://Escenas/Niveles/Nivel 1/Nivel 1.tscn")
	pass 


func _on_B_salir_pressed():
	get_tree().change_scene("res://Escenas/Menu principal/Menu.tscn")
	pass 
