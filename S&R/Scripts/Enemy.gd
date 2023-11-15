extends Node2D

var bullet_scene = load("res://Scenes/Bullet.tscn")

func _ready():
	$Timer.set_wait_time(.5)
	$Timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate(.1)

func spawn_bullets():
	var b1 = bullet_scene.instance()
	b1.position = self.position
	b1.rotation = self.rotation
	b1.dir = Vector2(1, 0)
	
	var b2 = bullet_scene.instance()
	b2.position = self.position
	b2.rotation = self.rotation
	b2.dir = Vector2(0, 1)
	
	var b3 = bullet_scene.instance()
	b3.position = self.position
	b3.rotation = self.rotation
	b3.dir = Vector2(-1, 0)
	
	var b4 = bullet_scene.instance()
	b4.position = self.position
	b4.rotation = self.rotation
	b4.dir = Vector2(0, -1)
	
	get_parent().add_child(b1)
	get_parent().add_child(b2)
	get_parent().add_child(b3)
	get_parent().add_child(b4)


func timeout():
	spawn_bullets()
	
