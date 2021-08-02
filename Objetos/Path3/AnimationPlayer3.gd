extends AnimationPlayer

func _ready():
	var rand = RandomNumberGenerator.new()
	rand.randomize()
	var aux = rand.randi_range(1, 3)
	
	var zombie = "zombie" + str(aux)
	
	self.play(zombie)


