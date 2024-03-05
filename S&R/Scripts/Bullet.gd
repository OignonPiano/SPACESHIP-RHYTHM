extends Node2D

var type = "BULLET"
var player = load("res://Scenes/Player.tscn")

var b1 = player.instance()
var dir = Vector2(1,1)
var speed = 1

func _ready():
	pass


func _process(delta):
	self.position += speed*dir.rotated(self.rotation)

func destroy():
	queue_free()
