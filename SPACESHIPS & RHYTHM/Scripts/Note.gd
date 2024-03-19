extends Area2D

const TARGET_X = -32
const SPAWN_X = 932
const SPAWN_Y = 508
const DIST_TO_TARGET = TARGET_X - SPAWN_X

var type = "note"

var speed = 0
var hit = false

func _ready():
	initialize()

func _physics_process(delta):
	if !hit:
		position.x += speed * delta
		if position.x < 0:
			queue_free()
		else:
			$Node2D.position.x -= speed * delta

func initialize():
	speed = DIST_TO_TARGET / 1.5

func destroy():
	$AnimatedSprite2D.visible = false
	$Timer.start()
	hit = true
	queue_free()

func _on_Timer_timeout():
	queue_free()