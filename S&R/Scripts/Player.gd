extends Node2D

signal hp_changed(hp)

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _process(delta):
	self.position=get_global_mouse_position()
