extends Node2D

onready var bird: KinematicBody2D = get_node("Bird")
onready var interface: CanvasLayer = get_node("Interface")
onready var parallax_background: ParallaxBackground = get_node("ParallaxBackground")
onready var pipe_spawn: Position2D = parallax_background.get_node("PipeSpawn")

func _ready() -> void:
	var _start = interface.connect("start_game", self, "start_game")
	var _game_over = bird.connect("game_over", self, "game_over")
	
	
func start_game() -> void:
	bird.start()
	pipe_spawn.spaw()
	
	
func game_over() -> void:
	interface.game_over()
	parallax_background.game_over()
	pipe_spawn.game_over()
