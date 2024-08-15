extends Node2D

var pipe_spawn = preload("res://Scenes/Pipe Spawn/pipe_spawn.tscn")
var pipe_spawn_pos = Vector2(720,0)

@onready var spawn_timer = $Timer

func timer_change_wait_time():
	var spawn_time = randf_range(0.5, 3.0)
	spawn_timer.wait_time = spawn_time

func spawn_new_pipe():
	var pipe_spawn_instance = pipe_spawn.instantiate()
	pipe_spawn_instance.position = pipe_spawn_pos
	add_child(pipe_spawn_instance)
	timer_change_wait_time()
	spawn_timer.start()

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_new_pipe()