extends Control

@onready var play_button = $Button
@onready var audio_player = $AudioStreamPlayer

var is_playing = false

func _on_play_button_pressed(): 
	if $AudioStreamPlayer2D.playing:
		$Button.text = "Play"
		$AudioStreamPlayer2D.stop()
	else: 
		$Button.text = "Stop"
		$AudioStreamPlayer2D.play()
