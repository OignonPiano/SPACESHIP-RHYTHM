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
	speed = DIST_TO_TARGET / 2.0

func destroy(score):
	$AnimatedSprite.visible = false
	$Timer.start()
	hit = true
	queue_free()
#	if score == 3:
#		$Node2D/Label.text = "GREAT"
#		$Node2D/Label.modulate = Color("f6d6bd")
#	elif score == 2:
#		$Node2D/Label.text = "GOOD"
#		$Node2D/Label.modulate = Color("f6d6bd")
#	elif score == 1:
#		$Node2D/Label.text = "OKAY"
#		$Node2D/Label.modulate = Color("f6d6bd")


func _on_Timer_timeout():
	queue_free()
