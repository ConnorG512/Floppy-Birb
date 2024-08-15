extends Control

@onready var ScoreText = $ScoreText

# Called when the node enters the scene tree for the first time.
func _ready():
	SignalEventBus.game_score_updated.connect(update_score)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func update_score(current_score):
	ScoreText.clear()
	ScoreText.add_text(current_score.ToString())
