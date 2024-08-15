extends CharacterBody2D

var movespeed = -400

func _ready():
	pass

func _physics_process(delta):
	generate_speed()
	move_accross_screen()
	pass

func generate_speed():
	# Generate a random movespeed for speed variety
	movespeed = randi_range(-1000, -100)
	pass
	
func move_accross_screen():
	velocity.x = movespeed 
	move_and_slide()

func kill_pipe():
	pass
