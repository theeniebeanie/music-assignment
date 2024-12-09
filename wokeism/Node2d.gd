extends Node2D

@onready var audio_player1 = $AudioStreamPlayer2D1
@onready var audio_player2 = $AudioStreamPlayer2D2
@onready var audio_player3 = $AudioStreamPlayer2D3
@onready var audio_player4 = $AudioStreamPlayer2D4

func toggle_sound(player: AudioStreamPlayer2D) -> void:
	if player.is_playing():
		player.stop()
	else:
		for p in [audio_player1, audio_player2, audio_player3, audio_player4]:
			p.stop()

		player.play()

func _on_texture_button1_pressed() -> void:
	toggle_sound(audio_player1)

func _on_texture_button2_pressed() -> void:
	toggle_sound(audio_player2)

func _on_texture_button3_pressed() -> void:
	toggle_sound(audio_player3)

func _on_texture_button4_pressed() -> void:
	toggle_sound(audio_player4)
