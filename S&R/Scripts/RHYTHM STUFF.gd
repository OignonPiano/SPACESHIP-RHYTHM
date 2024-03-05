extends Node2D

var score = 0
var combo = 0

var max_combo = 0
var great = 0
var good = 0
var okay = 0
var missed = 0

var bpm = 115

var song_position = 0.0
var song_position_in_beats = 0
var last_spawned_beat = 0
var sec_per_beat = 60.0 / bpm

var lane = 0
var rand = 0
var note = load("res://Scenes/Note.tscn")
var instance

var type="control"

func _ready():
	$Timer.set_wait_time(.5)
	$Timer.start()

func _spawn_notes(to_spawn):
	instance = note.instance()
	instance.initialize()
	instance.add_to_group("note")
	add_child(instance)

func destroy():
	pass

func _on_Timer_timeout():
	_spawn_notes(1)
