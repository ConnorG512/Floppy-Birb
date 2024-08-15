extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func player_entered_area(body_rid, body, body_shape_index, local_shape_index):
	SignalEventBus.emit_signal("player_hit_death_trigger")
