extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Global singal emitted from signal_event_bus when the player hits the trigger.
func player_entered_pipe(body):
	SignalEventBus.emit_signal("player_hit_death_trigger")
