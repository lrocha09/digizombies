extends Node2D

var recordsRec: = preload("res://records.tres")
var SaveRecord: = preload("res://SaveRecord.gd")

var NewPontuacao = 0

func _ready():
	var save_record: = SaveRecord.new()
	
	if NewPontuacao > recordsRec.records:
		recordsRec.records = NewPontuacao 
				
	
	print(recordsRec.records)
	save_record.records = recordsRec.records

	ResourceSaver.save("res://records.tres", save_record)
	
	$Label.set_text(str(recordsRec.records))
	
func _physics_process(delta):
	var voltar = Input.is_action_just_pressed("voltar")
	
	if voltar:
		get_tree().change_scene("res://scenes/Menu.tscn")
		

