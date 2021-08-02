extends Node2D

func _ready():	
	Global.pontuacao = 0
	Global.speed = 20
	$Label.set_text(str(Global.pontuacao)) 
	
	if Global.sound == true:
		$AudioStreamPlayer.play()		
		
func _physics_process(delta):
	pass

func _process(delta):
	$Label.set_text(str(Global.pontuacao)) 
