extends Control

@onready var score_label = $ScoreLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	SignalEventBus.game_score_ui_update.connect(update_score)
	pass # Replace with function body.

func update_score(current_score):
	score_label.clear()
	score_label.add_text(str(current_score))
