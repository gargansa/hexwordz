extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Button.text = self.get_name()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	print("Clicked "+self.get_name())
	get_tree().change_scene_to_file("res://Scenes/"+self.get_name()+".tscn")
