extends CharacterBody2D

var gravity = 980.0

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	move_and_slide()

# Esta função cuida do pulo aleatório
func _on_jump_timer_timeout():
	if is_on_floor():
		velocity.y = -350.0 
		velocity.x = randi_range(-1, 1) * 100

# Esta é uma função SEPARADA para o sinal de colisão
# Certifique-se de que o nome da função no sinal (Node > Signals) seja este:
func _on_body_entered(body):
	if body.name == "Player":
		body.take_damage()
