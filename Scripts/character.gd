extends CharacterBody2D

var bAlive = true
var CharacterBody = CharacterBody2D

@onready var JumpTimer = $JumpTimer
@onready var AnimatedSprite = $AnimatedSprite2D

@export var character_speed = 375 

var is_dead = false
var can_jump = true
var current_score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	SignalEventBus.player_hit_death_trigger.connect(player_die)
	SignalEventBus.game_score_updated.connect(update_score)

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
			velocity.y = -character_speed * 25
			move_and_slide()
			JumpTimer.start()
			AnimatedSprite.play("wing_down")
			can_jump = false

func jump_timer_end():
	AnimatedSprite.play("wing_up")
	can_jump = true

func player_die():
	print("Player Died!")
	queue_free()

func update_score(scoreToAdd):
	current_score += scoreToAdd
	SignalEventBus.emit_signal("game_score_ui_update", current_score)
