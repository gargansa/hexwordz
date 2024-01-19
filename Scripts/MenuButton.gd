extends Node2D

func _init():
	pass #dont have a length here yet
	
	
	

		

# Called when the node enters the scene tree for the first time.
func _ready():
	var length = self.get_name().length()
	var size = Vector2(0,0)
	
	var i = 0
	for char in self.get_name().to_ascii_buffer().get_string_from_ascii(): 
		var hex = preload("res://Scenes/hex.tscn").instantiate()
		hex.set_label(char)
		hex.next_position(i)
		hex.z_index = -10
		size = hex.get_size()
		i+=1
		self.add_child(hex)
		
	$CPUParticles2D.emission_rect_extents.x = length*size.x
	$CPUParticles2D.emission_rect_extents.y = size.y

	$Button.set_size(Vector2(length*size.x, size.y))





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	print("Clicked "+self.get_name())
	get_tree().change_scene_to_file("res://Scenes/"+self.get_name()+".tscn")




func _on_button_mouse_entered():
	print("mouse Entered")
	$CPUParticles2D.emitting = true


func _on_button_mouse_exited():
	print("mouse Exit")
	$CPUParticles2D.emitting = false
