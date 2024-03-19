extends AnimatedSprite2D

var entered = false
var current_note = null

var type = "button_to_press"

@export var input = "ui_select"

func _unhandled_input(event):
	if event.is_action(input):
		if event.is_action_pressed(input, false):
			if current_note != null:
				if entered:
					current_note.destroy(3)
				_reset()
		
		if event.is_action_pressed(input):
			frame = 1
		elif event.is_action_released(input):
			$PushTimer.set_wait_time(.1)
			$PushTimer.start()


func _on_AREA_area_entered(area):
	if area.is_in_group("note"):
		entered = true
		current_note = area

func _on_AREA_area_exited(area):
	if area.is_in_group("note"):
		entered = false
		current_note = area

func _on_PushTimer_timeout():
	frame = 0

func _reset():
	current_note = null
	entered = false

func destroy():
	pass
