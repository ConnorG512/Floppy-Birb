extends CharacterBody2D

var movespeed = randi_range(-500, -1300)



func _ready():
	pass

func _physics_process(delta):
	move_accross_screen()
	pass
	
func move_accross_screen():
	velocity.x = movespeed
	move_and_slide()
