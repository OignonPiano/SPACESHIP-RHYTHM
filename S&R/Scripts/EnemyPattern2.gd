extends Node2D

var bullet_scene = load("res://Scenes/Bullet.tscn")
var time = 10
var t=0

func _ready():
	$Timer.set_wait_time(.4)
	$Timer.start()

func _process(delta):
	pass

func pattern():
	
	if t<=time:
		var b1 = bullet_scene.instance()
		b1.position = self.position
		b1.rotation = self.rotation
		b1.speed = 6
		b1.dir = Vector2(1, 0)
		
		var b2 = bullet_scene.instance()
		b2.position = self.position
		b2.rotation = self.rotation
		b2.speed = 2
		b2.dir = Vector2(0, 1)
		
		var b3 = bullet_scene.instance()
		b3.position = self.position
		b3.rotation = self.rotation
		b3.speed = 6
		b3.dir = Vector2(-1, 0)
		
		var b4 = bullet_scene.instance()
		b4.position = self.position
		b4.rotation = self.rotation
		b4.speed = 2
		b4.dir = Vector2(0, -1)
		
		var b5 = bullet_scene.instance()
		b5.position = self.position
		b5.rotation = self.rotation
		b5.speed = 2
		b5.dir = Vector2(1, 1)
		
		var b6 = bullet_scene.instance()
		b6.position = self.position
		b6.rotation = self.rotation
		b6.speed = 2
		b6.dir = Vector2(-1, 1)
		
		var b7 = bullet_scene.instance()
		b7.position = self.position
		b7.rotation = self.rotation
		b7.speed = 2
		b7.dir = Vector2(-1, -1)
		
		var b8 = bullet_scene.instance()
		b8.position = self.position
		b8.rotation = self.rotation
		b8.speed = 2
		b8.dir = Vector2(1, -1)
		
		get_parent().add_child(b1)
		get_parent().add_child(b2)
		get_parent().add_child(b3)
		get_parent().add_child(b4)
		get_parent().add_child(b5)
		get_parent().add_child(b6)
		get_parent().add_child(b7)
		get_parent().add_child(b8)


func timeout():
	for i in range(4):
		pattern()
		rotate(.2)
	t+=0.05
	rotate(.4)
