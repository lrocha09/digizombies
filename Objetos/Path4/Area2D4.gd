extends Area2D

var velocity = Vector2() 

func _ready():
	set_process(true)
	
func _physics_process(delta):
	move()
	self.translate(velocity * delta)
	
func move():
	velocity.x = -Global.speed  
	velocity.y = Global.speed  
	
	Global.position4 = self.global_position
	
