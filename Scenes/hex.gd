extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_label(string):
	$Label.text = string

func next_position(position):
	var size = get_size()
	self.position.x = size.x * position


func get_size():
	return Vector2(
		$TextureRect.texture.get_width(),
		$TextureRect.texture.get_height()
		) * $TextureRect.scale
