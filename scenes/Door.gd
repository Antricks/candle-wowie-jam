extends StaticBody2D

func open():
	$AnimationPlayer.play("DoorOpen")


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		open()
