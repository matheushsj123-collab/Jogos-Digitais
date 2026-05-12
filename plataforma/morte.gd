extends Area2D

func _on_body_entered(body):
	# Verifica se quem entrou na área tem a função "die" (que é o seu Player)
	if body.has_method("die"): 
		body.die()
