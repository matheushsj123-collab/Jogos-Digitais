extends Area2D

func _on_body_entered(body):
	# Verifica se quem caiu na área é o jogador
	if body.name == "Player": 
		morrer()

func morrer():
	print("O jogador caiu no void!")
	# Reinicia a cena atual
	get_tree().reload_current_scene()
