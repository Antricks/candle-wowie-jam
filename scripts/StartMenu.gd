extends Node2D

func _ready():
	$Cam/AnimationPlayer.play("Wackeln")
	$Cam/GUI/title/AnimationPlayer2.play("titleIDLE");
	$Cam/GUI/AnimationPlayer.play("FadeIn")
	$BG/AudioStreamPlayer2D.play(0)


func _on_PlayButton_pressed():
	$Cam/GUI/AnimationPlayer2.play("titlePLAY");
	$Cam/GUI/AnimationPlayer.play("ButtonPLAY");			#HELP Warum wird das nicht ausgeführt ?
	yield($Cam/GUI/AnimationPlayer2, "animation_finished");