extends Node2D

var pattern1_scene = load("res://Scenes/EnemyPattern1.tscn")
var pattern2_scene = load("res://Scenes/EnemyPattern2.tscn")
var p = 1
onready var timer = $Timer

func _ready():
	pattern(2)
	timer.set_wait_time(8)
	timer.start()

func pattern(n):
	if n == 1:
		var pattern = pattern1_scene.instance()
		add_child(pattern)
	elif n == 2 :
		var pattern = pattern2_scene.instance()
		add_child(pattern)


func _on_Timer_timeout():
	for n in self.get_children():
		self.remove_child(n)
	pattern(p)
	
	if p==1:
		p=2
	elif p == 2:
		p=1
	
	timer.start()
