extends Node2D

func _ready():
	$Cam/AnimationPlayer.play("Wackeln")
	$Cam/GUI/title/AnimationPlayer2.play("titleIDLE");
	$Cam/GUI/AnimationPlayer.play("fadeIn")
	$BG/AudioStreamPlayer2D.play(0)


func _on_PlayButton_pressed():
	$Cam/GUI/title/AnimationPlayer2.play("titlePLAY");
	$Cam/GUI/AnimationPlayer.play("fadeOut");			#HELP Warum wird das nicht ausgeführt ?
	yield($Cam/GUI/title/AnimationPlayer2, "animation_finished");