extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("reload_level"):
		on_player_death()

# Call the reset level deffered to prevent errors. signal from character.
func on_player_death():
	call_deferred("reload_level")

func reload_level():
	get_tree().reload_current_scene()
