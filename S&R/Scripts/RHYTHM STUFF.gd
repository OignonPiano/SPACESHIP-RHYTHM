extends Node2D

var bpm = 90
var t = 0
var r = 0

var note = load("res://Scenes/Note.tscn")

var type="control"

func _ready():
	$Timer.set_wait_time(1.5/8)
	$Timer.start()

func _spawn_notes():
	var instance = note.instantiate()
	instance.initialize()
	instance.add_to_group("note")
	add_child(instance)

func destroy():
	pass

func _on_Timer_timeout():
	t+=1
	if t == 1 :
		if r == 2:
			_spawn_notes()
			$MUSIC.play(0.0)
			r = 3
		else:
			_spawn_notes()
	if t == 4 :
		_spawn_notes()
	if t == 7 :
		_spawn_notes()
	if t == 8 :
		if r == 1:
			r = 2
		if r == 0:
			r = 1
		
		t = 0
