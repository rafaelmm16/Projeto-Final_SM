extends AudioStreamPlayer2D
class_name SoundEffect

func _ready() -> void:
	play()


func on_Sfx_finished() -> void:
	queue_free()
