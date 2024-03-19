extends Node2D

var bpm = 90
var t = 0
var r = 0

var note = load("res://Scenes/Note.tscn")

var type="control"

func _ready():
	$Timer.set_wait_time(1)
	$Timer.start()

func spawn_note():
	var instance = note.instantiate()
	instance.initialize()
	instance.add_to_group("note")
	add_child(instance)

func destroy():
	pass

func _on_Timer_timeout():
	if t==1 or t==4 or t ==7:
		spawn_note()
	if t ==8:
		t=0
	t+=1
