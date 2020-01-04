extends StaticBody2D

export (String) var scene_to_change_to;
export (Vector2) var position_to_go_to;

func open():
	$AnimationPlayer.play("DoorOpen")

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.transition(position_to_go_to, scene_to_change_to);
		open()
