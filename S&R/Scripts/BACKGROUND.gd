extends ColorRect



func _ready():
	pass # Replace with function body.


func _process(delta):
	if ($LEFT.is_colliding()):
		var collid = $LEFT.get_collider().get_parent()
		if (collid.type == "BULLET"):
			collid.destroy()
	if ($RIGHT.is_colliding()):
		var collid = $RIGHT.get_collider().get_parent()
		if (collid.type == "BULLET"):
			collid.destroy()
	if ($UP.is_colliding()):
		var collid = $UP.get_collider().get_parent()
		if (collid.type == "BULLET"):
			collid.destroy()
	if ($DOWN.is_colliding()):
		var collid = $DOWN.get_collider().get_parent()
		if (collid.type == "BULLET"):
			collid.destroy()
	if ($LEFT2.is_colliding()):
		var collid = $LEFT2.get_collider().get_parent()
		if (collid.type == "BULLET"):
			collid.destroy()
	if ($RIGHT2.is_colliding()):
		var collid = $RIGHT2.get_collider().get_parent()
		if (collid.type == "BULLET"):
			collid.destroy()
	if ($UP2.is_colliding()):
		var collid = $UP2.get_collider().get_parent()
		if (collid.type == "BULLET"):
			collid.destroy()
	if ($DOWN2.is_colliding()):
		var collid = $DOWN2.get_collider().get_parent()
		if (collid.type == "BULLET"):
			collid.destroy()
