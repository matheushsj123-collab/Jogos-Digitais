extends Area2D

func _process(delta):
	position.x -= 200 * delta 

func _on_body_entered(body):
	if body.name == "Player":
		body.take_damage()
		queue_free() 
	# ADICIONE ISSO: Se bater em qualquer coisa que não seja o atirador, a bala some
	elif body is TileMap or body is StaticBody2D:
		queue_free()
