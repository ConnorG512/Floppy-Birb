extends Node2D

var score_amount = 1
var can_be_triggered = true

func score_trigger_entered(body):
	if can_be_triggered == true:
		SignalEventBus.emit_signal("game_score_updated")
		can_be_triggered = false
	
