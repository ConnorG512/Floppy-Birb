extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()

@onready var HighScoreValueText = $"GridContainer/High Score Value"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pause_key_pressed()

func pause_key_pressed():
	if Input.is_action_just_pressed("pause_game"):
		var game_paused = get_tree().paused
		if game_paused == false:
			pause_game()
		else:
			resume_game()

func resume_game():
	get_tree().paused = false
	hide()

func pause_game():
	get_tree().paused = true
	HighScoreValueText.clear()
	HighScoreValueText.add_text(str(PlayerStats.high_score))
	show()

func quit_game():
	get_tree().quit(0)
