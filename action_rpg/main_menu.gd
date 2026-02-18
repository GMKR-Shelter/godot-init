extends Node2D


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://world/world.tscn")


func _on_options_pressed() -> void:
	OS.shell_open("https://shattereddisk.github.io/rickroll/rickroll.mp4")


func _on_quit_pressed() -> void:
	get_tree().quit()
