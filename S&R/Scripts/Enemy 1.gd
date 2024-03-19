extends Node2D

var pattern1_scene = load("res://Scenes/EnemyPattern3.tscn")
var pattern2_scene = load("res://Scenes/EnemyPattern4.tscn")
var p = 1
@onready var timer = $Timer

func _ready():
	pattern(2)
	timer.one_shot = true
	timer.set_wait_time(8)
	timer.start()

func pattern(n):
	if n == 1:
		var pattern = pattern1_scene.instantiate()
		pattern.time=8
		add_child(pattern)
		timer.start()
	elif n == 2 :
		var pattern = pattern2_scene.instantiate()
		pattern.time=8
		add_child(pattern)


func timeout():
	for n in self.get_children():
		self.remove_child(n)
	pattern(p)
	
	if p==1:
		p=2
	elif p == 2:
		p=1
