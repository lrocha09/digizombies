extends Node2D

const PRE_PARTICULAS = preload("res://Objetos/Particulas.tscn")

func _ready():
	if Global.sound == true:
		$Area2D/AudioStreamPlayer.play()
		
func _on_Area2D_area_entered(area):
	print("Pego por um Zombie!" )
	print("Pontuação: " + str(Global.pontuacao))
	get_tree().change_scene("res://scenes/FimDeJogo.tscn")

func _process(delta):
	var letra_A = Input.is_action_just_pressed("letra_A")
	var letra_B = Input.is_action_just_pressed("letra_B")
	var letra_C = Input.is_action_just_pressed("letra_C")
	var letra_D = Input.is_action_just_pressed("letra_D")
	var letra_E = Input.is_action_just_pressed("letra_E")
	var letra_F = Input.is_action_just_pressed("letra_F")
	var letra_G = Input.is_action_just_pressed("letra_G")
	var letra_H = Input.is_action_just_pressed("letra_H")
	var letra_I = Input.is_action_just_pressed("letra_I")
	var letra_J = Input.is_action_just_pressed("letra_J")
	var letra_K = Input.is_action_just_pressed("letra_K")
	var letra_L = Input.is_action_just_pressed("letra_L")
	var letra_M = Input.is_action_just_pressed("letra_M")
	var letra_N = Input.is_action_just_pressed("letra_N")
	var letra_O = Input.is_action_just_pressed("letra_O")
	var letra_P = Input.is_action_just_pressed("letra_P")
	var letra_Q = Input.is_action_just_pressed("letra_Q")
	var letra_R = Input.is_action_just_pressed("letra_R")
	var letra_S = Input.is_action_just_pressed("letra_S")
	var letra_T = Input.is_action_just_pressed("letra_T")
	var letra_U = Input.is_action_just_pressed("letra_U")
	var letra_V = Input.is_action_just_pressed("letra_V")
	var letra_W = Input.is_action_just_pressed("letra_W")
	var letra_Y = Input.is_action_just_pressed("letra_Y")
	var letra_X = Input.is_action_just_pressed("letra_X")
	var letra_Z = Input.is_action_just_pressed("letra_Z")

	
	if letra_A and Global.index3 == 1:
		#print("Clicou A")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_B and Global.index3 == 2:
		#print("Clicou B")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_C and Global.index3 == 3:
		#print("Clicou C")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_D and Global.index3 == 4:
		#print("Clicou D")	
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_E and Global.index3 == 5:
		#print("Clicou E")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_F and Global.index3 == 6:
		#print("Clicou F")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_G and Global.index3 == 7:
		#print("Clicou G")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_H and Global.index3== 8:
		#print("Clicou H")	
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_I and Global.index3 == 9:
		#print("Clicou I")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_J and Global.index3 == 10:
		#print("Clicou J")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_K and Global.index3 == 11:
		#print("Clicou K")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_L and Global.index3 == 12:
		#print("Clicou L")	
		aumentar_pontuacao()
		respawn_zombie()
			
	if letra_M and Global.index3 == 13:
		#print("Clicou M")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_N and Global.index3 == 14:
		#print("Clicou N")
		aumentar_pontuacao()
		respawn_zombie()
			
	if letra_O and Global.index3 == 15:
		#print("Clicou O")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_P and Global.index3 == 16:
		#print("Clicou P")	
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_Q and Global.index3 == 17:
		#print("Clicou Q")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_R and Global.index3 == 18:
		#print("Clicou R")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_S and Global.index3 == 19:
		#print("Clicou S")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_T and Global.index3 == 20:
		#print("Clicou T")	
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_U and Global.index3 == 21:
		#print("Clicou U")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_V and Global.index3 == 22:
		#print("Clicou V")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_W and Global.index3 == 23:
		#print("Clicou W")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_Y and Global.index3 == 24:
		#print("Clicou Y")	
		aumentar_pontuacao()
		respawn_zombie()
			
	if letra_X and Global.index3 == 25:
		#print("Clicou X")
		aumentar_pontuacao()
		respawn_zombie()
		
	if letra_Z and Global.index3 == 26:
		#print("Clicou Z")	
		aumentar_pontuacao()
		respawn_zombie()
					

func respawn_zombie():
	var rand = RandomNumberGenerator.new()
	var screen_size = get_viewport().get_visible_rect().size
	
	var enemyscene = load("res://Objetos/Path3/Path3.tscn")
	
	var enemy = enemyscene.instance()
	
	rand.randomize()
	var x = rand.randf_range(100, 200)
	rand.randomize()
	var y = rand.randf_range(0, 100)
	
	#print(x)
	#print(y)
	enemy.position.x = x
	enemy.position.y = 0
		
	add_child(enemy)
	#print(get_children())
	
	var aux = get_child(0)
	
	on_particulas(aux)
	
	remove_child(aux)
		
func aumentar_pontuacao():
	Global.pontuacao += 1 
	Global.speed += 1
	print("Pontuação: " + str(Global.pontuacao))
	
func on_particulas(zombie):
	var particula = PRE_PARTICULAS.instance()
	add_child(particula)
	particula.global_position = Global.position3
	
		

	
	
	

