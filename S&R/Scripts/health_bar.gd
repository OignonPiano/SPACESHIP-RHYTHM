extends Control

@onready var progress = $TextureProgressBar


func _on_area_2d_health_changed(new_health):
	progress.value=new_health
