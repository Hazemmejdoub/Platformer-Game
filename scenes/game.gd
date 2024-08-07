extends Node2D

@onready var game_sound = $"game sound"
@onready var samara_sound = $"Area2D/samara sound"
@onready var area_2d = $Area2D
@onready var player = $player
@onready var camera_2d = $player/Camera2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var player_position = player.global_position
	var samara_position = area_2d.global_position
	if pow(pow(player_position.x - samara_position.x , 2) + pow(player_position.y - samara_position.y , 2),0.5) < 85:
		game_sound.stream_paused = true
		#camera_2d.set_zoom(Vector2(6,6))
	else:
		#camera_2d.set_zoom(Vector2(4,4))
		game_sound.stream_paused = false
	
	#if pow(pow(player_position.x - samara_position.x , 2) + pow(player_position.y - samara_position.y , 2),0.5) < 200:
		#samara_sound.playing = true
v
