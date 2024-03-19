extends Node2D

var bullet_scene = load("res://Scenes/Bullet.tscn")
var time:int
var t=0

func _ready():
	$Timer.set_wait_time(.6)
	$Timer.start()

func _process(delta):
	pass

func pattern():
	
	if t<=time:
		var b1 = bullet_scene.instantiate()
		b1.position = self.position
		b1.rotation = self.rotation
		b1.speed = 6
		b1.dir = Vector2(1, 0)
		
		get_parent().add_child(b1)


func timeout():
	for i in range(36):
		pattern()
		rotate(.2)
	t+=0.05
