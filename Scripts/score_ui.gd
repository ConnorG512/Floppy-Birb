extends Control

@onready var score_label = $ScoreLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	SignalEventBus.game_score_ui_update.connect(update_score)
	visible = false # Hides score UI at start of the game
	pass # Replace with function body.

func update_score(current_score):
	score_label.clear()
	# Adds the score to the text field and makes it centered, BBCode needs to be enabled
	score_label.append_text("[center]" + str(current_score) + "[/center]")
	visible = true
