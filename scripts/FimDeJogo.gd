extends Node2D
var recordsRec: = preload("res://records.tres")
var SaveRecord: = preload("res://SaveRecord.gd")

func _ready():
	if Global.sound == true:
		$AudioStreamPlayer2.play()	
		$AudioStreamPlayer.play()	
		
		
	$Label.set_text(str(Global.pontuacao))
	
	var save_record: = SaveRecord.new()
	
	if Global.pontuacao > recordsRec.records:
		recordsRec.records = Global.pontuacao 
				
		save_record.records = recordsRec.records
		ResourceSaver.save("res://records.tres", save_record)
		print("Novo recorde: " + str(recordsRec.records))
		
func _physics_process(delta):
	var voltar = Input.is_action_just_pressed("voltar")
	
	if voltar:
		get_tree().change_scene("res://scenes/Menu.tscn")
		Global.pontuacao = 0
