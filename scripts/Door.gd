extends StaticBody2D

export (String) var scene_path;
export (Vector2) var position_goal;

func open():
	$AnimationPlayer.play("DoorOpen")

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		open()
		$"/root/SceneChanger".change_scene(scene_path, 0);
		yield($"/root/SceneChanger".animation_player, "animation_finished");
		yield(get_tree().create_timer(0.2), "timeout");
		$"/root/Global".player_node.position = position_goal;
