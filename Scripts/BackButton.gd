extends Node2D

func _ready():
	pass

func _on_texture_button_pressed():
	print("Back button clicked")
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
