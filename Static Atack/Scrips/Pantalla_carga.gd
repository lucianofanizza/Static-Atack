extends Node

func _ready():
	pass

func _on_Timer_timeout():
	get_tree().change_scene("res://Escenas/Niveles/Nivel 1/Nivel 1.tscn")
	pass
