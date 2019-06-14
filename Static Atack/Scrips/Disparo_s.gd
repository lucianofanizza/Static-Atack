extends KinematicBody2D

var vec = Vector2()

func _ready():
	name = "Disparo_s"
	pass

func _physics_process(delta):
	move_and_slide(vec)
	pass

func set_vector(vector):
	vec = vector.normalized() * 500
	pass

func _on_Visibilidad_screen_exited():
	queue_free()
	pass 
