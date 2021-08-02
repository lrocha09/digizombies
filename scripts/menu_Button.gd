extends Button

export var reference_path = ""
export(bool) var start_focused = false

func _ready():
	if(start_focused):
		grab_focus()
		
	connect("mouse_entered",self,"_on_Button_mouse_entered")
	connect("pressed",self,"_on_Button_Pressed")

func _on_Button_mouse_entered():
	if Global.sound == true:
		$button_focus.play()
	grab_focus()

func _on_Button_Pressed():
	if Global.sound == true:
		$button_pressed.play()
	if(reference_path != ""):
		get_tree().change_scene(reference_path)
	else:
		get_tree().quit()
