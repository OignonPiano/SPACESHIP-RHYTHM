extends Area2D

var hp = 100

signal health_changed(new_health)

func take_damage(amount):
	hp-=amount
	if hp<0:
		hp=0
	
	get_node("health_bar").play("take_damage")
	emit_signal("health_changed", hp)

func _on_area_entered(area):
	take_damage(10)
