extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	var new_letter = get_letter()
	print(new_letter)
	print(len(Global.letter_bank))
	#here we would load in the existing partial bank



func get_letter():
	#if there are no letters in the bank then populate the bank
	if len(Global.letter_bank) <= 0:
		print("populate bank")
		populate_bank()

	return Global.letter_bank.pop_front()

	#We would use this funtion to grab a new letter and return it to whatever called it.
	
func populate_bank():
	#here we would fill up the bank this would happen if the bank was empty
	for x in range(1):
		Global.letter_bank.append('z')
		Global.letter_bank.append('j')
		Global.letter_bank.append('q')
		Global.letter_bank.append('x')
		
	for x in range(2):
		Global.letter_bank.append('w')
		Global.letter_bank.append('b')
		Global.letter_bank.append('c')
		Global.letter_bank.append('f')
		Global.letter_bank.append('k')
		Global.letter_bank.append('m')
		Global.letter_bank.append('p')
		Global.letter_bank.append('v')
		Global.letter_bank.append('h')
		
	for x in range(3):
		Global.letter_bank.append('y')
		Global.letter_bank.append('u')
	
	for x in range(4):
		Global.letter_bank.append('l')
		Global.letter_bank.append('g')

	for x in range(5):
		Global.letter_bank.append('d')
		
	for x in range(6):
		Global.letter_bank.append('n')
		Global.letter_bank.append('r')
		Global.letter_bank.append('s')
		Global.letter_bank.append('t')
		
	for x in range(7):
		Global.letter_bank.append('i')
		Global.letter_bank.append('o')
		
	for x in range(9):
		Global.letter_bank.append('a')

	for x in range(12):
		Global.letter_bank.append('e')
		
	#now shuffle the bank so that the first item pulled off is random
	Global.letter_bank.shuffle()
	print(Global.letter_bank)

func _exit_tree():
	print("leaving")
	#this is where we would save the bank and the game
