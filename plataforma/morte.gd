extends Area2D

func _on_body_entered(body):
	# Verifica se quem caiu na área é o jogador
	if body.name == "Player": 
		morrer()

func morrer():
	print("O jogador caiu no void!")
	Global.health = 3 # Adicione isso para a vida voltar ao normal!
	get_tree().reload_current_scene()
