extends TextureButton

export var btnText : String
export var nodePath : String
export var functionToDo : String

signal play_pressed

func _ready():
	$Label.text = btnText

func _on_Button_pressed():
	if nodePath != "" and functionToDo != "":
		get_node(nodePath).call(functionToDo)
	elif functionToDo != "":
		callFunction(functionToDo)	
	emit_signal("play_pressed");
	
func callFunction(fnc):
	var script = GDScript.new()
	script.set_source_code("extends Node\n\nfunc run():\n\t" + fnc)
	script.reload()
	
	var obj = Node.new()
	obj.set_name("sciptCaller")
	add_child(obj)
	obj.set_script(script)
	obj.run()
