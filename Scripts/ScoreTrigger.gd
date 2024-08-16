extends Node2D

var score_amount = 1
var can_be_triggered = true

func score_trigger_entered(_body):
	if can_be_triggered == true:
		SignalEventBus.emit_signal("game_score_updated", score_amount)
		can_be_triggered = false
	
