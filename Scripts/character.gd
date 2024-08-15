extends CharacterBody2D

var bAlive = true
var CharacterBody = CharacterBody2D

@onready var JumpTimer = $JumpTimer

@export var character_speed = 450

var is_dead = false
var can_jump = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	character_movement(character_speed)
	pass

func character_movement(character_speed):
	
	if is_dead == true:
		return
	else: 
		velocity.y = character_speed
		move_and_slide()
		
		if Input.is_action_pressed("pull_up"):
			velocity.y = -character_speed * 2.5
			move_and_slide()
