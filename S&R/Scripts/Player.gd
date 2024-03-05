extends Node2D

var damage
var hp = 100

onready var pb = $Control/ProgressBar

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	pb.value=100

func _process(delta):
	self.position=get_global_mouse_position()
	
	if ($RayCast2D.is_colliding()):
		
		var collid = $RayCast2D.get_collider().get_parent()
		if (collid.type== "BULLET"):
			damage = true
		
		collid.destroy()
		hp -= 10
		
		pb.value=hp
		
	else:
		damage = false
