extends CharacterBody2D

var bAlive = true
var CharacterBody = CharacterBody2D

@onready var JumpTimer = $JumpTimer

@export var descent_speed = 450
@export var pull_up_power = -800

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	movement()
	

func _physics_process(delta):
	pass
func movement():
	
	velocity.y = descent_speed
	
	if Input.is_action_pressed("pull_up"):
		velocity.y = pull_up_power
		
	move_and_slide()
