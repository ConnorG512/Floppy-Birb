extends Node2D

var score_amount = 1

func score_trigger_entered(body):
	print(body)
	SignalEventBus.emit_signal("game_score_updated")
