extends Node2D

func _ready():
	$Cam/AnimationPlayer.play("Wackeln")
	$Cam/GUI/CenterContainer/title/AnimationPlayer2.play("titleIDLE");
	$Cam/GUI/AnimationPlayer.play("fadeIn")
	$BG/AudioStreamPlayer2D.play(0)

func _on_PlayButton_pressed():
	$Cam/GUI/CenterContainer/title/AnimationPlayer2.play("titlePLAY");
	yield($Cam/GUI/CenterContainer/title/AnimationPlayer2, "animation_finished");
	$Cam/GUI/AnimationPlayer.play("fadeOut");
	yield($Cam/GUI/AnimationPlayer, "animation_finished");
	$"/root/SceneChanger".change_scene("res://scenes/level-scenes/Level0.tscn", 0);