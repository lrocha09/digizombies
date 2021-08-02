extends Button

var on = load("res://assets/imgsound.png")
var off = load("res://assets/soundoff.png")
var active = "on"

export(bool) var start_focused = false

func _ready():
	if(start_focused):
		grab_focus()
		
	connect("mouse_entered",self,"_on_Button_mouse_entered")
	connect("pressed",self,"_on_Button_Pressed")
	
	if Global.sound == true:
		$TextureRect.set_texture(on)
	else:
		$TextureRect.set_texture(off)
	
func _process(delta):
	pass
	
func _on_Button_Pressed():
	if Global.sound == true:
		$button_pressed.play()
	if(active == "on"):
		$TextureRect.set_texture(off)
		active = "off"
		Global.sound = false
	else:
		$TextureRect.set_texture(on)
		active = "on"
		Global.sound = true

export var reference_path = ""

func _on_Button_mouse_entered():
	if Global.sound == true:
		$button_focus.play()
	grab_focus()

