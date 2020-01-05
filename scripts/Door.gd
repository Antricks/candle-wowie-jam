extends StaticBody2D

export (String) var scene_path;
export (Vector2) var position_goal;

onready var pressing_timer = $PressingTimer; 

var active = false;

func open():
	$AnimationPlayer.play("DoorOpen");

func _on_Area2D_body_entered(body):
	if not active:
		pressing_timer.start();

func _on_PressingTimer_timeout():
	for body in $Area2D.get_overlapping_bodies():
		if body.name == "Player" and Input.is_action_pressed("up"):
			open()
			body.transitioning = true;
			$"/root/Global".save_player_init_position(position_goal);
			$"/root/SceneChanger".change_scene(scene_path, 0);
			yield($"/root/SceneChanger".animation_player, "animation_finished");
			yield(get_tree().create_timer(0.2), "timeout");
			body.transitioning = false;
			print("Door - Scene Change finished")