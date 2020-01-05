extends Node2D

func _ready():
	$Cam/AnimationPlayer.play("Wackeln")
	$Cam/GUI/title/AnimationPlayer2.play("titleIDLE");
	$Cam/GUI/AnimationPlayer.play("fadeIn")
	$BG/AudioStreamPlayer2D.play(0)

func _on_PlayButton_pressed():
	$Cam/GUI/title/AnimationPlayer2.play("titlePLAY");
	yield($Cam/GUI/title/AnimationPlayer2, "animation_finished");
	$Cam/GUI/AnimationPlayer.play("fadeOut");
	$"/root/SceneChanger".change_scene("res://scenes/Main.tscn", 0);
	yield($Cam/GUI/AnimationPlayer, "animation_finished");