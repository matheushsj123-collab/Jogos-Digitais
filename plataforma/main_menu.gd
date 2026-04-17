extends Control

func _on_btn_jogar_pressed():
	# Carrega a primeira fase
	get_tree().change_scene_to_file("res://Level1.tscn")

func _on_btn_sair_pressed():
	# Fecha o jogo e volta para a área de trabalho do Windows/Mac
	get_tree().quit()


func _on_button_pressed() -> void:
	pass # Replace with function body.


func _on_button_2_pressed() -> void:
	pass # Replace with function body.
