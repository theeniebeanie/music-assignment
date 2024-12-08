extends HSlider

@onready var volume_slider: HSlider = $"."
@onready var click_audio: AudioStreamPlayer = $"../click_audio"

func _process(delta: float) -> void:
	pass

func _ready():
	click_audio.volume_db = volume_slider.value
	volume_slider.value_changed.connect(_on_slider_value_changed)

func _on_slider_value_changed(value: float) -> void:
	click_audio.volume_db = value
