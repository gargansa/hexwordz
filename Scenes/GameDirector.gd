extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var letterBank = preload("res://Scenes/LetterBank.tscn").instantiate()
	self.add_child(letterBank)
	print("Added letter Bank")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
