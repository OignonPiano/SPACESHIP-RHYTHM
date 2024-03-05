extends Node2D

var type = "BULLET"

var dir = Vector2(1, 0)
var damage

func _ready():
	pass


func _process(delta):
	self.position += 2*dir.rotated(self.rotation)

func destroy():
	queue_free()
