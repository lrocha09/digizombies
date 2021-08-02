extends AnimationPlayer


func _ready():
	var rand = RandomNumberGenerator.new()
	rand.randomize()
	Global.index3 = rand.randi_range(1, 26)
	
	var letra = "letra_" + str(Global.index3)
	#print("Animação: letra_" + str(Global.index))
	
	self.play(letra)
