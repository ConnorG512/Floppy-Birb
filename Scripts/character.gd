extends CharacterBody2D

var bAlive = true
var CharacterBody = CharacterBody2D

@onready var JumpTimer = $JumpTimer

@export var character_speed = 300 

var is_dead = false
var can_jump = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	character_movement()
	pass

func character_movement():
	
	if is_dead == true:
		return
	else: 
		velocity.y = character_speed
		move_and_slide()
		
		if Input.is_action_just_pressed("pull_up") and can_jump == true:
			velocity.y = -character_speed * 20
			move_and_slide()
			JumpTimer.start()

func jump_timer_end():
	can_jump = false
	can_jump = true
