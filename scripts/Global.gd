extends Node

var playerNodePath
var player_node
var player_position : Vector2; 
var player_init_position : Vector2;

func get_saved_player_position():
	return player_position;

func save_player_position(_position):
	player_position = _position;

func get_saved_player_init_position():
	return player_init_position;

func save_player_init_position(_position):
	player_init_position = _position;

func register_player(_player_node):
	player_node = _player_node;