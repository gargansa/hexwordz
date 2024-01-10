extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("level node is ready")
	$Level.position += Vector2(50,50)
	$Timed.rotation_degrees +=10


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Timed.rotation_degrees > 0:
		$Timed.rotation_degrees -=0.1
	if $Level.position.x < 1000:
		$Timed.position.x +=1
		
	print(Input.is_action_just_pressed("click"))
