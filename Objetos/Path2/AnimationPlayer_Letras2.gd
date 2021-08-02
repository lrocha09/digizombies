extends AnimationPlayer


func _ready():
	var rand = RandomNumberGenerator.new()
	rand.randomize()
	Global.index2 = rand.randi_range(1, 26)
	
	var letra = "letra_" + str(Global.index2)
	#print("Animação: letra_" + str(Global.index))
	
	self.play(letra)
