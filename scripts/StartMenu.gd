extends Node2D

func _ready():
	$Cam/AnimationPlayer.play("Wackeln")
	$Cam/GUI/AnimationPlayer2.play("titleIDLE")
	$Cam/GUI/AnimationPlayer.play("FadeIn")
	$BG/AudioStreamPlayer2D.play(0)