extends Node2D

var bullet_scene = load("res://Scenes/Bullet.tscn")
var n = 1

var time:int
var t=0

func _ready():
	$Timer.set_wait_time(.05)
	$Timer.start()

func _process(delta):
	pass

func pattern():
	
	if t<=time:
		var b1 = bullet_scene.instance()
		b1.position = self.position
		b1.rotation = self.rotation
		b1.speed = 2
		b1.dir = Vector2(1, 1)
		
		var b2 = bullet_scene.instance()
		b2.position = self.position
		b2.rotation = self.rotation
		b2.speed = 2
		b2.dir = Vector2(-1, -1)
		
		var b3 = bullet_scene.instance()
		b3.position = self.position
		b3.rotation = self.rotation
		b3.speed = 2
		b3.dir = Vector2(-1, 1)
		
		var b4 = bullet_scene.instance()
		b4.position = self.position
		b4.rotation = self.rotation
		b4.speed = 2
		b4.dir = Vector2(1, -1)
		
		get_parent().add_child(b1)
		get_parent().add_child(b2)
		get_parent().add_child(b3)
		get_parent().add_child(b4)


func timeout():
	
	if n < 10:
		pattern()
		rotate(.2)
		n+=1
	elif n < 20:
		if n%2==0:
			pattern()
		n+=1
	else:
		n = 1
	t+=0.05
