extends Node2D

var pipe_spawn = preload("res://Scenes/Pipe Spawn/pipe_spawn.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_pipe(Vector2(720, 0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func spawn_pipe(spawn_pos):
	var pipe_spawn_instance = pipe_spawn.instantiate()
	pipe_spawn_instance.position = spawn_pos
	add_child(pipe_spawn_instance)
	print("Spawned!")
