extends Node

const const_door_count_tutorial_max = 4;
var door_count = 0;

var playerNodePath
var player_node
var player_position : Vector2; 
var player_init_position : Vector2;
var player_lifes : int;

var keys = [];

var level_solved_switches = [false,false,false,false,false,false,false,false,false];
var key_collected_switches = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
var door_unlocked_switches = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]

func reset():
	level_solved_switches = [false,false,false,false,false,false,false,false,false];
	player_position = Vector2(0,0); 
	player_init_position = Vector2(0,0) ;
	player_lifes = 0;

func get_player_lifes():
	return player_lifes;

func save_player_lifes(_lifes):
	player_lifes = _lifes;

######

func get_saved_player_position():
	return player_position;

func save_player_position(_position):
	player_position = _position;

######

func get_saved_player_init_position():
	return player_init_position;

func save_player_init_position(_position):
	player_init_position = _position;

######

func register_player(_player_node):
	player_node = _player_node;