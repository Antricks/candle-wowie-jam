extends StaticBody2D

export (String) var scene_path;
export (Vector2) var position_goal;

onready var pressing_timer = $PressingTimer; 

var opening = false;

func open(body):
	$AnimationPlayer.play("DoorOpen");
	if not opening:
		Global.door_count += 1;
	opening = true;
	body.transitioning = true;
	$"/root/Global".save_player_init_position(position_goal);
	$"/root/SceneChanger".change_scene(scene_path, 0);
	yield($"/root/SceneChanger".animation_player, "animation_finished");
	yield(get_tree().create_timer(0.2), "timeout");
	body.transitioning = false;
	print("Door - Scene Change finished")

func _process(delta):
	var player_colliding = false;
	var player_body;
	for body in $Area2D.get_overlapping_bodies():
		print(body);
		if body.name == "Player":
			player_colliding = true;
			player_body = body;
	if player_colliding:
		#if Global.door_count < Global.const_door_count_tutorial_max:
		$press_E_indicator.visible = true;
		$press_E_indicator/AnimationPlayer.play("idle");
		if Input.is_action_pressed("interact"):
			if not opening:
				open(player_body);
	else:
		$press_E_indicator.visible = false;
		$press_E_indicator/AnimationPlayer.stop();