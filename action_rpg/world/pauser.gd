extends Node2D

@onready var pause_audio_stream_player: AudioStreamPlayer = $PauseAudioStreamPlayer
@onready var unpause_audio_stream_player: AudioStreamPlayer = $UnpauseAudioStreamPlayer
@onready var pause_menu: CanvasLayer = $PauseMenu

func _ready():
	pause_menu.process_mode = Node.PROCESS_MODE_ALWAYS
	pause_menu.hide()

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		var is_paused = get_tree().paused
		if is_paused:
			unpause_audio_stream_player.play()
			pause_menu.hide()
		else: 
			pause_audio_stream_player.play()
			pause_menu.show()
		
		get_tree().paused = not is_paused
