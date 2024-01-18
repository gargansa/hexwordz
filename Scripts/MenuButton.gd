extends Node2D

func _init():
	print("init")
	

		

# Called when the node enters the scene tree for the first time.
func _ready():
	$Button.text = self.get_name()
	print(self.get_name().length())
	
	var i = 0
	for char in self.get_name().to_ascii_buffer().get_string_from_ascii(): 
		var hex = preload("res://Scenes/hex.tscn").instantiate()
		hex.set_label(char)
		hex.next_position(i)
		i+=1
		self.add_child(hex)
		
		
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	print("Clicked "+self.get_name())
	get_tree().change_scene_to_file("res://Scenes/"+self.get_name()+".tscn")
