extends Node2D

var bullet_scene = load("res://Scenes/Bullet.tscn")
var time = 10
var t=0
var rng = RandomNumberGenerator.new()

func _ready():
	$Timer.set_wait_time(.05)
	$Timer.start()

func _process(delta):
	pass

func pattern1():
	var b1 = bullet_scene.instantiate()
	b1.position = self.position
	b1.rotation = self.rotation
	b1.dir = Vector2(1, 0)
	b1.speed = 6
	
	var b2 = bullet_scene.instantiate()
	b2.position = self.position
	b2.rotation = self.rotation
	b2.dir = Vector2(0, 1)
	b2.speed = 6
	
	var b3 = bullet_scene.instantiate()
	b3.position = self.position
	b3.rotation = self.rotation
	b3.dir = Vector2(-1, 0)
	b3.speed = 6
	
	var b4 = bullet_scene.instantiate()
	b4.position = self.position
	b4.rotation = self.rotation
	b4.dir = Vector2(0, -1)
	b4.speed = 6
	
	get_parent().add_child(b1)
	get_parent().add_child(b2)
	get_parent().add_child(b3)
	get_parent().add_child(b4)

func pattern2_1():
	for i in range(12,1,-1):
		var b = bullet_scene.instantiate()
		b.position = self.position
		b.rotation = self.rotation
		b.dir = Vector2(1, 0)
		b.speed = i
		get_parent().add_child(b)

func pattern2_2():
	var b1 = bullet_scene.instantiate()
	b1.position = self.position
	b1.rotation = self.rotation
	b1.dir = Vector2(1, 0)
	b1.speed = 4
	
	var b2 = bullet_scene.instantiate()
	b2.position = self.position
	b2.rotation = self.rotation
	b2.dir = Vector2(0, 1)
	b2.speed = 4
	
	var b3 = bullet_scene.instantiate()
	b3.position = self.position
	b3.rotation = self.rotation
	b3.dir = Vector2(-1, 0)
	b3.speed = 4
	
	var b4 = bullet_scene.instantiate()
	b4.position = self.position
	b4.rotation = self.rotation
	b4.dir = Vector2(0, -1)
	b4.speed = 4
	
	get_parent().add_child(b1)
	get_parent().add_child(b2)
	get_parent().add_child(b3)
	get_parent().add_child(b4)

func pattern3():
	for i in range(12,1,-1):
		var b1 = bullet_scene.instantiate()
		b1.position = self.position
		b1.rotation = self.rotation
		b1.dir = Vector2(1, 0)
		b1.speed = i
		get_parent().add_child(b1)
	
	for i in range(12,1,-1):
		var b2 = bullet_scene.instantiate()
		b2.position = self.position
		b2.rotation = self.rotation
		b2.dir = Vector2(-1, 0)
		b2.speed = i
		get_parent().add_child(b2)
#
#	for i in range(12,1,-1):
#		var b3 = bullet_scene.instance()
#		b3.position = self.position
#		b3.rotation = self.rotation
#		b3.dir = Vector2(-1, 0)
#		b3.speed = i
#		get_parent().add_child(b3)
#
#	for i in range(12,1,-1):
#		var b4 = bullet_scene.instance()
#		b4.position = self.position
#		b4.rotation = self.rotation
#		b4.dir = Vector2(0, -1)
#		b4.speed = i
#		get_parent().add_child(b4)

func timeout():
	t+=1
	
	if t<100:
		pattern1()
		rotate(.1)
	if t>140 and t<500:
		rotate(.1)
		if (t-140)%2==0:
			pattern2_1()
		if (t-140)%4==0:
			pattern2_2()
	if t>550 and t<700:
		if (t-140)%12==0:
			self.position.x=rng.randf_range(20.0, 984.0)
			self.position.y=rng.randf_range(20.0, 580.0)
		if ((t-140)%12)-5==0:
			look_at(get_global_mouse_position())
			pattern3()
